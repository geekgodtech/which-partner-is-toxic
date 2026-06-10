#!/usr/bin/env python3
"""Make the LanguageSelector wider in the hamburger menu"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\toxicity_analyzer_master_view.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Replace the LanguageSelector line with a SizedBox wrapper
old_code = '                const LanguageSelector(),'
new_code = '''                SizedBox(
                  width: 100,
                  child: const LanguageSelector(),
                ),'''

content = content.replace(old_code, new_code)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Made LanguageSelector wider (100px) in hamburger menu")
