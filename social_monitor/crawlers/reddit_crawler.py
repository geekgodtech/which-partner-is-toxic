#!/usr/bin/env python3
"""
AIRTA Social Monitor - Reddit Crawler
=======================================
Monitors Reddit for relationship-strife posts matching target criteria.
Uses PRAW to stream posts from targeted subreddits.

Credentials from environment:
- REDDIT_CLIENT_ID
- REDDIT_CLIENT_SECRET
- REDDIT_USERNAME
- REDDIT_PASSWORD

Target subreddits:
- relationship_advice
- relationships
- dating_advice
- AmItheAsshole
- BreakUps
- survivorsofabuse
- abusiverelationships

Author: geekgodtech
Version: 1.0.0
"""

import os
import time
import logging
import threading
from datetime import datetime
from typing import Callable, Optional, Dict, Any, List, Set
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

# Setup logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger('reddit_crawler')

# Reddit API credentials
REDDIT_CLIENT_ID = os.getenv('REDDIT_CLIENT_ID')
REDDIT_CLIENT_SECRET = os.getenv('REDDIT_CLIENT_SECRET')
REDDIT_USERNAME = os.getenv('REDDIT_USERNAME')
REDDIT_PASSWORD = os.getenv('REDDIT_PASSWORD')
USER_AGENT = f"AIRTASocialMonitor v1.0 by /u/{REDDIT_USERNAME or 'unknown'}"

# Target subreddits (joined with + for multi-subreddit stream)
SUBREDDITS = (
    "relationship_advice"
    "+relationships"
    "+dating_advice"
    "+AmItheAsshole"
    "+BreakUps"
    "+survivorsofabuse"
    "+abusiverelationships"
)

# Configuration
MIN_BODY_LENGTH = 300
MAX_POST_AGE_HOURS = 6
MIN_SCORE = 3  # Lower threshold than email bot — priority engine will rank

# Keyword scoring weights (matching reddit_bot logic)
KEYWORDS_RELATIONSHIP_STRONG = [
    "partner", "boyfriend", "girlfriend", "husband", "wife", "spouse", "fiancé", "fiancee", "fiance"
]
KEYWORDS_RELATIONSHIP_WEAK = [
    "dating", "relationship", "SO", "significant other", "ex", "together", "my bf", "my gf"
]
KEYWORDS_TOXICITY_STRONG = [
    "gaslighting", "manipulative", "manipulation", "abusive", "controlling",
    "narcissist", "narcissistic", "coercive", "love bombing", "lovebombing",
    "emotional abuse", "verbal abuse", "walking on eggshells"
]
KEYWORDS_TOXICITY_WEAK = [
    "toxic", "unhealthy", "red flag", "red flags", "fight", "arguing",
    "trust issues", "jealous", "possessive", "threatening", "silent treatment",
    "isolating", "belittle", "disrespect", "blame", "guilt trip"
]


def _calculate_keyword_score(title: str, body: str) -> tuple:
    """
    Calculate keyword relevance score and extract matched keywords.
    
    Returns:
        Tuple of (score, matched_keywords_list)
    """
    text = f"{title} {body}".lower()
    score = 0
    matched = []
    
    # Strong relationship keywords (+2 each)
    for keyword in KEYWORDS_RELATIONSHIP_STRONG:
        if keyword.lower() in text:
            score += 2
            if keyword not in matched:
                matched.append(keyword)
    
    # Weak relationship keywords (+1 each)
    for keyword in KEYWORDS_RELATIONSHIP_WEAK:
        if keyword.lower() in text:
            score += 1
            if keyword not in matched:
                matched.append(keyword)
    
    # Strong toxicity keywords (+3 each)
    for keyword in KEYWORDS_TOXICITY_STRONG:
        if keyword.lower() in text:
            score += 3
            if keyword not in matched:
                matched.append(keyword)
    
    # Weak toxicity keywords (+1 each)
    for keyword in KEYWORDS_TOXICITY_WEAK:
        if keyword.lower() in text:
            score += 1
            if keyword not in matched:
                matched.append(keyword)
    
    return score, matched


def _is_valid_post(submission) -> bool:
    """
    Check if a post meets basic filtering criteria.
    
    Args:
        submission: PRAW submission object
        
    Returns:
        True if post should be processed
    """
    # Skip stickied/announcement posts
    if submission.stickied:
        return False
    
    # Check body length
    body = submission.selftext or ""
    if len(body) < MIN_BODY_LENGTH:
        return False
    
    # Check age
    try:
        post_age_hours = (time.time() - submission.created_utc) / 3600
        if post_age_hours > MAX_POST_AGE_HOURS:
            return False
    except Exception:
        return False
    
    return True


def _submission_to_dict(submission, score: int, keywords: List[str]) -> Dict[str, Any]:
    """
    Convert a PRAW submission to a post dictionary.
    
    Args:
        submission: PRAW submission object
        score: Keyword relevance score
        keywords: List of matched keywords
        
    Returns:
        Post dictionary matching contact_tracker schema
    """
    import json
    
    return {
        'id': f"reddit_{submission.id}",
        'platform': 'reddit',
        'title': submission.title,
        'url': f"https://reddit.com{submission.permalink}",
        'author': str(submission.author) if submission.author else '[deleted]',
        'subreddit_or_channel': submission.subreddit.display_name,
        'body_preview': (submission.selftext or "")[:500],
        'posted_at': submission.created_utc,
        'found_at': time.time(),
        'score': 0,  # Will be calculated by priority engine
        'keyword_matches': json.dumps(keywords),
        'engagement_count': submission.score + submission.num_comments,
        'status': 'new',
        'draft_reply': None,
        'contacted_at': None,
        'last_activity_check': None,
        'activity_since_contact': 0,
        'notes': f"Initial keyword score: {score}"
    }


class RedditCrawler:
    """
    Reddit crawler that streams posts from target subreddits.
    Runs in a background thread.
    """
    
    def __init__(self):
        """Initialize the Reddit crawler."""
        self.reddit = None
        self._thread: Optional[threading.Thread] = None
        self._stop_event = threading.Event()
        self._running = False
        self._seen_ids: Set[str] = set()
        self._lock = threading.Lock()
        
        # Check credentials
        self._has_credentials = all([
            REDDIT_CLIENT_ID,
            REDDIT_CLIENT_SECRET,
            REDDIT_USERNAME,
            REDDIT_PASSWORD
        ])
        
        if not self._has_credentials:
            logger.warning("Reddit credentials not configured. Set REDDIT_CLIENT_ID, "
                          "REDDIT_CLIENT_SECRET, REDDIT_USERNAME, REDDIT_PASSWORD environment variables.")
        else:
            self._init_reddit()
    
    def _init_reddit(self) -> None:
        """Initialize PRAW Reddit instance."""
        try:
            import praw
            self.reddit = praw.Reddit(
                client_id=REDDIT_CLIENT_ID,
                client_secret=REDDIT_CLIENT_SECRET,
                user_agent=USER_AGENT,
                username=REDDIT_USERNAME,
                password=REDDIT_PASSWORD,
            )
            logger.info(f"Authenticated as: {self.reddit.user.me()}")
        except Exception as e:
            logger.error(f"Failed to initialize Reddit: {e}")
            self.reddit = None
    
    def _stream_posts(self, callback: Callable[[Dict[str, Any]], None]) -> None:
        """
        Stream posts from target subreddits.
        
        Args:
            callback: Function to call with each qualifying post dict
        """
        if not self.reddit:
            logger.error("Reddit not initialized, cannot stream")
            return
        
        logger.info(f"Starting Reddit stream for subreddits: {SUBREDDITS}")
        
        try:
            subreddit = self.reddit.subreddit(SUBREDDITS)
            
            for submission in subreddit.stream.submissions(skip_existing=True):
                if self._stop_event.is_set():
                    break
                
                try:
                    # Skip if already seen
                    with self._lock:
                        if submission.id in self._seen_ids:
                            continue
                        self._seen_ids.add(submission.id)
                    
                    # Check validity
                    if not _is_valid_post(submission):
                        continue
                    
                    # Calculate keyword score
                    body = submission.selftext or ""
                    keyword_score, keywords = _calculate_keyword_score(submission.title, body)
                    
                    # Skip if below threshold
                    if keyword_score < MIN_SCORE:
                        continue
                    
                    # Create post dict
                    post_dict = _submission_to_dict(submission, keyword_score, keywords)
                    
                    # Call callback
                    callback(post_dict)
                    
                    logger.info(f"Found qualifying post: {post_dict['title'][:80]}... "
                               f"(score: {keyword_score}, keywords: {len(keywords)})")
                    
                except Exception as e:
                    logger.error(f"Error processing submission: {e}")
                    continue
                    
        except Exception as e:
            logger.error(f"Stream error: {e}")
        
        logger.info("Reddit stream stopped")
    
    def start(self, callback: Callable[[Dict[str, Any]], None]) -> bool:
        """
        Start the crawler in a background thread.
        
        Args:
            callback: Function to call with each qualifying post dict
            
        Returns:
            True if started successfully, False otherwise
        """
        if self._running:
            logger.warning("Crawler already running")
            return False
        
        if not self._has_credentials:
            logger.warning("Cannot start Reddit crawler: credentials not configured")
            return False
        
        if not self.reddit:
            logger.error("Cannot start Reddit crawler: Reddit API not initialized")
            return False
        
        self._stop_event.clear()
        self._thread = threading.Thread(
            target=self._stream_posts,
            args=(callback,),
            daemon=True,
            name="RedditCrawler"
        )
        self._thread.start()
        self._running = True
        
        logger.info("Reddit crawler started")
        return True
    
    def stop(self) -> None:
        """Stop the crawler."""
        if not self._running:
            return
        
        logger.info("Stopping Reddit crawler...")
        self._stop_event.set()
        
        if self._thread and self._thread.is_alive():
            self._thread.join(timeout=5)
        
        self._running = False
        logger.info("Reddit crawler stopped")
    
    def is_running(self) -> bool:
        """Check if crawler is currently running."""
        return self._running and self._thread and self._thread.is_alive()
    
    def has_credentials(self) -> bool:
        """Check if Reddit credentials are configured."""
        return self._has_credentials
    
    def stream(self, callback: Callable[[Dict[str, Any]], None]) -> None:
        """
        Stream posts (blocking method, runs in current thread).
        
        Args:
            callback: Function to call with each qualifying post dict
        """
        if not self._has_credentials:
            logger.warning("Reddit credentials not configured, skipping stream")
            return
        
        if not self.reddit:
            self._init_reddit()
        
        if not self.reddit:
            logger.error("Failed to initialize Reddit, cannot stream")
            return
        
        self._stream_posts(callback)


def poll_subreddit(
    subreddit_name: str,
    callback: Callable[[Dict[str, Any]], None],
    limit: int = 50,
    skip_seen: bool = True
) -> int:
    """
    Poll a subreddit for recent posts (one-time operation).
    
    Args:
        subreddit_name: Name of subreddit to poll
        callback: Function to call with each qualifying post
        limit: Maximum posts to check
        skip_seen: Whether to skip already-seen posts
        
    Returns:
        Number of qualifying posts found
    """
    if not all([REDDIT_CLIENT_ID, REDDIT_CLIENT_SECRET, REDDIT_USERNAME, REDDIT_PASSWORD]):
        logger.warning("Reddit credentials not configured")
        return 0
    
    try:
        import praw
        reddit = praw.Reddit(
            client_id=REDDIT_CLIENT_ID,
            client_secret=REDDIT_CLIENT_SECRET,
            user_agent=USER_AGENT,
            username=REDDIT_USERNAME,
            password=REDDIT_PASSWORD,
        )
        
        seen_ids: Set[str] = set()
        count = 0
        
        subreddit = reddit.subreddit(subreddit_name)
        
        for submission in subreddit.new(limit=limit):
            if skip_seen and submission.id in seen_ids:
                continue
            seen_ids.add(submission.id)
            
            if not _is_valid_post(submission):
                continue
            
            body = submission.selftext or ""
            keyword_score, keywords = _calculate_keyword_score(submission.title, body)
            
            if keyword_score < MIN_SCORE:
                continue
            
            post_dict = _submission_to_dict(submission, keyword_score, keywords)
            callback(post_dict)
            count += 1
        
        return count
        
    except Exception as e:
        logger.error(f"Error polling subreddit: {e}")
        return 0


# Singleton instance for convenience
_default_crawler: Optional[RedditCrawler] = None


def get_crawler() -> RedditCrawler:
    """Get or create the default crawler instance."""
    global _default_crawler
    if _default_crawler is None:
        _default_crawler = RedditCrawler()
    return _default_crawler


if __name__ == "__main__":
    # Test mode - print posts to console
    def print_post(post: Dict[str, Any]) -> None:
        print(f"\n{'='*60}")
        print(f"Platform: {post['platform']}")
        print(f"Title: {post['title']}")
        print(f"Author: {post['author']}")
        print(f"Subreddit: {post['subreddit_or_channel']}")
        print(f"URL: {post['url']}")
        print(f"Keywords: {post['keyword_matches']}")
        print(f"Engagement: {post['engagement_count']}")
        print(f"{'='*60}\n")
    
    crawler = RedditCrawler()
    if crawler.has_credentials():
        print("Starting Reddit crawler test mode...")
        print("Press Ctrl+C to stop\n")
        try:
            crawler.stream(print_post)
        except KeyboardInterrupt:
            print("\nStopping...")
    else:
        print("Reddit credentials not configured. Set environment variables:")
        print("  REDDIT_CLIENT_ID")
        print("  REDDIT_CLIENT_SECRET")
        print("  REDDIT_USERNAME")
        print("  REDDIT_PASSWORD")
