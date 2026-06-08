#!/usr/bin/env python3
"""
AIRTA Social Monitor - Contact Tracker
======================================
SQLite database layer for tracking social media posts and outreach.

Provides persistence for:
- Posts discovered across platforms
- Contact status and history
- Daily/weekly statistics

Author: geekgodtech
Version: 1.0.0
"""

import sqlite3
import json
import os
import time
from datetime import datetime, timedelta
from typing import Optional, Dict, List, Any
from pathlib import Path


# Default database path
DEFAULT_DB_PATH = Path(__file__).parent / "data" / "monitor.db"


class ContactTracker:
    """
    Manages SQLite database for social media monitoring.
    Tracks posts, contact history, and generates statistics.
    """

    def __init__(self, db_path: Optional[str] = None):
        """
        Initialize the tracker with database path.
        
        Args:
            db_path: Path to SQLite database. Defaults to social_monitor/data/monitor.db
        """
        self.db_path = Path(db_path) if db_path else DEFAULT_DB_PATH
        self._ensure_db_directory()
        self._init_schema()

    def _ensure_db_directory(self) -> None:
        """Create data directory if it doesn't exist."""
        self.db_path.parent.mkdir(parents=True, exist_ok=True)

    def _get_connection(self) -> sqlite3.Connection:
        """Get a database connection with row factory."""
        conn = sqlite3.connect(self.db_path)
        conn.row_factory = sqlite3.Row
        return conn

    def _init_schema(self) -> None:
        """Initialize database schema with all tables."""
        with self._get_connection() as conn:
            # Posts table - main entity
            conn.execute("""
                CREATE TABLE IF NOT EXISTS posts (
                    id TEXT PRIMARY KEY,
                    platform TEXT NOT NULL,
                    title TEXT,
                    url TEXT NOT NULL,
                    author TEXT,
                    subreddit_or_channel TEXT,
                    body_preview TEXT,
                    posted_at REAL,
                    found_at REAL NOT NULL,
                    score REAL DEFAULT 0,
                    keyword_matches TEXT,
                    engagement_count INTEGER DEFAULT 0,
                    status TEXT DEFAULT 'new' CHECK (status IN ('new', 'opened', 'contacted', 'has_activity', 'expired', 'skipped')),
                    draft_reply TEXT,
                    contacted_at REAL,
                    last_activity_check REAL,
                    activity_since_contact INTEGER DEFAULT 0,
                    notes TEXT
                )
            """)

            # Contact history table - audit trail
            conn.execute("""
                CREATE TABLE IF NOT EXISTS contact_history (
                    id INTEGER PRIMARY KEY AUTOINCREMENT,
                    post_id TEXT NOT NULL,
                    action TEXT NOT NULL,
                    timestamp REAL NOT NULL,
                    notes TEXT,
                    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE
                )
            """)

            # Daily statistics table - aggregated metrics
            conn.execute("""
                CREATE TABLE IF NOT EXISTS daily_stats (
                    date TEXT PRIMARY KEY,
                    contacted INTEGER DEFAULT 0,
                    opened INTEGER DEFAULT 0,
                    skipped INTEGER DEFAULT 0
                )
            """)

            # Indexes for common queries
            conn.execute("CREATE INDEX IF NOT EXISTS idx_posts_status ON posts(status)")
            conn.execute("CREATE INDEX IF NOT EXISTS idx_posts_score ON posts(score DESC)")
            conn.execute("CREATE INDEX IF NOT EXISTS idx_posts_found_at ON posts(found_at)")
            conn.execute("CREATE INDEX IF NOT EXISTS idx_history_post_id ON contact_history(post_id)")
            conn.execute("CREATE INDEX IF NOT EXISTS idx_history_timestamp ON contact_history(timestamp)")

            conn.commit()

    def _get_today_date(self) -> str:
        """Get today's date as string YYYY-MM-DD."""
        return datetime.now().strftime("%Y-%m-%d")

    def _ensure_daily_stats_row(self, conn: sqlite3.Connection, date: str) -> None:
        """Ensure a daily stats row exists for the given date."""
        conn.execute(
            "INSERT OR IGNORE INTO daily_stats (date) VALUES (?)",
            (date,)
        )

    def _log_action(self, conn: sqlite3.Connection, post_id: str, action: str, notes: str = "") -> None:
        """Log an action to contact_history."""
        conn.execute(
            "INSERT INTO contact_history (post_id, action, timestamp, notes) VALUES (?, ?, ?, ?)",
            (post_id, action, time.time(), notes)
        )

    def upsert_post(self, post_dict: Dict[str, Any]) -> bool:
        """
        Insert a new post or update if it already exists.
        Only updates mutable fields (score, engagement_count, status if not contacted).
        
        Args:
            post_dict: Dictionary with post data matching schema
            
        Returns:
            True if inserted new post, False if updated existing
        """
        required_fields = {'id', 'platform', 'url', 'found_at'}
        if not required_fields.issubset(post_dict.keys()):
            raise ValueError(f"Post dict missing required fields: {required_fields - set(post_dict.keys())}")

        with self._get_connection() as conn:
            # Check if post exists
            cursor = conn.execute("SELECT status, score FROM posts WHERE id = ?", (post_dict['id'],))
            existing = cursor.fetchone()

            if existing:
                # Update existing post - only certain fields
                current_status = existing['status']
                
                # Don't update status if already contacted (unless it's has_activity)
                new_status = post_dict.get('status', current_status)
                if current_status == 'contacted' and new_status != 'has_activity':
                    new_status = current_status

                # Build update query dynamically
                update_fields = []
                values = []
                
                updatable_fields = ['score', 'engagement_count', 'keyword_matches', 'body_preview', 'title']
                for field in updatable_fields:
                    if field in post_dict:
                        update_fields.append(f"{field} = ?")
                        values.append(post_dict[field])
                
                # Always update status if changed
                if new_status != current_status:
                    update_fields.append("status = ?")
                    values.append(new_status)
                
                # Update engagement count if provided
                if 'engagement_count' in post_dict:
                    update_fields.append("engagement_count = ?")
                    values.append(post_dict['engagement_count'])

                if update_fields:
                    values.append(post_dict['id'])
                    query = f"UPDATE posts SET {', '.join(update_fields)} WHERE id = ?"
                    conn.execute(query, values)
                    conn.commit()
                
                return False
            else:
                # Insert new post
                fields = list(post_dict.keys())
                placeholders = ', '.join('?' * len(fields))
                columns = ', '.join(fields)
                
                query = f"INSERT INTO posts ({columns}) VALUES ({placeholders})"
                conn.execute(query, tuple(post_dict.values()))
                
                # Log the discovery
                self._log_action(conn, post_dict['id'], 'discovered', f"Found on {post_dict.get('platform', 'unknown')}")
                
                conn.commit()
                return True

    def get_queue(self, limit: int = 200) -> List[Dict[str, Any]]:
        """
        Get posts that need attention (new, opened, or has_activity).
        Ordered by score descending (highest priority first).
        
        Args:
            limit: Maximum number of posts to return
            
        Returns:
            List of post dictionaries
        """
        with self._get_connection() as conn:
            cursor = conn.execute("""
                SELECT * FROM posts 
                WHERE status IN ('new', 'opened', 'has_activity')
                ORDER BY score DESC
                LIMIT ?
            """, (limit,))
            
            rows = cursor.fetchall()
            return [dict(row) for row in rows]

    def get_contacted(self, limit: int = 100) -> List[Dict[str, Any]]:
        """
        Get posts that have been contacted, most recent first.
        
        Args:
            limit: Maximum number of posts to return
            
        Returns:
            List of post dictionaries
        """
        with self._get_connection() as conn:
            cursor = conn.execute("""
                SELECT * FROM posts 
                WHERE status = 'contacted'
                ORDER BY contacted_at DESC
                LIMIT ?
            """, (limit,))
            
            rows = cursor.fetchall()
            return [dict(row) for row in rows]

    def mark_opened(self, post_id: str) -> None:
        """
        Mark a post as opened (user has viewed it).
        
        Args:
            post_id: The post ID to mark
        """
        with self._get_connection() as conn:
            conn.execute(
                "UPDATE posts SET status = 'opened' WHERE id = ? AND status = 'new'",
                (post_id,)
            )
            
            if conn.total_changes > 0:
                self._log_action(conn, post_id, 'opened')
                
                # Update daily stats
                today = self._get_today_date()
                self._ensure_daily_stats_row(conn, today)
                conn.execute(
                    "UPDATE daily_stats SET opened = opened + 1 WHERE date = ?",
                    (today,)
                )
            
            conn.commit()

    def mark_contacted(self, post_id: str, notes: str = '') -> None:
        """
        Mark a post as contacted (reply has been sent).
        
        Args:
            post_id: The post ID to mark
            notes: Optional notes about the contact
        """
        with self._get_connection() as conn:
            contacted_at = time.time()
            
            conn.execute(
                """UPDATE posts 
                   SET status = 'contacted', contacted_at = ?, notes = COALESCE(?, notes) 
                   WHERE id = ? AND status != 'contacted'""",
                (contacted_at, notes, post_id)
            )
            
            if conn.total_changes > 0:
                self._log_action(conn, post_id, 'contacted', notes)
                
                # Update daily stats
                today = self._get_today_date()
                self._ensure_daily_stats_row(conn, today)
                conn.execute(
                    "UPDATE daily_stats SET contacted = contacted + 1 WHERE date = ?",
                    (today,)
                )
            
            conn.commit()

    def mark_skipped(self, post_id: str) -> None:
        """
        Mark a post as skipped (user chose not to contact).
        
        Args:
            post_id: The post ID to mark
        """
        with self._get_connection() as conn:
            conn.execute(
                "UPDATE posts SET status = 'skipped' WHERE id = ? AND status IN ('new', 'opened')",
                (post_id,)
            )
            
            if conn.total_changes > 0:
                self._log_action(conn, post_id, 'skipped')
                
                # Update daily stats
                today = self._get_today_date()
                self._ensure_daily_stats_row(conn, today)
                conn.execute(
                    "UPDATE daily_stats SET skipped = skipped + 1 WHERE date = ?",
                    (today,)
                )
            
            conn.commit()

    def mark_has_activity(self, post_id: str, new_count: int) -> None:
        """
        Mark a post as having new activity since contact.
        
        Args:
            post_id: The post ID to mark
            new_count: The new engagement count
        """
        with self._get_connection() as conn:
            conn.execute(
                """UPDATE posts 
                   SET status = 'has_activity', 
                       last_activity_check = ?,
                       activity_since_contact = ?,
                       engagement_count = ?
                   WHERE id = ? AND status = 'contacted'""",
                (time.time(), new_count, new_count, post_id)
            )
            
            if conn.total_changes > 0:
                self._log_action(conn, post_id, 'has_activity', f"New engagement: {new_count}")
            
            conn.commit()

    def mark_expired(self, post_id: str) -> None:
        """
        Mark a post as expired (too old to respond to).
        
        Args:
            post_id: The post ID to mark
        """
        with self._get_connection() as conn:
            conn.execute(
                "UPDATE posts SET status = 'expired' WHERE id = ? AND status IN ('new', 'opened')",
                (post_id,)
            )
            
            if conn.total_changes > 0:
                self._log_action(conn, post_id, 'expired')
            
            conn.commit()

    def has_post(self, post_id: str) -> bool:
        """
        Check if a post exists in the database.
        
        Args:
            post_id: The post ID to check
            
        Returns:
            True if post exists, False otherwise
        """
        with self._get_connection() as conn:
            cursor = conn.execute("SELECT 1 FROM posts WHERE id = ?", (post_id,))
            return cursor.fetchone() is not None

    def get_post(self, post_id: str) -> Optional[Dict[str, Any]]:
        """
        Get a single post by ID.
        
        Args:
            post_id: The post ID to retrieve
            
        Returns:
            Post dictionary or None if not found
        """
        with self._get_connection() as conn:
            cursor = conn.execute("SELECT * FROM posts WHERE id = ?", (post_id,))
            row = cursor.fetchone()
            return dict(row) if row else None

    def get_today_stats(self) -> Dict[str, int]:
        """
        Get statistics for today.
        
        Returns:
            Dictionary with contacted, opened, skipped counts
        """
        with self._get_connection() as conn:
            today = self._get_today_date()
            cursor = conn.execute(
                "SELECT contacted, opened, skipped FROM daily_stats WHERE date = ?",
                (today,)
            )
            row = cursor.fetchone()
            
            if row:
                return {'contacted': row['contacted'], 'opened': row['opened'], 'skipped': row['skipped']}
            return {'contacted': 0, 'opened': 0, 'skipped': 0}

    def get_week_stats(self) -> Dict[str, int]:
        """
        Get statistics for the last 7 days.
        
        Returns:
            Dictionary with contacted, opened, skipped totals
        """
        with self._get_connection() as conn:
            week_ago = (datetime.now() - timedelta(days=7)).strftime("%Y-%m-%d")
            cursor = conn.execute(
                """SELECT SUM(contacted) as contacted, SUM(opened) as opened, SUM(skipped) as skipped 
                   FROM daily_stats WHERE date >= ?""",
                (week_ago,)
            )
            row = cursor.fetchone()
            
            return {
                'contacted': row['contacted'] or 0,
                'opened': row['opened'] or 0,
                'skipped': row['skipped'] or 0
            }

    def get_all_time_stats(self) -> Dict[str, int]:
        """
        Get all-time statistics.
        
        Returns:
            Dictionary with contacted, opened, skipped totals
        """
        with self._get_connection() as conn:
            cursor = conn.execute(
                """SELECT SUM(contacted) as contacted, SUM(opened) as opened, SUM(skipped) as skipped 
                   FROM daily_stats"""
            )
            row = cursor.fetchone()
            
            return {
                'contacted': row['contacted'] or 0,
                'opened': row['opened'] or 0,
                'skipped': row['skipped'] or 0
            }

    def cleanup_expired(self, days: int = 3) -> int:
        """
        Mark old new/opened posts as expired.
        
        Args:
            days: Number of days after which to expire posts
            
        Returns:
            Number of posts marked as expired
        """
        cutoff = time.time() - (days * 24 * 60 * 60)
        
        with self._get_connection() as conn:
            # Get posts to expire
            cursor = conn.execute(
                """SELECT id FROM posts 
                   WHERE status IN ('new', 'opened') AND found_at < ?""",
                (cutoff,)
            )
            posts_to_expire = [row['id'] for row in cursor.fetchall()]
            
            # Mark as expired
            conn.execute(
                """UPDATE posts 
                   SET status = 'expired' 
                   WHERE status IN ('new', 'opened') AND found_at < ?""",
                (cutoff,)
            )
            
            # Log actions
            for post_id in posts_to_expire:
                self._log_action(conn, post_id, 'expired', f"Auto-expired after {days} days")
            
            conn.commit()
            return len(posts_to_expire)

    def update_draft_reply(self, post_id: str, draft: str) -> None:
        """
        Update the draft reply for a post.
        
        Args:
            post_id: The post ID
            draft: The draft reply text
        """
        with self._get_connection() as conn:
            conn.execute(
                "UPDATE posts SET draft_reply = ? WHERE id = ?",
                (draft, post_id)
            )
            conn.commit()

    def get_contact_history(self, post_id: str) -> List[Dict[str, Any]]:
        """
        Get contact history for a specific post.
        
        Args:
            post_id: The post ID
            
        Returns:
            List of history entries
        """
        with self._get_connection() as conn:
            cursor = conn.execute(
                "SELECT * FROM contact_history WHERE post_id = ? ORDER BY timestamp DESC",
                (post_id,)
            )
            return [dict(row) for row in cursor.fetchall()]

    def get_platform_stats(self) -> Dict[str, Dict[str, int]]:
        """
        Get statistics broken down by platform.
        
        Returns:
            Dictionary with platform as key, stats as value
        """
        with self._get_connection() as conn:
            cursor = conn.execute(
                """SELECT platform, status, COUNT(*) as count 
                   FROM posts GROUP BY platform, status"""
            )
            
            stats = {}
            for row in cursor.fetchall():
                platform = row['platform']
                if platform not in stats:
                    stats[platform] = {}
                stats[platform][row['status']] = row['count']
            
            return stats

    def close(self) -> None:
        """Close any open resources (SQLite connections are per-operation)."""
        pass  # SQLite connections are context-managed per operation

    def __enter__(self):
        """Context manager entry."""
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        """Context manager exit."""
        self.close()
        return False


# Singleton instance for convenience
_default_tracker: Optional[ContactTracker] = None


def get_tracker(db_path: Optional[str] = None) -> ContactTracker:
    """Get or create the default tracker instance."""
    global _default_tracker
    if _default_tracker is None or db_path is not None:
        _default_tracker = ContactTracker(db_path)
    return _default_tracker
