path = r'C:\My Projects\AIRTA\lib\l10n\app_ar.arb'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

# Check if there's a comma after packUglyLabel
if 'packUglyLabel"\n\n  "metric_good_1_name"' in content:
    print('Already has comma')
elif 'packUglyLabel"\n\n"metric_good_1_name"' in content:
    print('Missing comma')
else:
    print('Pattern not found')
