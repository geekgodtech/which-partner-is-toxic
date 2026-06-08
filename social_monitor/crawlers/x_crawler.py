#!/usr/bin/env python3
"""
AIRTA Social Monitor - X (Twitter) Crawler
============================================
Monitors X (formerly Twitter) for relationship/toxicity-related tweets.
Uses X API v2 recent search endpoint.

Credentials from environment:
- X_BEARER_TOKEN

Features:
- Searches recent tweets (last 7 days) matching keywords
- Filters: lang:en, -is:retweet, -is:reply, has:text, min_faves:5
- Polls every 15 minutes
- Gracefully skips if credentials not configured

API Documentation:
https://developer.twitter.com/en/docs/twitter-api/tweets/search/api-reference/get-tweets-search-recent

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
logger = logging.getLogger('x_crawler')

# X API credentials
X_BEARER_TOKEN = os.getenv('X_BEARER_TOKEN')

# Search keywords (relationship/toxicity focused)
SEARCH_KEYWORDS = [
    '"toxic relationship"',
    '"emotional abuse"',
    '"gaslighting"',
    '"narcissist"',
    '"red flags" relationship',
    '"manipulative" partner',
    '"controlling" boyfriend',
    '"controlling" girlfriend',
    '"love bombing"',
    '"walking on eggshells"',
]

# Configuration
POLL_INTERVAL_MINUTES = 15
MAX_RESULTS_PER_QUERY = 100
MIN_FAVORITES = 5  # Minimum likes for a tweet to be considered
MAX_AGE_HOURS = 168  # 7 days (API limit for recent search)


class XCrawler:
    """
    X (Twitter) crawler that polls for relationship-related tweets.
    Runs in a background thread.
    """
    
    def __init__(self, poll_interval: int = POLL_INTERVAL_MINUTES):
        """
        Initialize the X crawler.
        
        Args:
            poll_interval: Minutes between polls
        """
        self.poll_interval = poll_interval
        self.headers = None
        self._thread: Optional[threading.Thread] = None
        self._stop_event = threading.Event()
        self._running = False
        self._seen_ids: Set[str] = set()
        self._lock = threading.Lock()
        self._last_poll: Optional[datetime] = None
        
        # Check credentials
        self._has_credentials = X_BEARER_TOKEN is not None and X_BEARER_TOKEN != ''
        
        if not self._has_credentials:
            logger.warning("X Bearer Token not configured. Set X_BEARER_TOKEN environment variable. "
                          "Crawler will skip gracefully.")
        else:
            self._init_auth()
    
    def _init_auth(self) -> None:
        """Initialize authentication headers."""
        self.headers = {
            'Authorization': f'Bearer {X_BEARER_TOKEN}',
            'Content-Type': 'application/json'
        }
        logger.info("X API authentication initialized")
    
    def _calculate_keyword_score(self, text: str) -> tuple:
        """
        Calculate keyword relevance score for a tweet.
        
        Args:
            text: Tweet text
            
        Returns:
            Tuple of (score, matched_keywords)
        """
        text_lower = text.lower()
        score = 0
        matched = []
        
        # Strong toxicity keywords (+3 each)
        strong_keywords = [
            "gaslighting", "emotional abuse", "verbal abuse", 
            "love bombing", "lovebombing", "coercive control"
        ]
        for kw in strong_keywords:
            if kw.lower() in text_lower:
                score += 3
                if kw not in matched:
                    matched.append(kw)
        
        # Medium toxicity keywords (+2 each)
        medium_keywords = [
            "toxic", "narcissist", "narcissistic", "manipulative", 
            "manipulation", "abusive", "controlling"
        ]
        for kw in medium_keywords:
            if kw.lower() in text_lower:
                score += 2
                if kw not in matched:
                    matched.append(kw)
        
        # Weak indicators (+1 each)
        weak_keywords = [
            "red flag", "red flags", "unhealthy", "toxic relationship",
            "walking on eggshells", "trust issues"
        ]
        for kw in weak_keywords:
            if kw.lower() in text_lower:
                score += 1
                if kw not in matched:
                    matched.append(kw)
        
        return score, matched
    
    def _build_query(self, keyword: str) -> str:
        """
        Build search query with filters.
        
        Filters:
        - lang:en (English only)
        - -is:retweet (exclude retweets)
        - -is:reply (exclude replies)
        - has:links (optional - include if we want only tweets with links)
        
        Args:
            keyword: Base keyword
            
        Returns:
            Full query string
        """
        # Build query with filters
        # Note: min_faves is handled via tweet_fields in v2 API
        query = f"({keyword}) lang:en -is:retweet -is:reply"
        return query
    
    def _search_tweets(self, keyword: str, since_id: Optional[str] = None) -> List[Dict[str, Any]]:
        """
        Search for tweets matching a keyword.
        
        Args:
            keyword: Search keyword
            since_id: Only return tweets newer than this ID
            
        Returns:
            List of tweet data dictionaries
        """
        if not self.headers:
            return []
        
        try:
            import requests
            
            url = "https://api.twitter.com/2/tweets/search/recent"
            
            query = self._build_query(keyword)
            
            params = {
                'query': query,
                'max_results': min(MAX_RESULTS_PER_QUERY, 100),
                'tweet.fields': 'created_at,author_id,public_metrics,context_annotations',
                'expansions': 'author_id',
                'user.fields': 'username',
            }
            
            if since_id:
                params['since_id'] = since_id
            
            response = requests.get(url, headers=self.headers, params=params, timeout=30)
            
            if response.status_code == 200:
                data = response.json()
                tweets = data.get('data', [])
                users = {u['id']: u for u in data.get('includes', {}).get('users', [])}
                
                results = []
                for tweet in tweets:
                    # Get author info
                    author_id = tweet.get('author_id', '')
                    author = users.get(author_id, {})
                    
                    metrics = tweet.get('public_metrics', {})
                    
                    # Skip if below minimum favorites
                    if metrics.get('like_count', 0) < MIN_FAVORITES:
                        continue
                    
                    results.append({
                        'id': tweet['id'],
                        'text': tweet['text'],
                        'author_id': author_id,
                        'author_username': author.get('username', 'unknown'),
                        'created_at': tweet['created_at'],
                        'like_count': metrics.get('like_count', 0),
                        'retweet_count': metrics.get('retweet_count', 0),
                        'reply_count': metrics.get('reply_count', 0),
                        'quote_count': metrics.get('quote_count', 0),
                    })
                
                return results
                
            elif response.status_code == 401:
                logger.error("X API authentication failed. Check your X_BEARER_TOKEN.")
                return []
            elif response.status_code == 429:
                logger.warning("X API rate limit exceeded. Waiting for next poll.")
                return []
            else:
                logger.error(f"X API error: {response.status_code} - {response.text}")
                return []
                
        except ImportError:
            logger.error("requests library not installed. Run: pip install requests")
            return []
        except Exception as e:
            logger.error(f"Error searching X: {e}")
            return []
    
    def _tweet_to_post_dict(self, tweet: Dict[str, Any], keywords: List[str]) -> Dict[str, Any]:
        """
        Convert tweet data to post dictionary format.
        
        Args:
            tweet: Tweet data dictionary
            keywords: Matched keywords
            
        Returns:
            Post dictionary matching contact_tracker schema
        """
        # Parse created_at to timestamp
        try:
            created = datetime.fromisoformat(tweet['created_at'].replace('Z', '+00:00'))
            posted_at = created.timestamp()
        except Exception:
            posted_at = time.time()
        
        engagement = (
            tweet['like_count'] + 
            tweet['retweet_count'] + 
            tweet['reply_count']
        )
        
        return {
            'id': f"x_{tweet['id']}",
            'platform': 'x',
            'title': tweet['text'][:100] + '...' if len(tweet['text']) > 100 else tweet['text'],
            'url': f"https://x.com/{tweet['author_username']}/status/{tweet['id']}",
            'author': tweet['author_username'],
            'subreddit_or_channel': tweet['author_username'],
            'body_preview': tweet['text'],
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
                'like_count': tweet['like_count'],
                'retweet_count': tweet['retweet_count'],
                'reply_count': tweet['reply_count'],
                'quote_count': tweet.get('quote_count', 0),
            })
        }
    
    def poll(self, callback: Callable[[Dict[str, Any]], None]) -> int:
        """
        Poll X for new tweets.
        
        Args:
            callback: Function to call with each qualifying tweet
            
        Returns:
            Number of qualifying tweets found
        """
        if not self._has_credentials:
            logger.warning("X Bearer Token not configured, skipping poll")
            return 0
        
        if not self.headers:
            self._init_auth()
        
        count = 0
        all_tweet_ids: Set[str] = set()
        
        # Search each keyword
        for keyword in SEARCH_KEYWORDS:
            if self._stop_event.is_set():
                break
            
            logger.info(f"Searching X for: {keyword}")
            tweets = self._search_tweets(keyword)
            
            for tweet in tweets:
                tweet_id = tweet['id']
                
                # Skip if already seen in this poll
                if tweet_id in all_tweet_ids:
                    continue
                all_tweet_ids.add(tweet_id)
                
                # Skip if globally seen
                with self._lock:
                    if tweet_id in self._seen_ids:
                        continue
                
                # Calculate keyword score
                keyword_score, matched_keywords = self._calculate_keyword_score(tweet['text'])
                
                # Skip if below threshold (score < 2)
                if keyword_score < 2:
                    continue
                
                # Create post dict
                post_dict = self._tweet_to_post_dict(tweet, matched_keywords)
                
                # Mark as seen
                with self._lock:
                    self._seen_ids.add(tweet_id)
                
                # Call callback
                callback(post_dict)
                count += 1
                
                logger.info(f"Found qualifying tweet by @{post_dict['author']}: "
                           f"{post_dict['title'][:60]}... (engagement: {tweet['like_count']})")
        
        self._last_poll = datetime.now()
        logger.info(f"X poll complete. Found {count} qualifying tweets.")
        return count
    
    def _poll_loop(self, callback: Callable[[Dict[str, Any]], None]) -> None:
        """Background polling loop."""
        logger.info(f"Starting X polling (interval: {self.poll_interval} minutes)")
        
        while not self._stop_event.is_set():
            try:
                self.poll(callback)
            except Exception as e:
                logger.error(f"Error during X poll: {e}")
            
            # Wait for next poll
            self._stop_event.wait(self.poll_interval * 60)
        
        logger.info("X polling stopped")
    
    def start(self, callback: Callable[[Dict[str, Any]], None]) -> bool:
        """
        Start the crawler in a background thread.
        
        Args:
            callback: Function to call with each qualifying tweet
            
        Returns:
            True if started successfully, False otherwise
        """
        if self._running:
            logger.warning("X crawler already running")
            return False
        
        if not self._has_credentials:
            logger.warning("Cannot start X crawler: Bearer Token not configured")
            return False
        
        self._stop_event.clear()
        self._thread = threading.Thread(
            target=self._poll_loop,
            args=(callback,),
            daemon=True,
            name="XCrawler"
        )
        self._thread.start()
        self._running = True
        
        logger.info("X crawler started")
        return True
    
    def stop(self) -> None:
        """Stop the crawler."""
        if not self._running:
            return
        
        logger.info("Stopping X crawler...")
        self._stop_event.set()
        
        if self._thread and self._thread.is_alive():
            self._thread.join(timeout=5)
        
        self._running = False
        logger.info("X crawler stopped")
    
    def is_running(self) -> bool:
        """Check if crawler is currently running."""
        return self._running and self._thread and self._thread.is_alive()
    
    def has_credentials(self) -> bool:
        """Check if X Bearer Token is configured."""
        return self._has_credentials
    
    def get_last_poll_time(self) -> Optional[datetime]:
        """Get timestamp of last successful poll."""
        return self._last_poll


# Singleton instance for convenience
_default_crawler: Optional[XCrawler] = None


def get_crawler(poll_interval: int = POLL_INTERVAL_MINUTES) -> XCrawler:
    """Get or create the default crawler instance."""
    global _default_crawler
    if _default_crawler is None:
        _default_crawler = XCrawler(poll_interval)
    return _default_crawler


if __name__ == "__main__":
    # Test mode - print tweets to console
    def print_tweet(post: Dict[str, Any]) -> None:
        print(f"\n{'='*60}")
        print(f"Platform: {post['platform']}")
        print(f"Author: @{post['author']}")
        print(f"Text: {post['body_preview']}")
        print(f"URL: {post['url']}")
        print(f"Keywords: {post['keyword_matches']}")
        print(f"Engagement: {post['engagement_count']}")
        print(f"{'='*60}\n")
    
    crawler = XCrawler()
    if crawler.has_credentials():
        print("Starting X crawler test mode...")
        print("Running single poll...\n")
        count = crawler.poll(print_tweet)
        print(f"\nFound {count} qualifying tweets")
    else:
        print("X Bearer Token not configured. Set X_BEARER_TOKEN environment variable.")
        print("Get one at: https://developer.twitter.com/en/portal/dashboard")
