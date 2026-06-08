#!/usr/bin/env python3
"""
AIRTA Social Monitor - Reply Generator
======================================
Generates platform-aware draft replies for social media outreach.

Features:
- 3 rotating templates per platform
- Platform-specific handle prefixes (u/ for Reddit, @ for others)
- Keyword-aware messaging
- Warm, empathetic tone (not spammy)

Author: geekgodtech
Version: 1.0.0
"""

import hashlib
import json
from typing import Dict, Any, Optional, List


# App store links
ANDROID_LINK = 'https://play.google.com/store/apps/details?id=com.airta.airelationshiptoxicityanalyzer'
IOS_LINK = 'https://apps.apple.com/app/airta/id1234567890'
DEMO_LINK = 'https://geekgodtech.github.io/AIRTA/releases/airta-demo.apk'


# Platform handle prefixes
PLATFORM_PREFIXES = {
    'reddit': 'u/',
    'youtube': '@',
    'tiktok': '@',
    'x': '@',
    'twitter': '@',
    'facebook': '',  # Facebook doesn't use consistent handles in the same way
}


# Templates by platform - 3 rotating variants per platform
TEMPLATES = {
    'reddit': [
        """Hey {platform_handle_prefix}{author}, I'm really sorry you're going through this. What you're describing sounds genuinely exhausting, and it makes sense you're questioning it.

I actually built an app that might help you get some clarity — it's called the **AI Relationship Toxicity Analyzer**. You feed it your text conversation and it uses AI to detect patterns like {first_keyword} and other concerning behaviors. It gives you a scored report so you can see the dynamic clearly, not just feel it.

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

Wishing you clarity and peace. You deserve both. 💙""",

        """{platform_handle_prefix}{author} — what you're feeling is valid. The uncertainty around {first_keyword} is often a sign that something isn't right, even if it's hard to name.

I made an app called **AIRTA – AI Relationship Toxicity Analyzer** that reads your actual text conversations and uses AI to identify toxic patterns — things like gaslighting, blame shifting, love bombing, and control. A lot of people find it helps cut through the fog when they're not sure if what they're experiencing is "normal."

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

Take care of yourself. 🙏""",

        """This kind of situation is really hard to see clearly when you're inside it. What you're describing — particularly around {first_keyword} — shows up in a lot of unhealthy dynamics.

I built an app specifically for this: **AI Relationship Toxicity Analyzer**. You paste in your text history and it runs an AI analysis across 100+ psychological metrics including the {first_keyword} patterns you mentioned. It helped me (and a lot of others) finally see behaviors that felt invisible.

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

You're not overreacting. Trust that instinct.""",
    ],

    'youtube': [
        """Hey {platform_handle_prefix}{author}, thank you for sharing this. What you're describing about {first_keyword} really resonates with a lot of people watching this.

I actually built an app that might help you (and others dealing with similar situations) get clarity — it's called the **AI Relationship Toxicity Analyzer**. You paste in your text conversations and it uses AI to detect patterns like {first_keyword} and identify toxic dynamics with a scored report.

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

Wishing you clarity and strength. 💙""",

        """{platform_handle_prefix}{author} — this video about {first_keyword} is so important. So many people don't recognize these patterns until someone points them out.

I created **AIRTA – AI Relationship Toxicity Analyzer** specifically to help people analyze their text conversations using AI. It identifies toxic patterns (gaslighting, control, manipulation) and gives you concrete insights instead of just confusion.

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

Hope this helps someone find their way out of a difficult situation. 🙏""",

        """Your vulnerability in sharing this experience with {first_keyword} is really powerful. This is exactly why I built something to help.

The **AI Relationship Toxicity Analyzer** app lets you analyze your actual text conversations with AI to identify patterns like {first_keyword} and other concerning behaviors. Sometimes seeing it in black and white helps you trust your instincts.

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

To anyone watching: you deserve healthy relationships. Don't settle for less.""",
    ],

    'tiktok': [
        """This really hits home 💙 {platform_handle_prefix}{author} what you're describing with {first_keyword} is more common than people realize.

I built an app called **AI Relationship Toxicity Analyzer** that analyzes your text convos with AI to spot toxic patterns like {first_keyword}. Sometimes you need to see it to believe it.

🔗 Android: {android_link}
🔗 iOS: {ios_link}
🔗 Demo: {demo_link}

#relationshiptoxicity #toxicrelationships #mentalhealth""",

        """The fact that you're recognizing {first_keyword} is HUGE {platform_handle_prefix}{author} 👏 That's the first step most people miss.

I made **AIRTA** to help people analyze their text conversations with AI and identify toxic patterns. It scores behaviors across 100+ metrics so you have actual data, not just gut feelings.

🔗 Android: {android_link}
🔗 iOS: {ios_link}
🔗 Demo: {demo_link}

Trust yourself. You know what you need. ✨""",

        """Normalize analyzing your relationships with actual data 📊 {platform_handle_prefix}{author} what you're experiencing with {first_keyword} deserves to be examined properly.

**AI Relationship Toxicity Analyzer** app reads your texts and uses AI to identify toxic patterns — gaslighting, manipulation, control, love bombing, etc.

🔗 Android: {android_link}
🔗 iOS: {ios_link}
🔗 Demo: {demo_link}

You deserve clarity, not confusion 💙""",
    ],

    'x': [
        """What you're describing with {first_keyword} is a real pattern, not just your imagination. {platform_handle_prefix}{author}

I built **AI Relationship Toxicity Analyzer** to help people get objective analysis of their text conversations. AI identifies toxic patterns and gives you scored insights.

Android: {android_link}
iOS: {ios_link}
Demo: {demo_link}

You deserve better than confusion.""",

        """Recognizing {first_keyword} is the first step to clarity. {platform_handle_prefix}{author}

**AIRTA** analyzes your text conversations with AI across 100+ psychological metrics. Get concrete data on patterns you're sensing.

Android: {android_link}
iOS: {ios_link}
Demo: {demo_link}

Trust your instincts.""",

        """If you're experiencing {first_keyword}, it deserves proper analysis. {platform_handle_prefix}{author}

I made an app for this: **AI Relationship Toxicity Analyzer**. Paste your texts, get AI-powered insights on toxic patterns.

Android: {android_link}
iOS: {ios_link}
Demo: {demo_link}

Clarity is available.""",
    ],

    'twitter': [
        """What you're describing with {first_keyword} is a real pattern, not just your imagination. {platform_handle_prefix}{author}

I built **AI Relationship Toxicity Analyzer** to help people get objective analysis of their text conversations. AI identifies toxic patterns and gives you scored insights.

Android: {android_link}
iOS: {ios_link}
Demo: {demo_link}

You deserve better than confusion.""",

        """Recognizing {first_keyword} is the first step to clarity. {platform_handle_prefix}{author}

**AIRTA** analyzes your text conversations with AI across 100+ psychological metrics. Get concrete data on patterns you're sensing.

Android: {android_link}
iOS: {ios_link}
Demo: {demo_link}

Trust your instincts.""",

        """If you're experiencing {first_keyword}, it deserves proper analysis. {platform_handle_prefix}{author}

I made an app for this: **AI Relationship Toxicity Analyzer**. Paste your texts, get AI-powered insights on toxic patterns.

Android: {android_link}
iOS: {ios_link}
Demo: {demo_link}

Clarity is available.""",
    ],

    'facebook': [
        """Hey {author}, I'm really sorry you're going through this. What you're describing sounds genuinely exhausting, and it makes sense you're questioning it.

I actually built an app that might help you get some clarity — it's called the **AI Relationship Toxicity Analyzer**. You feed it your text conversation and it uses AI to detect patterns like {first_keyword} and other concerning behaviors. It gives you a scored report so you can see the dynamic clearly, not just feel it.

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

Wishing you clarity and peace. You deserve both. 💙""",

        """{author} — what you're feeling is valid. The uncertainty around {first_keyword} is often a sign that something isn't right, even if it's hard to name.

I made an app called **AIRTA – AI Relationship Toxicity Analyzer** that reads your actual text conversations and uses AI to identify toxic patterns — things like gaslighting, blame shifting, love bombing, and control. A lot of people find it helps cut through the fog when they're not sure if what they're experiencing is "normal."

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

Take care of yourself. 🙏""",

        """This kind of situation is really hard to see clearly when you're inside it. What you're describing — particularly around {first_keyword} — shows up in a lot of unhealthy dynamics.

I built an app specifically for this: **AI Relationship Toxicity Analyzer**. You paste in your text history and it runs an AI analysis across 100+ psychological metrics including the {first_keyword} patterns you mentioned. It helped me (and a lot of others) finally see behaviors that felt invisible.

Android: {android_link}
iOS: {ios_link}
Demo APK: {demo_link}

You're not overreacting. Trust that instinct.""",
    ],
}


def _get_template_index(post_id: str, num_templates: int) -> int:
    """
    Get template index based on post_id hash.
    Ensures same post always gets same template, but different posts get variety.
    
    Args:
        post_id: Unique post identifier
        num_templates: Number of available templates
        
    Returns:
        Template index (0 to num_templates-1)
    """
    hash_value = int(hashlib.md5(post_id.encode()).hexdigest(), 16)
    return hash_value % num_templates


def _extract_first_keyword(keyword_matches: Any) -> str:
    """
    Extract the first keyword from keyword_matches.
    
    Args:
        keyword_matches: List, dict, or JSON string of keyword matches
        
    Returns:
        First keyword string or fallback
    """
    if keyword_matches is None:
        return "these patterns"
    
    # Handle JSON string
    if isinstance(keyword_matches, str):
        try:
            keyword_matches = json.loads(keyword_matches)
        except (json.JSONDecodeError, TypeError):
            # If it's a plain string, use it directly
            return keyword_matches
    
    # Handle list
    if isinstance(keyword_matches, (list, tuple)) and len(keyword_matches) > 0:
        first = keyword_matches[0]
        # If it's a dict, try to get a keyword field
        if isinstance(first, dict):
            return first.get('keyword', first.get('word', first.get('match', 'these patterns')))
        return str(first)
    
    # Handle dict
    if isinstance(keyword_matches, dict):
        keys = list(keyword_matches.keys())
        if keys:
            return str(keys[0])
    
    return "these patterns"


def _get_platform_prefix(platform: str) -> str:
    """Get the appropriate handle prefix for a platform."""
    return PLATFORM_PREFIXES.get(platform.lower().strip(), '@')


def generate(post_dict: Dict[str, Any]) -> str:
    """
    Generate a draft reply for a post.
    Uses post_id hash to deterministically select template (same post = same template).
    
    Args:
        post_dict: Post data with keys: id, platform, author, keyword_matches
        
    Returns:
        Draft reply string
        
    Raises:
        ValueError: If required fields are missing
    """
    # Validate required fields
    required = {'id', 'platform', 'author'}
    missing = required - set(post_dict.keys())
    if missing:
        raise ValueError(f"Missing required fields: {missing}")
    
    platform = post_dict['platform'].lower().strip()
    post_id = post_dict['id']
    author = post_dict['author'] or 'there'
    keyword_matches = post_dict.get('keyword_matches')
    
    # Get templates for platform (fallback to reddit if unknown)
    templates = TEMPLATES.get(platform, TEMPLATES['reddit'])
    
    # Select template based on post_id hash
    template_index = _get_template_index(post_id, len(templates))
    template = templates[template_index]
    
    # Extract first keyword
    first_keyword = _extract_first_keyword(keyword_matches)
    
    # Get platform prefix
    platform_handle_prefix = _get_platform_prefix(platform)
    
    # Format template
    reply = template.format(
        author=author,
        platform_handle_prefix=platform_handle_prefix,
        first_keyword=first_keyword,
        android_link=ANDROID_LINK,
        ios_link=IOS_LINK,
        demo_link=DEMO_LINK,
    )
    
    return reply


def regenerate(post_dict: Dict[str, Any], variant: Optional[int] = None) -> str:
    """
    Force a different template variant.
    
    Args:
        post_dict: Post data
        variant: Template index to force (0, 1, or 2). If None, cycles to next variant.
        
    Returns:
        Draft reply string
    """
    platform = post_dict.get('platform', 'reddit').lower().strip()
    templates = TEMPLATES.get(platform, TEMPLATES['reddit'])
    
    if variant is None:
        # Get current index and cycle to next
        current_index = _get_template_index(post_dict['id'], len(templates))
        variant = (current_index + 1) % len(templates)
    
    # Clamp to valid range
    variant = max(0, min(len(templates) - 1, variant))
    template = templates[variant]
    
    # Extract values
    author = post_dict.get('author') or 'there'
    keyword_matches = post_dict.get('keyword_matches')
    first_keyword = _extract_first_keyword(keyword_matches)
    platform_handle_prefix = _get_platform_prefix(platform)
    
    # Format template
    reply = template.format(
        author=author,
        platform_handle_prefix=platform_handle_prefix,
        first_keyword=first_keyword,
        android_link=ANDROID_LINK,
        ios_link=IOS_LINK,
        demo_link=DEMO_LINK,
    )
    
    return reply


def get_all_variants(post_dict: Dict[str, Any]) -> List[str]:
    """
    Get all template variants for a post.
    Useful for reviewing options before sending.
    
    Args:
        post_dict: Post data
        
    Returns:
        List of all template variants
    """
    platform = post_dict.get('platform', 'reddit').lower().strip()
    templates = TEMPLATES.get(platform, TEMPLATES['reddit'])
    
    author = post_dict.get('author') or 'there'
    keyword_matches = post_dict.get('keyword_matches')
    first_keyword = _extract_first_keyword(keyword_matches)
    platform_handle_prefix = _get_platform_prefix(platform)
    
    variants = []
    for template in templates:
        reply = template.format(
            author=author,
            platform_handle_prefix=platform_handle_prefix,
            first_keyword=first_keyword,
            android_link=ANDROID_LINK,
            ios_link=IOS_LINK,
            demo_link=DEMO_LINK,
        )
        variants.append(reply)
    
    return variants


def estimate_length(post_dict: Dict[str, Any]) -> int:
    """
    Estimate the character length of the generated reply.
    Useful for platforms with character limits.
    
    Args:
        post_dict: Post data
        
    Returns:
        Estimated character count
    """
    reply = generate(post_dict)
    return len(reply)


def is_within_limit(post_dict: Dict[str, Any], limit: int = 280) -> bool:
    """
    Check if generated reply is within a character limit.
    
    Args:
        post_dict: Post data
        limit: Character limit (default 280 for X/Twitter)
        
    Returns:
        True if within limit
    """
    return estimate_length(post_dict) <= limit


# ---------------------------------------------------------------------------
# Class wrapper
# ---------------------------------------------------------------------------

class ReplyGenerator:
    """Thin object wrapper around the module-level reply functions."""

    def generate(self, post_dict):
        return generate(post_dict)

    def regenerate(self, post_dict, variant=None):
        return regenerate(post_dict, variant)
