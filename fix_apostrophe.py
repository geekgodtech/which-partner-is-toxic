#!/usr/bin/env python3

with open(r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix the apostrophe issue
old_text = """                      Text(
                        'Once you've created your Discord bot following the steps above, enter your bot token in the settings to start analyzing.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),"""

new_text = '''                      Text(
                        "Once you've created your Discord bot following the steps above, enter your bot token in the settings to start analyzing.",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),'''

if old_text in content:
    content = content.replace(old_text, new_text)
    with open(r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Fixed apostrophe')
else:
    print('ERROR - Text not found')
