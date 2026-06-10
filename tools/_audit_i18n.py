import sys, re
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    content = f.read()

# Find all data-i18n keys
tagged = re.findall(r'data-i18n="([^"]+)"', content)
print('=== Keys already tagged with data-i18n ===')
for k in tagged:
    print(' ', k)

print()
# Extract EN translation keys
script_start = content.find('const TRANSLATIONS')
en_start = content.find('en: {', script_start)
en_end = content.find('  },\n  es:', en_start)
en_section = content[en_start:en_end]
en_keys = re.findall(r'^\s+(\w+):', en_section, re.MULTILINE)
print('=== EN translation keys ===')
for k in en_keys:
    print(' ', k)
