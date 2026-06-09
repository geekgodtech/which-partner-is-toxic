#!/usr/bin/env python3

with open(r'C:\My Projects\AIRTA\lib\widgets\membership_landing_page.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Add import if not present
if 'discord_setup_help.dart' not in content:
    content = content.replace(
        "import 'package:flutter/material.dart';",
        "import 'package:flutter/material.dart';\nimport 'discord_setup_help.dart';"
    )
    with open(r'C:\My Projects\AIRTA\lib\widgets\membership_landing_page.dart', 'w', encoding='utf-8') as f:
        f.write(content)
    print('OK - Added import')
else:
    print('Import already present')
