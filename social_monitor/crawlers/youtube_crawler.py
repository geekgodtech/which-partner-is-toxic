#!/usr/bin/env python3
"""
AIRTA Social Monitor - YouTube Crawler
========================================
Monitors YouTube for relationship/toxicity-related content.
Uses YouTube Data API v3 search.list endpoint.

Credentials from environment:
- YOUTUBE_API_KEY

Features:
- Searches for videos matching relationship/toxicity keywords
- Filters for recent uploads (last 24 hours)
- Polls every 30 minutes
- Gracefully skips if API key not configured

Author: geekgodtech
Version: 1.0.0
"""

import os
import time
import json
import logging
import threading
from datetime import datetime, timedelta
from typing import Callable, Optional, Dict, Any, List, Set
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Setup logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('youtube_crawler')

# YouTube API credentials
YOUTUBE_API_KEY = os.getenv('YOUTUBE_API_KEY')

# Search keywords (relationship/toxicity focused)
SEARCH_KEYWORDS = [
    "relationship advice",
    "toxic relationship",
    "narcissist",
    "gaslighting",
    "emotional abuse",
    "unhealthy relationship",
    "red flags relationship",
    "manipulative partner",
    "controlling relationship",
    "love bombing",
]

# Configuration
POLL_INTERVAL_MINUTES = 30
MAX_RESULTS_PER_SEARCH = 50
MAX_AGE_HOURS = 24


class YouTubeCrawler:
    """
    YouTube crawler that polls for relationship-related videos.
    Runs in a background thread.
    """
    
    def __init__(self, poll_interval: int = POLL_INTERVAL_MINUTES):
        """
        Initialize the YouTube crawler.
        
        Args:
            poll_interval: Minutes between polls
        """
        self.poll_interval = poll_interval
        self.youtube = None
        self._thread: Optional[threading.Thread] = None
        self._stop_event = threading.Event()
        self._running = False
        self._seen_ids: Set[str] = set()
        self._lock = threading.Lock()
        self._last_poll: Optional[datetime] = None
        
        # Check credentials
        self._has_credentials = YOUTUBE_API_KEY is not None and YOUTUBE_API_KEY != ''
        
        if not self._has_credentials:
            logger.warning("YouTube API key not configured. Set YOUTUBE_API_KEY environment variable. "
                          "Crawler will skip gracefully.")
        else:
            self._init_youtube()
    
    def _init_youtube(self) -> None:
        """Initialize YouTube API client."""
        try:
            from googleapiclient.discovery import build
            from googleapiclient.errors import HttpError
            
            self.youtube = build('youtube', 'v3', developerKey=YOUTUBE_API_KEY)
            logger.info("YouTube API client initialized")
        except ImportError:
            logger.error("google-api-python-client not installed. Run: pip install google-api-python-client")
            self.youtube = None
        except Exception as e:
            logger.error(f"Failed to initialize YouTube API: {e}")
            self.youtube = None
    
    def _calculate_keyword_score(self, title: str, description: str) -> tuple:
        """
        Calculate keyword relevance score for a video.
        
        Args:
            title: Video title
            description: Video description
            
        Returns:
            Tuple of (score, matched_keywords)
        """
        text = f"{title} {description}".lower()
        score = 0
        matched = []
        
        # Strong relationship keywords (+2 each)
        strong_keywords = [
            "partner", "boyfriend", "girlfriend", "husband", "wife", "spouse",
            "fiancé", "fiancee", "fiance", "gaslighting", "narcissist", "narcissistic",
            "emotional abuse", "verbal abuse", "love bombing", "lovebombing"
        ]
        for kw in strong_keywords:
            if kw.lower() in text:
                score += 2
                if kw not in matched:
                    matched.append(kw)
        
        # Medium strength keywords (+1 each)
        medium_keywords = [
            "toxic", "unhealthy", "red flag", "red flags", "manipulative",
            "manipulation", "abusive", "controlling", "trust issues", "breakup",
            "relationship advice", "relationship problems"
        ]
        for kw in medium_keywords:
            if kw.lower() in text:
                score += 1
                if kw not in matched:
                    matched.append(kw)
        
        return score, matched
    
    def _is_recent_enough(self, published_at: str) -> bool:
        """Check if video was published within acceptable time window."""
        try:
            # Parse YouTube timestamp (ISO 8601)
            published = datetime.fromisoformat(published_at.replace('Z', '+00:00'))
            age_hours = (datetime.now(published.tzinfo) - published).total_seconds() / 3600
            return age_hours <= MAX_AGE_HOURS
        except Exception:
            return True  # If we can't parse, include it
    
    def _search_videos(self, keyword: str, published_after: str) -> List[Dict[str, Any]]:
        """
        Search for videos matching a keyword.
        
        Args:
            keyword: Search keyword
            published_after: ISO timestamp for earliest publish date
            
        Returns:
            List of video data dictionaries
        """
        if not self.youtube:
            return []
        
        try:
            from googleapiclient.errors import HttpError
            
            request = self.youtube.search().list(
                part='snippet',
                q=keyword,
                type='video',
                publishedAfter=published_after,
                maxResults=MAX_RESULTS_PER_SEARCH,
                relevanceLanguage='en',
                order='date'
            )
            
            response = request.execute()
            
            videos = []
            for item in response.get('items', []):
                video_id = item['id']['videoId']
                snippet = item['snippet']
                
                videos.append({
                    'id': video_id,
                    'title': snippet['title'],
                    'description': snippet['description'],
                    'channel': snippet['channelTitle'],
                    'published_at': snippet['publishedAt'],
                    'thumbnail': snippet['thumbnails'].get('medium', {}).get('url', ''),
                })
            
            return videos
            
        except HttpError as e:
            logger.error(f"YouTube API error for keyword '{keyword}': {e}")
            return []
        except Exception as e:
            logger.error(f"Error searching YouTube for '{keyword}': {e}")
            return []
    
    def _get_video_stats(self, video_id: str) -> Dict[str, int]:
        """
        Get engagement stats for a video.
        
        Args:
            video_id: YouTube video ID
            
        Returns:
            Dictionary with viewCount, likeCount, commentCount
        """
        if not self.youtube:
            return {'viewCount': 0, 'likeCount': 0, 'commentCount': 0}
        
        try:
            from googleapiclient.errors import HttpError
            
            request = self.youtube.videos().list(
                part='statistics',
                id=video_id
            )
            
            response = request.execute()
            
            if response.get('items'):
                stats = response['items'][0]['statistics']
                return {
                    'viewCount': int(stats.get('viewCount', 0)),
                    'likeCount': int(stats.get('likeCount', 0)),
                    'commentCount': int(stats.get('commentCount', 0)),
                }
            
            return {'viewCount': 0, 'likeCount': 0, 'commentCount': 0}
            
        except HttpError as e:
            logger.error(f"YouTube API error getting stats for {video_id}: {e}")
            return {'viewCount': 0, 'likeCount': 0, 'commentCount': 0}
        except Exception as e:
            logger.error(f"Error getting video stats for {video_id}: {e}")
            return {'viewCount': 0, 'likeCount': 0, 'commentCount': 0}
    
    def _video_to_post_dict(self, video: Dict[str, Any], stats: Dict[str, int], keywords: List[str]) -> Dict[str, Any]:
        """
        Convert video data to post dictionary format.
        
        Args:
            video: Video data dictionary
            stats: Engagement statistics
            keywords: Matched keywords
            
        Returns:
            Post dictionary matching contact_tracker schema
        """
        # Parse published_at to timestamp
        try:
            published = datetime.fromisoformat(video['published_at'].replace('Z', '+00:00'))
            posted_at = published.timestamp()
        except Exception:
            posted_at = time.time()
        
        return {
            'id': f"youtube_{video['id']}",
            'platform': 'youtube',
            'title': video['title'],
            'url': f"https://youtube.com/watch?v={video['id']}",
            'author': video['channel'],
            'subreddit_or_channel': video['channel'],
            'body_preview': video['description'][:300],
            'posted_at': posted_at,
            'found_at': time.time(),
            'score': 0,
            'keyword_matches': json.dumps(keywords),
            'engagement_count': stats['viewCount'] + stats['commentCount'],
            'status': 'new',
            'draft_reply': None,
            'contacted_at': None,
            'last_activity_check': None,
            'activity_since_contact': 0,
            'notes': json.dumps({
                'view_count': stats['viewCount'],
                'like_count': stats['likeCount'],
                'comment_count': stats['commentCount'],
                'thumbnail': video.get('thumbnail', ''),
            })
        }
    
    def poll(self, callback: Callable[[Dict[str, Any]], None]) -> int:
        """
        Poll YouTube for new videos.
        
        Args:
            callback: Function to call with each qualifying video
            
        Returns:
            Number of qualifying videos found
        """
        if not self._has_credentials:
            logger.warning("YouTube API key not configured, skipping poll")
            return 0
        
        if not self.youtube:
            self._init_youtube()
        
        if not self.youtube:
            logger.error("YouTube API not initialized, cannot poll")
            return 0
        
        # Calculate published_after (24 hours ago)
        published_after = (datetime.utcnow() - timedelta(hours=MAX_AGE_HOURS)).isoformat() + 'Z'
        
        count = 0
        all_video_ids: Set[str] = set()
        
        # Search each keyword
        for keyword in SEARCH_KEYWORDS:
            if self._stop_event.is_set():
                break
            
            logger.info(f"Searching YouTube for: {keyword}")
            videos = self._search_videos(keyword, published_after)
            
            for video in videos:
                video_id = video['id']
                
                # Skip if already seen in this poll
                if video_id in all_video_ids:
                    continue
                all_video_ids.add(video_id)
                
                # Skip if globally seen
                with self._lock:
                    if video_id in self._seen_ids:
                        continue
                
                # Check if recent enough
                if not self._is_recent_enough(video['published_at']):
                    continue
                
                # Calculate keyword score
                keyword_score, matched_keywords = self._calculate_keyword_score(
                    video['title'], video['description']
                )
                
                # Skip if below threshold (score < 2)
                if keyword_score < 2:
                    continue
                
                # Get video stats
                stats = self._get_video_stats(video_id)
                
                # Create post dict
                post_dict = self._video_to_post_dict(video, stats, matched_keywords)
                
                # Mark as seen
                with self._lock:
                    self._seen_ids.add(video_id)
                
                # Call callback
                callback(post_dict)
                count += 1
                
                logger.info(f"Found qualifying video: {post_dict['title'][:60]}... "
                           f"(views: {stats['viewCount']})")
        
        self._last_poll = datetime.now()
        logger.info(f"YouTube poll complete. Found {count} qualifying videos.")
        return count
    
    def _poll_loop(self, callback: Callable[[Dict[str, Any]], None]) -> None:
        """Background polling loop."""
        logger.info(f"Starting YouTube polling (interval: {self.poll_interval} minutes)")
        
        while not self._stop_event.is_set():
            try:
                self.poll(callback)
            except Exception as e:
                logger.error(f"Error during YouTube poll: {e}")
            
            # Wait for next poll
            self._stop_event.wait(self.poll_interval * 60)
        
        logger.info("YouTube polling stopped")
    
    def start(self, callback: Callable[[Dict[str, Any]], None]) -> bool:
        """
        Start the crawler in a background thread.
        
        Args:
            callback: Function to call with each qualifying video
            
        Returns:
            True if started successfully, False otherwise
        """
        if self._running:
            logger.warning("YouTube crawler already running")
            return False
        
        if not self._has_credentials:
            logger.warning("Cannot start YouTube crawler: API key not configured")
            return False
        
        self._stop_event.clear()
        self._thread = threading.Thread(
            target=self._poll_loop,
            args=(callback,),
            daemon=True,
            name="YouTubeCrawler"
        )
        self._thread.start()
        self._running = True
        
        logger.info("YouTube crawler started")
        return True
    
    def stop(self) -> None:
        """Stop the crawler."""
        if not self._running:
            return
        
        logger.info("Stopping YouTube crawler...")
        self._stop_event.set()
        
        if self._thread and self._thread.is_alive():
            self._thread.join(timeout=5)
        
        self._running = False
        logger.info("YouTube crawler stopped")
    
    def is_running(self) -> bool:
        """Check if crawler is currently running."""
        return self._running and self._thread and self._thread.is_alive()
    
    def has_credentials(self) -> bool:
        """Check if YouTube API key is configured."""
        return self._has_credentials
    
    def get_last_poll_time(self) -> Optional[datetime]:
        """Get timestamp of last successful poll."""
        return self._last_poll


# Singleton instance for convenience
_default_crawler: Optional[YouTubeCrawler] = None


def get_crawler(poll_interval: int = POLL_INTERVAL_MINUTES) -> YouTubeCrawler:
    """Get or create the default crawler instance."""
    global _default_crawler
    if _default_crawler is None:
        _default_crawler = YouTubeCrawler(poll_interval)
    return _default_crawler


if __name__ == "__main__":
    # Test mode - print videos to console
    def print_video(post: Dict[str, Any]) -> None:
        print(f"\n{'='*60}")
        print(f"Platform: {post['platform']}")
        print(f"Title: {post['title']}")
        print(f"Channel: {post['author']}")
        print(f"URL: {post['url']}")
        print(f"Keywords: {post['keyword_matches']}")
        print(f"Engagement: {post['engagement_count']}")
        print(f"{'='*60}\n")
    
    crawler = YouTubeCrawler()
    if crawler.has_credentials():
        print("Starting YouTube crawler test mode...")
        print("Running single poll...\n")
        count = crawler.poll(print_video)
        print(f"\nFound {count} qualifying videos")
    else:
        print("YouTube API key not configured. Set YOUTUBE_API_KEY environment variable.")
