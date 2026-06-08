#!/usr/bin/env python3
"""
AIRTA Social Monitor - TikTok Crawler
=======================================
Monitors TikTok for relationship/toxicity-related content.
Uses TikTok Research API (video search by keyword).

IMPORTANT: TikTok Research API requires approval through TikTok's developer program.
Apply at: https://developers.tiktok.com/products/research-api

Credentials from environment:
- TIKTOK_CLIENT_KEY
- TIKTOK_CLIENT_SECRET

Features:
- Searches for videos with relationship/toxicity keywords
- Polls every 30 minutes
- Gracefully skips if credentials not configured

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
logger = logging.getLogger('tiktok_crawler')

# TikTok API credentials
TIKTOK_CLIENT_KEY = os.getenv('TIKTOK_CLIENT_KEY')
TIKTOK_CLIENT_SECRET = os.getenv('TIKTOK_CLIENT_SECRET')

# Search keywords (relationship/toxicity focused)
SEARCH_KEYWORDS = [
    "toxic relationship",
    "red flags",
    "gaslighting",
    "narcissist",
    "emotional abuse",
    "love bombing",
    "manipulative",
    "controlling partner",
    "toxic boyfriend",
    "toxic girlfriend",
]

# Configuration
POLL_INTERVAL_MINUTES = 30
MAX_RESULTS_PER_SEARCH = 50
MAX_AGE_HOURS = 168  # 7 days

# TikTok Research API endpoint
TIKTOK_API_BASE = "https://open-api.tiktok.com"


class TikTokCrawler:
    """
    TikTok crawler that polls for relationship-related videos.
    Uses the TikTok Research API (requires approval).
    Runs in a background thread.
    
    Note: TikTok Research API requires developer approval.
    Apply at: https://developers.tiktok.com/products/research-api
    """
    
    def __init__(self, poll_interval: int = POLL_INTERVAL_MINUTES):
        """
        Initialize the TikTok crawler.
        
        Args:
            poll_interval: Minutes between polls
        """
        self.poll_interval = poll_interval
        self.access_token = None
        self._thread: Optional[threading.Thread] = None
        self._stop_event = threading.Event()
        self._running = False
        self._seen_ids: Set[str] = set()
        self._lock = threading.Lock()
        self._last_poll: Optional[datetime] = None
        
        # Check credentials
        self._has_credentials = all([
            TIKTOK_CLIENT_KEY,
            TIKTOK_CLIENT_SECRET
        ])
        
        if not self._has_credentials:
            logger.warning("TikTok credentials not configured. Set TIKTOK_CLIENT_KEY and "
                          "TIKTOK_CLIENT_SECRET environment variables. "
                          "Note: TikTok Research API requires developer approval. "
                          "Apply at: https://developers.tiktok.com/products/research-api")
    
    def _get_access_token(self) -> Optional[str]:
        """
        Obtain OAuth access token for TikTok API.
        
        Returns:
            Access token string or None if failed
        """
        try:
            import requests
            
            url = f"{TIKTOK_API_BASE}/oauth/access_token/"
            
            payload = {
                'client_key': TIKTOK_CLIENT_KEY,
                'client_secret': TIKTOK_CLIENT_SECRET,
                'grant_type': 'client_credentials'
            }
            
            response = requests.post(url, data=payload, timeout=30)
            
            if response.status_code == 200:
                data = response.json()
                if 'data' in data and 'access_token' in data['data']:
                    return data['data']['access_token']
                else:
                    logger.error(f"Unexpected TikTok auth response: {data}")
                    return None
            else:
                logger.error(f"TikTok auth failed: {response.status_code} - {response.text}")
                return None
                
        except ImportError:
            logger.error("requests library not installed. Run: pip install requests")
            return None
        except Exception as e:
            logger.error(f"Error getting TikTok access token: {e}")
            return None
    
    def _search_videos(self, keyword: str) -> List[Dict[str, Any]]:
        """
        Search for videos matching a keyword.
        
        Note: This is a placeholder implementation. The actual TikTok Research API
        has specific endpoints and requirements that may differ.
        
        Args:
            keyword: Search keyword
            
        Returns:
            List of video data dictionaries
        """
        if not self.access_token:
            self.access_token = self._get_access_token()
        
        if not self.access_token:
            return []
        
        try:
            import requests
            
            # Note: This is the Research API video query endpoint
            # Actual implementation may require different parameters
            url = f"{TIKTOK_API_BASE}/research/video/query/"
            
            headers = {
                'Authorization': f'Bearer {self.access_token}',
                'Content-Type': 'application/json'
            }
            
            # Build query parameters
            # Note: Research API has specific query format requirements
            params = {
                'query': {
                    'and': [
                        {'operation': 'EQ', 'field_name': 'keyword', 'field_values': [keyword]}
                    ]
                },
                'max_count': MAX_RESULTS_PER_SEARCH,
                'start_date': (datetime.now() - timedelta(hours=MAX_AGE_HOURS)).strftime('%Y%m%d'),
                'end_date': datetime.now().strftime('%Y%m%d'),
            }
            
            response = requests.post(url, headers=headers, json=params, timeout=30)
            
            if response.status_code == 200:
                data = response.json()
                videos = []
                
                for item in data.get('data', {}).get('videos', []):
                    videos.append({
                        'id': item.get('id') or item.get('video_id'),
                        'title': item.get('title', ''),
                        'description': item.get('video_description', ''),
                        'author': item.get('username', 'unknown'),
                        'author_id': item.get('author_id', ''),
                        'create_time': item.get('create_time'),
                        'region_code': item.get('region_code', ''),
                        'video_id': item.get('id') or item.get('video_id'),
                        'view_count': item.get('view_count', 0),
                        'like_count': item.get('like_count', 0),
                        'comment_count': item.get('comment_count', 0),
                        'share_count': item.get('share_count', 0),
                    })
                
                return videos
                
            elif response.status_code == 401:
                logger.error("TikTok API authentication failed. Token may have expired.")
                self.access_token = None  # Clear token to retry
                return []
            elif response.status_code == 403:
                logger.error("TikTok API access denied. Ensure you have Research API approval.")
                return []
            elif response.status_code == 429:
                logger.warning("TikTok API rate limit exceeded. Waiting for next poll.")
                return []
            else:
                logger.error(f"TikTok API error: {response.status_code} - {response.text}")
                return []
                
        except ImportError:
            logger.error("requests library not installed. Run: pip install requests")
            return []
        except Exception as e:
            logger.error(f"Error searching TikTok: {e}")
            return []
    
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
            "toxic relationship", "narcissist", "gaslighting", 
            "emotional abuse", "love bombing"
        ]
        for kw in strong_keywords:
            if kw.lower() in text:
                score += 2
                if kw not in matched:
                    matched.append(kw)
        
        # Medium strength keywords (+1 each)
        medium_keywords = [
            "red flags", "manipulative", "controlling", "toxic"
        ]
        for kw in medium_keywords:
            if kw.lower() in text:
                score += 1
                if kw not in matched:
                    matched.append(kw)
        
        return score, matched
    
    def _video_to_post_dict(self, video: Dict[str, Any], keywords: List[str]) -> Dict[str, Any]:
        """
        Convert video data to post dictionary format.
        
        Args:
            video: Video data dictionary
            keywords: Matched keywords
            
        Returns:
            Post dictionary matching contact_tracker schema
        """
        # Parse create_time to timestamp
        try:
            create_time = video.get('create_time')
            if create_time:
                # TikTok timestamps are Unix timestamps
                posted_at = float(create_time)
            else:
                posted_at = time.time()
        except Exception:
            posted_at = time.time()
        
        engagement = (
            video.get('like_count', 0) + 
            video.get('comment_count', 0) + 
            video.get('share_count', 0)
        )
        
        video_id = video.get('video_id') or video.get('id', '')
        
        return {
            'id': f"tiktok_{video_id}",
            'platform': 'tiktok',
            'title': video.get('title', 'TikTok Video'),
            'url': f"https://tiktok.com/@{video['author']}/video/{video_id}",
            'author': video.get('author', 'unknown'),
            'subreddit_or_channel': video.get('author', 'unknown'),
            'body_preview': video.get('description', '')[:300],
            'posted_at': posted_at,
            'found_at': time.time(),
            'score': 0,
            'keyword_matches': json.dumps(keywords),
            'engagement_count': engagement,
            'status': 'new',
            'draft_reply': None,
            'contacted_at': None,
            'last_activity_check': None,
            'activity_since_contact': 0,
            'notes': json.dumps({
                'view_count': video.get('view_count', 0),
                'like_count': video.get('like_count', 0),
                'comment_count': video.get('comment_count', 0),
                'share_count': video.get('share_count', 0),
                'region': video.get('region_code', ''),
            })
        }
    
    def poll(self, callback: Callable[[Dict[str, Any]], None]) -> int:
        """
        Poll TikTok for new videos.
        
        Args:
            callback: Function to call with each qualifying video
            
        Returns:
            Number of qualifying videos found
        """
        if not self._has_credentials:
            logger.warning("TikTok credentials not configured, skipping poll")
            return 0
        
        count = 0
        all_video_ids: Set[str] = set()
        
        # Search each keyword
        for keyword in SEARCH_KEYWORDS:
            if self._stop_event.is_set():
                break
            
            logger.info(f"Searching TikTok for: {keyword}")
            videos = self._search_videos(keyword)
            
            for video in videos:
                video_id = video.get('video_id') or video.get('id', '')
                
                if not video_id:
                    continue
                
                # Skip if already seen in this poll
                if video_id in all_video_ids:
                    continue
                all_video_ids.add(video_id)
                
                # Skip if globally seen
                with self._lock:
                    if video_id in self._seen_ids:
                        continue
                
                # Calculate keyword score
                title = video.get('title', '')
                description = video.get('description', '')
                keyword_score, matched_keywords = self._calculate_keyword_score(title, description)
                
                # Skip if below threshold (score < 2)
                if keyword_score < 2:
                    continue
                
                # Create post dict
                post_dict = self._video_to_post_dict(video, matched_keywords)
                
                # Mark as seen
                with self._lock:
                    self._seen_ids.add(video_id)
                
                # Call callback
                callback(post_dict)
                count += 1
                
                logger.info(f"Found qualifying TikTok: @{post_dict['author']} - "
                           f"{post_dict['title'][:60]}... "
                           f"(engagement: {post_dict['engagement_count']})")
        
        self._last_poll = datetime.now()
        logger.info(f"TikTok poll complete. Found {count} qualifying videos.")
        return count
    
    def _poll_loop(self, callback: Callable[[Dict[str, Any]], None]) -> None:
        """Background polling loop."""
        logger.info(f"Starting TikTok polling (interval: {self.poll_interval} minutes)")
        logger.info("Note: TikTok Research API requires developer approval. "
                   "See: https://developers.tiktok.com/products/research-api")
        
        while not self._stop_event.is_set():
            try:
                self.poll(callback)
            except Exception as e:
                logger.error(f"Error during TikTok poll: {e}")
            
            # Wait for next poll
            self._stop_event.wait(self.poll_interval * 60)
        
        logger.info("TikTok polling stopped")
    
    def start(self, callback: Callable[[Dict[str, Any]], None]) -> bool:
        """
        Start the crawler in a background thread.
        
        Args:
            callback: Function to call with each qualifying video
            
        Returns:
            True if started successfully, False otherwise
        """
        if self._running:
            logger.warning("TikTok crawler already running")
            return False
        
        if not self._has_credentials:
            logger.warning("Cannot start TikTok crawler: credentials not configured")
            return False
        
        self._stop_event.clear()
        self._thread = threading.Thread(
            target=self._poll_loop,
            args=(callback,),
            daemon=True,
            name="TikTokCrawler"
        )
        self._thread.start()
        self._running = True
        
        logger.info("TikTok crawler started")
        return True
    
    def stop(self) -> None:
        """Stop the crawler."""
        if not self._running:
            return
        
        logger.info("Stopping TikTok crawler...")
        self._stop_event.set()
        
        if self._thread and self._thread.is_alive():
            self._thread.join(timeout=5)
        
        self._running = False
        logger.info("TikTok crawler stopped")
    
    def is_running(self) -> bool:
        """Check if crawler is currently running."""
        return self._running and self._thread and self._thread.is_alive()
    
    def has_credentials(self) -> bool:
        """Check if TikTok credentials are configured."""
        return self._has_credentials
    
    def get_last_poll_time(self) -> Optional[datetime]:
        """Get timestamp of last successful poll."""
        return self._last_poll


# Singleton instance for convenience
_default_crawler: Optional[TikTokCrawler] = None


def get_crawler(poll_interval: int = POLL_INTERVAL_MINUTES) -> TikTokCrawler:
    """Get or create the default crawler instance."""
    global _default_crawler
    if _default_crawler is None:
        _default_crawler = TikTokCrawler(poll_interval)
    return _default_crawler


if __name__ == "__main__":
    # Test mode - print videos to console
    def print_video(post: Dict[str, Any]) -> None:
        print(f"\n{'='*60}")
        print(f"Platform: {post['platform']}")
        print(f"Author: @{post['author']}")
        print(f"Title: {post['title']}")
        print(f"URL: {post['url']}")
        print(f"Keywords: {post['keyword_matches']}")
        print(f"Engagement: {post['engagement_count']}")
        print(f"{'='*60}\n")
    
    crawler = TikTokCrawler()
    if crawler.has_credentials():
        print("Starting TikTok crawler test mode...")
        print("Running single poll...\n")
        count = crawler.poll(print_video)
        print(f"\nFound {count} qualifying videos")
    else:
        print("TikTok credentials not configured. Set environment variables:")
        print("  TIKTOK_CLIENT_KEY")
        print("  TIKTOK_CLIENT_SECRET")
        print("\nIMPORTANT: TikTok Research API requires developer approval.")
        print("Apply at: https://developers.tiktok.com/products/research-api")
