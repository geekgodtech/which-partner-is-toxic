import sys
sys.stdout.reconfigure(encoding='utf-8')

path = r'C:\My Projects\AIRTA\lib\widgets\toxicity_analyzer_master_view.dart'
with open(path, encoding='utf-8') as f:
    content = f.read()

# 1. Add provider + controller imports after flutter/material.dart line
OLD_IMPORTS = "import 'package:flutter/material.dart';\nimport 'package:url_launcher/url_launcher.dart';"
NEW_IMPORTS = "import 'package:flutter/material.dart';\nimport 'package:provider/provider.dart';\nimport 'package:url_launcher/url_launcher.dart';\nimport 'package:airta/controllers/toxicity_analyzer_controller.dart';"

if OLD_IMPORTS not in content:
    print('ERROR: import block not found')
    print(repr(content[:200]))
    sys.exit(1)

content = content.replace(OLD_IMPORTS, NEW_IMPORTS, 1)
print('Imports patched OK')

# 2. Fix the membership case to wrap with Provider.value
OLD_CASE = """          case 'membership':
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const MembershipLandingPage()),
            );
            break;"""
NEW_CASE = """          case 'membership':
            final controller = context.read<ToxicityAnalyzerController>();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => Provider.value(
                  value: controller,
                  child: const MembershipLandingPage(),
                ),
              ),
            );
            break;"""

if OLD_CASE not in content:
    print('ERROR: membership case not found')
    # Show the relevant section
    idx = content.find("case 'membership'")
    print(repr(content[idx:idx+200]))
    sys.exit(1)

content = content.replace(OLD_CASE, NEW_CASE, 1)
print('Membership case patched OK')

with open(path, 'w', encoding='utf-8') as f:
    f.write(content)
print('Saved.')
