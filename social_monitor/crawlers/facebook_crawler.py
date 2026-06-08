#!/usr/bin/env python3
"""
AIRTA Social Monitor - Facebook Crawler
=========================================
Monitors Facebook for relationship-related posts using Playwright.
Searches public Facebook content for relationship advice posts.

IMPORTANT: Use responsibly. Only scrapes public content.
Playwright must be installed: playwright install chromium

Credentials from environment (optional):
- FACEBOOK_EMAIL (optional - works on public content without login)
- FACEBOOK_PASSWORD (optional)

Features:
- Searches public Facebook groups/pages for relationship posts
- Polls every 60 minutes (Facebook is sensitive to scraping frequency)
- Gracefully handles missing Playwright installation

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
logger = logging.getLogger('facebook_crawler')

# Facebook credentials (optional)
FACEBOOK_EMAIL = os.getenv('FACEBOOK_EMAIL')
FACEBOOK_PASSWORD = os.getenv('FACEBOOK_PASSWORD')

# Search queries (relationship-focused)
SEARCH_QUERIES = [
    "relationship advice",
    "toxic relationship",
    "red flags relationship",
    "controlling partner",
    "emotional abuse",
]

# Target groups/pages to monitor
# Note: These should be public groups/pages only
TARGET_GROUPS = [
    "relationshipadvice",  # Public group
]

# Configuration
POLL_INTERVAL_MINUTES = 60  # Facebook is sensitive - use longer interval
MAX_POSTS_PER_SEARCH = 20
MAX_AGE_HOURS = 48


class FacebookCrawler:
    """
    Facebook crawler that polls for relationship-related posts.
    Uses Playwright for browser automation.
    Runs in a background thread.
    
    IMPORTANT: Only scrapes public content. Use responsibly.
    Playwright must be installed: pip install playwright && playwright install chromium
    """
    
    def __init__(self, poll_interval: int = POLL_INTERVAL_MINUTES):
        """
        Initialize the Facebook crawler.
        
        Args:
            poll_interval: Minutes between polls (minimum 60 recommended)
        """
        self.poll_interval = max(60, poll_interval)  # Enforce minimum 60 minutes
        self.playwright = None
        self.browser = None
        self.context = None
        self.page = None
        self._thread: Optional[threading.Thread] = None
        self._stop_event = threading.Event()
        self._running = False
        self._seen_ids: Set[str] = set()
        self._lock = threading.Lock()
        self._last_poll: Optional[datetime] = None
        
        # Check if Playwright is available
        self._has_playwright = False
        try:
            import playwright
            self._has_playwright = True
        except ImportError:
            logger.warning("Playwright not installed. Facebook crawler will not function. "
                          "Install with: pip install playwright && playwright install chromium")
    
    def _init_browser(self) -> bool:
        """
        Initialize Playwright browser.
        
        Returns:
            True if successful, False otherwise
        """
        if not self._has_playwright:
            logger.error("Playwright not available. Cannot initialize browser.")
            return False
        
        try:
            from playwright.sync_api import sync_playwright
            
            self.playwright = sync_playwright().start()
            
            # Launch browser with stealth options
            self.browser = self.playwright.chromium.launch(
                headless=True,
                args=[
                    '--disable-blink-features=AutomationControlled',
                    '--disable-web-security',
                    '--disable-features=IsolateOrigins,site-per-process',
                ]
            )
            
            # Create context with realistic viewport
            self.context = self.browser.new_context(
                viewport={'width': 1920, 'height': 1080},
                user_agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 '
                          '(KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
            )
            
            # Create page
            self.page = self.context.new_page()
            
            # Add stealth script to evade detection
            self.page.add_init_script("""
                Object.defineProperty(navigator, 'webdriver', {
                    get: () => undefined
                });
                Object.defineProperty(navigator, 'plugins', {
                    get: () => [1, 2, 3, 4, 5]
                });
            """)
            
            logger.info("Playwright browser initialized")
            return True
            
        except Exception as e:
            logger.error(f"Failed to initialize browser: {e}")
            self._cleanup_browser()
            return False
    
    def _cleanup_browser(self) -> None:
        """Clean up browser resources."""
        try:
            if self.page:
                self.page.close()
                self.page = None
            if self.context:
                self.context.close()
                self.context = None
            if self.browser:
                self.browser.close()
                self.browser = None
            if self.playwright:
                self.playwright.stop()
                self.playwright = None
        except Exception as e:
            logger.error(f"Error cleaning up browser: {e}")
    
    def _login(self) -> bool:
        """
        Login to Facebook if credentials are available.
        Returns True if logged in or no credentials needed.
        """
        if not FACEBOOK_EMAIL or not FACEBOOK_PASSWORD:
            logger.info("No Facebook credentials - will attempt public access only")
            return True
        
        if not self.page:
            return False
        
        try:
            logger.info("Logging into Facebook...")
            self.page.goto("https://facebook.com/login")
            
            # Fill login form
            self.page.fill('input[name="email"]', FACEBOOK_EMAIL)
            self.page.fill('input[name="pass"]', FACEBOOK_PASSWORD)
            
            # Click login button
            self.page.click('button[name="login"]')
            
            # Wait for navigation
            self.page.wait_for_load_state('networkidle', timeout=10000)
            
            # Check if login successful
            if 'login' not in self.page.url:
                logger.info("Facebook login successful")
                return True
            else:
                logger.error("Facebook login failed")
                return False
                
        except Exception as e:
            logger.error(f"Error during Facebook login: {e}")
            return False
    
    def _search_public_posts(self, query: str) -> List[Dict[str, Any]]:
        """
        Search for public posts matching a query.
        
        Args:
            query: Search query
            
        Returns:
            List of post data dictionaries
        """
        if not self.page:
            return []
        
        posts = []
        
        try:
            # Navigate to Facebook search
            search_url = f"https://facebook.com/search/posts?q={query.replace(' ', '+')}"
            self.page.goto(search_url)
            
            # Wait for content to load
            self.page.wait_for_load_state('networkidle', timeout=10000)
            time.sleep(3)  # Additional wait for dynamic content
            
            # Scroll to load more content
            for _ in range(3):
                self.page.evaluate("window.scrollTo(0, document.body.scrollHeight)")
                time.sleep(2)
            
            # Extract post data
            # Note: Selectors may break as Facebook changes their DOM
            # These are approximate and may need updating
            post_elements = self.page.query_selector_all('div[role="article"]')
            
            for i, element in enumerate(post_elements[:MAX_POSTS_PER_SEARCH]):
                try:
                    # Extract post text
                    text_element = element.query_selector('span[dir="auto"]')
                    text = text_element.inner_text() if text_element else ''
                    
                    if len(text) < 100:  # Skip short posts
                        continue
                    
                    # Extract author
                    author_element = element.query_selector('a[role="link"]')
                    author = author_element.inner_text() if author_element else 'Unknown'
                    
                    # Extract timestamp (approximate)
                    time_element = element.query_selector('a[href*="/posts/"]')
                    timestamp = time.time()  # Default to now
                    
                    # Extract post ID from URL
                    post_url = ''
                    if time_element:
                        href = time_element.get_attribute('href') or ''
                        if '/posts/' in href:
                            post_url = f"https://facebook.com{href}"
                            # Extract post ID
                            parts = href.split('/posts/')
                            post_id = parts[1].split('?')[0] if len(parts) > 1 else f"unknown_{i}"
                        else:
                            post_id = f"search_{int(time.time())}_{i}"
                    else:
                        post_id = f"search_{int(time.time())}_{i}"
                    
                    # Extract engagement (approximate - may not be visible)
                    engagement = 0
                    
                    posts.append({
                        'id': f"facebook_{post_id}",
                        'post_id': post_id,
                        'text': text[:500],
                        'author': author,
                        'url': post_url or f"https://facebook.com/search/posts?q={query.replace(' ', '+')}",
                        'timestamp': timestamp,
                        'engagement': engagement,
                    })
                    
                except Exception as e:
                    logger.debug(f"Error extracting post data: {e}")
                    continue
                    
        except Exception as e:
            logger.error(f"Error searching Facebook: {e}")
        
        return posts
    
    def _calculate_keyword_score(self, text: str) -> tuple:
        """
        Calculate keyword relevance score for a post.
        
        Args:
            text: Post text
            
        Returns:
            Tuple of (score, matched_keywords)
        """
        text_lower = text.lower()
        score = 0
        matched = []
        
        # Strong indicators (+3 each)
        strong_keywords = [
            "gaslighting", "emotional abuse", "verbal abuse",
            "love bombing", "coercive control"
        ]
        for kw in strong_keywords:
            if kw.lower() in text_lower:
                score += 3
                if kw not in matched:
                    matched.append(kw)
        
        # Medium indicators (+2 each)
        medium_keywords = [
            "toxic", "narcissist", "manipulative", "controlling", "abusive"
        ]
        for kw in medium_keywords:
            if kw.lower() in text_lower:
                score += 2
                if kw not in matched:
                    matched.append(kw)
        
        # Weak indicators (+1 each)
        weak_keywords = [
            "red flag", "unhealthy", "toxic relationship", "trust issues"
        ]
        for kw in weak_keywords:
            if kw.lower() in text_lower:
                score += 1
                if kw not in matched:
                    matched.append(kw)
        
        return score, matched
    
    def _post_to_dict(self, post: Dict[str, Any], keywords: List[str]) -> Dict[str, Any]:
        """
        Convert post data to contact_tracker format.
        
        Args:
            post: Post data from Facebook
            keywords: Matched keywords
            
        Returns:
            Post dictionary matching contact_tracker schema
        """
        return {
            'id': post['id'],
            'platform': 'facebook',
            'title': post['text'][:100] + '...' if len(post['text']) > 100 else post['text'],
            'url': post['url'],
            'author': post['author'],
            'subreddit_or_channel': post['author'],
            'body_preview': post['text'],
            'posted_at': post['timestamp'],
            'found_at': time.time(),
            'score': 0,
            'keyword_matches': json.dumps(keywords),
            'engagement_count': post.get('engagement', 0),
            'status': 'new',
            'draft_reply': None,
            'contacted_at': None,
            'last_activity_check': None,
            'activity_since_contact': 0,
            'notes': json.dumps({
                'source': 'facebook_search',
                'query_used': True,
            })
        }
    
    def poll(self, callback: Callable[[Dict[str, Any]], None]) -> int:
        """
        Poll Facebook for new posts.
        
        Args:
            callback: Function to call with each qualifying post
            
        Returns:
            Number of qualifying posts found
        """
        if not self._has_playwright:
            logger.warning("Playwright not available, skipping Facebook poll")
            return 0
        
        # Initialize browser
        if not self.browser:
            if not self._init_browser():
                return 0
            if FACEBOOK_EMAIL and FACEBOOK_PASSWORD:
                self._login()
        
        count = 0
        
        try:
            for query in SEARCH_QUERIES:
                if self._stop_event.is_set():
                    break
                
                logger.info(f"Searching Facebook for: {query}")
                posts = self._search_public_posts(query)
                
                for post in posts:
                    post_id = post['post_id']
                    
                    # Skip if already seen
                    with self._lock:
                        if post_id in self._seen_ids:
                            continue
                        self._seen_ids.add(post_id)
                    
                    # Calculate keyword score
                    keyword_score, matched_keywords = self._calculate_keyword_score(post['text'])
                    
                    # Skip if below threshold
                    if keyword_score < 2:
                        continue
                    
                    # Create post dict
                    post_dict = self._post_to_dict(post, matched_keywords)
                    
                    # Call callback
                    callback(post_dict)
                    count += 1
                    
                    logger.info(f"Found qualifying Facebook post by {post['author']}: "
                               f"{post['text'][:60]}...")
                
                # Be nice to Facebook's servers
                time.sleep(5)
        
        except Exception as e:
            logger.error(f"Error during Facebook poll: {e}")
        
        self._last_poll = datetime.now()
        logger.info(f"Facebook poll complete. Found {count} qualifying posts.")
        return count
    
    def _poll_loop(self, callback: Callable[[Dict[str, Any]], None]) -> None:
        """Background polling loop."""
        logger.info(f"Starting Facebook polling (interval: {self.poll_interval} minutes)")
        logger.info("IMPORTANT: Only scraping public content. Use responsibly.")
        
        # Initialize browser on first poll
        if not self.browser:
            if not self._init_browser():
                logger.error("Failed to initialize browser. Stopping.")
                return
            if FACEBOOK_EMAIL and FACEBOOK_PASSWORD:
                self._login()
        
        while not self._stop_event.is_set():
            try:
                # Re-initialize browser if needed
                if not self.page or self.page.is_closed():
                    if not self._init_browser():
                        logger.error("Failed to re-initialize browser")
                        break
                    if FACEBOOK_EMAIL and FACEBOOK_PASSWORD:
                        self._login()
                
                self.poll(callback)
            except Exception as e:
                logger.error(f"Error during Facebook poll: {e}")
            
            # Wait for next poll
            self._stop_event.wait(self.poll_interval * 60)
        
        self._cleanup_browser()
        logger.info("Facebook polling stopped")
    
    def start(self, callback: Callable[[Dict[str, Any]], None]) -> bool:
        """
        Start the crawler in a background thread.
        
        Args:
            callback: Function to call with each qualifying post
            
        Returns:
            True if started successfully, False otherwise
        """
        if self._running:
            logger.warning("Facebook crawler already running")
            return False
        
        if not self._has_playwright:
            logger.error("Cannot start Facebook crawler: Playwright not installed. "
                        "Run: pip install playwright && playwright install chromium")
            return False
        
        self._stop_event.clear()
        self._thread = threading.Thread(
            target=self._poll_loop,
            args=(callback,),
            daemon=True,
            name="FacebookCrawler"
        )
        self._thread.start()
        self._running = True
        
        logger.info("Facebook crawler started")
        return True
    
    def stop(self) -> None:
        """Stop the crawler."""
        if not self._running:
            return
        
        logger.info("Stopping Facebook crawler...")
        self._stop_event.set()
        
        if self._thread and self._thread.is_alive():
            self._thread.join(timeout=10)
        
        self._cleanup_browser()
        self._running = False
        logger.info("Facebook crawler stopped")
    
    def is_running(self) -> bool:
        """Check if crawler is currently running."""
        return self._running and self._thread and self._thread.is_alive()
    
    def has_credentials(self) -> bool:
        """Check if Facebook credentials are configured (optional)."""
        return bool(FACEBOOK_EMAIL and FACEBOOK_PASSWORD)
    
    def is_available(self) -> bool:
        """Check if crawler is available (Playwright installed)."""
        return self._has_playwright
    
    def get_last_poll_time(self) -> Optional[datetime]:
        """Get timestamp of last successful poll."""
        return self._last_poll


# Singleton instance for convenience
_default_crawler: Optional[FacebookCrawler] = None


def get_crawler(poll_interval: int = POLL_INTERVAL_MINUTES) -> FacebookCrawler:
    """Get or create the default crawler instance."""
    global _default_crawler
    if _default_crawler is None:
        _default_crawler = FacebookCrawler(poll_interval)
    return _default_crawler


if __name__ == "__main__":
    # Test mode - print posts to console
    def print_post(post: Dict[str, Any]) -> None:
        print(f"\n{'='*60}")
        print(f"Platform: {post['platform']}")
        print(f"Author: {post['author']}")
        print(f"Text: {post['body_preview'][:200]}...")
        print(f"URL: {post['url']}")
        print(f"Keywords: {post['keyword_matches']}")
        print(f"{'='*60}\n")
    
    crawler = FacebookCrawler()
    
    if not crawler.is_available():
        print("Facebook crawler not available.")
        print("Install Playwright: pip install playwright && playwright install chromium")
    elif crawler.has_credentials():
        print("Starting Facebook crawler test mode (with login)...")
        print("Running single poll...\n")
        count = crawler.poll(print_post)
        print(f"\nFound {count} qualifying posts")
    else:
        print("Starting Facebook crawler test mode (public content only)...")
        print("Note: Facebook limits public search results without login")
        print("Running single poll...\n")
        count = crawler.poll(print_post)
        print(f"\nFound {count} qualifying posts")
