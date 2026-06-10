#!/usr/bin/env python3
"""Fix contrast issues in dashboard tiles for light mode"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Fix 1: _MyAccountTile - change hardcoded background to theme-aware color
old_myaccount_bg = "color: const Color(0xFF1a2a3a).withOpacity(0.85),"
new_myaccount_bg = "color: colorScheme.secondaryContainer.withOpacity(0.72),"
content = content.replace(old_myaccount_bg, new_myaccount_bg)

# Fix 2: _MyAccountTile - change hardcoded badge background
old_myaccount_badge_bg = "color: const Color(0xFF2a4a6a),"
new_myaccount_badge_bg = "color: colorScheme.primary.withOpacity(0.8),"
content = content.replace(old_myaccount_badge_bg, new_myaccount_badge_bg)

# Fix 3: _MyAccountTile - change hardcoded tier text color
old_myaccount_tier = """style: const TextStyle(
                              color: Color(0xFF60a0ff),"""
new_myaccount_tier = """style: TextStyle(
                              color: colorScheme.primary,"""
content = content.replace(old_myaccount_tier, new_myaccount_tier)

# Fix 4: _MyAccountTile - change hardcoded icon colors
old_myaccount_icon = "color: const Color(0xFF60a0ff),"
new_myaccount_icon = "color: colorScheme.primary,"
content = content.replace(old_myaccount_icon, new_myaccount_icon)

# Fix 5: _MyAccountTile - arrow icon in badge
old_myaccount_arrow = "color: Color(0xFF60a0ff), size: 10"
new_myaccount_arrow = "color: colorScheme.onPrimary, size: 10"
content = content.replace(old_myaccount_arrow, new_myaccount_arrow)

# Fix 6: _ReferFriendsTile - change hardcoded background
old_referral_bg = "color: const Color(0xFF2a1a3a).withOpacity(0.85),"
new_referral_bg = "color: colorScheme.tertiaryContainer.withOpacity(0.72),"
content = content.replace(old_referral_bg, new_referral_bg)

# Fix 7: _ReferFriendsTile - change hardcoded icon color
old_referral_icon = "color: const Color(0xFFc080ff),"
new_referral_icon = "color: colorScheme.tertiary,"
content = content.replace(old_referral_icon, new_referral_icon)

# Fix 8: _ReferFriendsTile - change empty progress dot color from dark hardcoded to theme
old_referral_dot = "color: i < credits\n                                    ? const Color(0xFF40cc40)\n                                    : const Color(0xFF2a2a5a),"
new_referral_dot = "color: i < credits\n                                    ? const Color(0xFF40cc40)\n                                    : colorScheme.onSurface.withOpacity(0.2),"
content = content.replace(old_referral_dot, new_referral_dot)

# Fix 9: _ReferFriendsTile - badge background
old_referral_badge = "color: const Color(0xFF6040aa),"
new_referral_badge = "color: colorScheme.tertiary,"
content = content.replace(old_referral_badge, new_referral_badge)

# Fix 10: _ReferFriendsTile - badge text color
old_referral_text = """style: const TextStyle(
                              color: Colors.white,"""
new_referral_text = """style: TextStyle(
                              color: colorScheme.onTertiary,"""
content = content.replace(old_referral_text, new_referral_text)

# Fix 11: _UserSubmittedPacksTile - change hardcoded background
old_community_bg = "color: const Color(0xFF1a2a3a).withOpacity(0.85),"
new_community_bg = "color: colorScheme.secondaryContainer.withOpacity(0.72),"
content = content.replace(old_community_bg, new_community_bg)

# Fix 12: _UserSubmittedPacksTile - change hardcoded icon color
old_community_icon = "color: const Color(0xFF60a0ff),"
new_community_icon = "color: colorScheme.secondary,"
content = content.replace(old_community_icon, new_community_icon)

# Fix 13: _UserSubmittedPacksTile - badge background
old_community_badge = "color: const Color(0xFF4060aa),"
new_community_badge = "color: colorScheme.secondary,"
content = content.replace(old_community_badge, new_community_badge)

# Fix 14: _UserSubmittedPacksTile - badge text color
old_community_text = """style: TextStyle(
                            color: Colors.white,"""
new_community_text = """style: TextStyle(
                            color: colorScheme.onSecondary,"""
content = content.replace(old_community_text, new_community_text)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed contrast issues in dashboard tiles:")
print("1. _MyAccountTile: background -> secondaryContainer, icon -> primary")
print("2. _ReferFriendsTile: background -> tertiaryContainer, icon -> tertiary")
print("3. _UserSubmittedPacksTile: background -> secondaryContainer, icon -> secondary")
print("All tiles now use theme-aware colors for light/dark mode compatibility")
