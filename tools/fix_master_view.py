#!/usr/bin/env python3
"""Fix AppBar spacing in ToxicityAnalyzerMasterView for narrow screens"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\toxicity_analyzer_master_view.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Update the actions spacing to use isNarrow
old_code = '''        actions: [
          const DarkModeSwitch(),
          const SizedBox(width: 8),
          const LanguageSelector(),
          const SizedBox(width: 8),
          PopupMenuButton<String>('''

new_code = '''        actions: [
          const DarkModeSwitch(),
          SizedBox(width: isNarrow ? 4 : 8),
          const LanguageSelector(),
          SizedBox(width: isNarrow ? 4 : 8),
          PopupMenuButton<String>('''

content = content.replace(old_code, new_code)

# Also reduce the trailing SizedBox
old_trailing = '''          const SizedBox(width: 4),
        ],'''

new_trailing = '''          SizedBox(width: isNarrow ? 2 : 4),
        ],'''

content = content.replace(old_trailing, new_trailing)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed toxicity_analyzer_master_view.dart - reduced AppBar spacing on narrow screens")
