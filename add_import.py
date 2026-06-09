#!/usr/bin/env python3

with open(r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Add import if not present
if 'discord_settings_page.dart' not in content:
    content = content.replace(
        "import 'package:airta/l10n/app_localizations.dart';",
        "import 'package:airta/l10n/app_localizations.dart';\nimport 'discord_settings_page.dart';"
    )
    with open(r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Added import')
else:
    print('Import already present')
