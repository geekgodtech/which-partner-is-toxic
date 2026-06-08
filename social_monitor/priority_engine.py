#!/usr/bin/env python3
"""
AIRTA Social Monitor - Priority Engine
======================================
Calculates priority scores for social media posts.

Scoring factors:
- Recency: How fresh is the post?
- Engagement: How much activity does it have?
- Keyword strength: How relevant to our domain?
- Platform: Which platform (some are more valuable)
- Activity: Has there been new activity since contact?

Author: geekgodtech
Version: 1.0.0
"""

import math
import time
from typing import Dict, Any, Optional
from contact_tracker import ContactTracker


# Default weights (must sum to 1.0 after normalization)
DEFAULT_WEIGHTS = {
    'recency': 0.40,
    'engagement': 0.25,
    'keyword_strength': 0.20,
    'platform': 0.10,
    'activity': 0.05,
}

# Default platform rankings (1-5 scale, higher = more important)
DEFAULT_PLATFORM_RANKS = {
    'reddit': 5,
    'youtube': 4,
    'tiktok': 3,
    'x': 3,
    'facebook': 2,
    'twitter': 3,  # Alias for x
}


def normalize_weights(weights: Dict[str, float]) -> Dict[str, float]:
    """
    Normalize weights to sum to 1.0.
    
    Args:
        weights: Dictionary of weight values
        
    Returns:
        Normalized weights dict
    """
    total = sum(weights.values())
    if total == 0:
        return {k: 0.2 for k in weights}  # Equal distribution if all zero
    return {k: v / total for k, v in weights.items()}


def calculate_recency_score(posted_at: Optional[float]) -> float:
    """
    Calculate recency score based on post age.
    
    Scoring:
    - < 1 hour: 100
    - < 2 hours: 85
    - < 6 hours: 65
    - < 24 hours: 40
    - < 48 hours: 20
    - Older: 5
    
    Args:
        posted_at: Timestamp when post was created
        
    Returns:
        Score from 0-100
    """
    if posted_at is None:
        return 5  # Unknown age = low score
    
    hours_ago = (time.time() - posted_at) / 3600
    
    if hours_ago < 1:
        return 100.0
    elif hours_ago < 2:
        return 85.0
    elif hours_ago < 6:
        return 65.0
    elif hours_ago < 24:
        return 40.0
    elif hours_ago < 48:
        return 20.0
    else:
        return 5.0


def calculate_engagement_score(engagement_count: int) -> float:
    """
    Calculate engagement score using logarithmic scale.
    
    Formula: min(100, log10(engagement_count + 1) * 25)
    - 0 engagement: 0
    - 10 engagement: 25
    - 100 engagement: 50
    - 1000 engagement: 75
    - 10000+ engagement: 100
    
    Args:
        engagement_count: Total engagement (likes, comments, shares, etc.)
        
    Returns:
        Score from 0-100
    """
    if engagement_count <= 0:
        return 0.0
    
    # Log scale: 10^4 = 10000 engagement = 100 points
    score = min(100.0, math.log10(engagement_count + 1) * 25)
    return round(score, 2)


def calculate_keyword_score(keyword_matches: Any) -> float:
    """
    Calculate keyword strength score.
    
    Formula: min(100, num_matches / 10 * 100)
    - 0 matches: 0
    - 5 matches: 50
    - 10+ matches: 100
    
    Args:
        keyword_matches: List of matches or JSON string
        
    Returns:
        Score from 0-100
    """
    if keyword_matches is None:
        return 0.0
    
    # Handle JSON string
    if isinstance(keyword_matches, str):
        import json
        try:
            keyword_matches = json.loads(keyword_matches)
        except (json.JSONDecodeError, TypeError):
            return 0.0
    
    # Handle list
    if isinstance(keyword_matches, (list, tuple)):
        count = len(keyword_matches)
    elif isinstance(keyword_matches, dict):
        count = len(keyword_matches)
    else:
        return 0.0
    
    score = min(100.0, (count / 10.0) * 100)
    return round(score, 2)


def calculate_platform_score(platform: str, platform_ranks: Dict[str, int]) -> float:
    """
    Calculate platform score based on importance ranking.
    
    Formula: (rank / 5) * 100
    
    Args:
        platform: Platform name
        platform_ranks: Dictionary mapping platform to rank (1-5)
        
    Returns:
        Score from 0-100
    """
    platform = platform.lower().strip()
    rank = platform_ranks.get(platform, 3)  # Default to middle rank if unknown
    
    # Clamp rank to 1-5
    rank = max(1, min(5, rank))
    
    score = (rank / 5.0) * 100
    return round(score, 2)


def calculate_activity_score(post_dict: Dict[str, Any]) -> float:
    """
    Calculate activity score based on new engagement since contact.
    
    Args:
        post_dict: Post dictionary with activity_since_contact field
        
    Returns:
        Score from 0-100 (100 if has new activity)
    """
    activity_since = post_dict.get('activity_since_contact', 0)
    status = post_dict.get('status', '')
    
    if status == 'has_activity' or activity_since > 0:
        return 100.0
    return 0.0


def calculate_score(
    post_dict: Dict[str, Any],
    weights: Optional[Dict[str, float]] = None,
    platform_ranks: Optional[Dict[str, int]] = None
) -> float:
    """
    Calculate overall priority score for a post.
    
    Combines multiple factors:
    - Recency (how fresh is the post)
    - Engagement (likes, comments, shares)
    - Keyword strength (relevance to relationship/toxicity)
    - Platform importance
    - Activity since contact
    
    Args:
        post_dict: Post data dictionary
        weights: Optional custom weights (recency, engagement, keyword_strength, platform, activity)
        platform_ranks: Optional custom platform rankings
        
    Returns:
        Score from 0-100
    """
    # Use defaults if not provided
    weights = weights or DEFAULT_WEIGHTS.copy()
    platform_ranks = platform_ranks or DEFAULT_PLATFORM_RANKS.copy()
    
    # Normalize weights
    weights = normalize_weights(weights)
    
    # Calculate individual scores
    recency_score = calculate_recency_score(post_dict.get('posted_at'))
    engagement_score = calculate_engagement_score(post_dict.get('engagement_count', 0))
    keyword_score = calculate_keyword_score(post_dict.get('keyword_matches'))
    platform_score = calculate_platform_score(
        post_dict.get('platform', 'unknown'),
        platform_ranks
    )
    activity_score = calculate_activity_score(post_dict)
    
    # Weighted sum
    total_score = (
        recency_score * weights['recency'] +
        engagement_score * weights['engagement'] +
        keyword_score * weights['keyword_strength'] +
        platform_score * weights['platform'] +
        activity_score * weights['activity']
    )
    
    return round(min(100.0, max(0.0, total_score)), 2)


def rescore_all(
    tracker: ContactTracker,
    weights: Optional[Dict[str, float]] = None,
    platform_ranks: Optional[Dict[str, int]] = None
) -> int:
    """
    Recalculate scores for all non-expired posts.
    
    Args:
        tracker: ContactTracker instance
        weights: Optional custom weights
        platform_ranks: Optional custom platform rankings
        
    Returns:
        Number of posts rescored
    """
    import sqlite3
    
    # Get all non-expired posts
    with tracker._get_connection() as conn:
        cursor = conn.execute(
            "SELECT * FROM posts WHERE status NOT IN ('expired', 'skipped')"
        )
        posts = [dict(row) for row in cursor.fetchall()]
    
    # Recalculate scores
    updated_count = 0
    for post in posts:
        new_score = calculate_score(post, weights, platform_ranks)
        
        if abs(new_score - post.get('score', 0)) > 0.01:  # Only update if changed
            with tracker._get_connection() as conn:
                conn.execute(
                    "UPDATE posts SET score = ? WHERE id = ?",
                    (new_score, post['id'])
                )
                conn.commit()
            updated_count += 1
    
    return updated_count


def get_score_breakdown(
    post_dict: Dict[str, Any],
    weights: Optional[Dict[str, float]] = None,
    platform_ranks: Optional[Dict[str, int]] = None
) -> Dict[str, Any]:
    """
    Get detailed score breakdown for debugging/tuning.
    
    Args:
        post_dict: Post data dictionary
        weights: Optional custom weights
        platform_ranks: Optional custom platform rankings
        
    Returns:
        Dictionary with individual scores and final score
    """
    weights = weights or DEFAULT_WEIGHTS.copy()
    platform_ranks = platform_ranks or DEFAULT_PLATFORM_RANKS.copy()
    weights = normalize_weights(weights)
    
    recency_score = calculate_recency_score(post_dict.get('posted_at'))
    engagement_score = calculate_engagement_score(post_dict.get('engagement_count', 0))
    keyword_score = calculate_keyword_score(post_dict.get('keyword_matches'))
    platform_score = calculate_platform_score(
        post_dict.get('platform', 'unknown'),
        platform_ranks
    )
    activity_score = calculate_activity_score(post_dict)
    
    final_score = (
        recency_score * weights['recency'] +
        engagement_score * weights['engagement'] +
        keyword_score * weights['keyword_strength'] +
        platform_score * weights['platform'] +
        activity_score * weights['activity']
    )
    
    return {
        'final_score': round(min(100.0, max(0.0, final_score)), 2),
        'components': {
            'recency': {
                'raw_score': recency_score,
                'weight': weights['recency'],
                'weighted_score': round(recency_score * weights['recency'], 2),
            },
            'engagement': {
                'raw_score': engagement_score,
                'weight': weights['engagement'],
                'weighted_score': round(engagement_score * weights['engagement'], 2),
            },
            'keyword_strength': {
                'raw_score': keyword_score,
                'weight': weights['keyword_strength'],
                'weighted_score': round(keyword_score * weights['keyword_strength'], 2),
            },
            'platform': {
                'raw_score': platform_score,
                'weight': weights['platform'],
                'weighted_score': round(platform_score * weights['platform'], 2),
            },
            'activity': {
                'raw_score': activity_score,
                'weight': weights['activity'],
                'weighted_score': round(activity_score * weights['activity'], 2),
            },
        },
        'weights_used': weights,
    }


# Convenience functions for common use cases

def score_new_post(post_dict: Dict[str, Any]) -> float:
    """Score a newly discovered post with default weights."""
    return calculate_score(post_dict)


def should_contact(post_dict: Dict[str, Any], min_score: float = 50.0) -> bool:
    """Determine if a post is worth contacting based on score threshold."""
    score = calculate_score(post_dict)
    return score >= min_score


# ---------------------------------------------------------------------------
# Class wrapper — lets the UI import PriorityEngine as an object
# ---------------------------------------------------------------------------

class PriorityEngine:
    """Thin object wrapper around the module-level scoring functions."""

    def calculate_score(
        self,
        post_dict: Dict[str, Any],
        weights: Optional[Dict[str, float]] = None,
        platform_ranks: Optional[Dict[str, int]] = None,
    ) -> float:
        return calculate_score(post_dict, weights, platform_ranks)

    def rescore_all(
        self,
        tracker,
        weights: Optional[Dict[str, float]] = None,
        platform_ranks: Optional[Dict[str, int]] = None,
    ) -> int:
        return rescore_all(tracker, weights, platform_ranks)

    def get_score_breakdown(
        self,
        post_dict: Dict[str, Any],
        weights: Optional[Dict[str, float]] = None,
        platform_ranks: Optional[Dict[str, int]] = None,
    ) -> Dict[str, float]:
        return get_score_breakdown(post_dict, weights, platform_ranks)
