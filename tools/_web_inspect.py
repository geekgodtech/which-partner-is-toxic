import sys
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    lines = f.readlines()

print('=== Language / i18n related HTML ===')
for i, l in enumerate(lines, start=1):
    ll = l.lower()
    if any(kw in ll for kw in ['data-lang', 'setlang', 'changelang', 'lang-btn', 'lang_btn',
                                 'locale', 'flag', 'language-btn', 'lang-selector',
                                 'id="lang', 'lang-bar', 'lang-row', 'setlocale']):
        print(f'{i}: {l.rstrip()}')

print()
print('=== generateMath / initMath / DOMContentLoaded ===')
for i, l in enumerate(lines, start=1):
    ll = l.lower()
    if any(kw in ll for kw in ['generatemath', 'initmath', 'domcontentloaded', 'window.onload',
                                 'addeventlistener.*load', 'init()']):
        print(f'{i}: {l.rstrip()}')

print()
print('=== Script tag location ===')
for i, l in enumerate(lines, start=1):
    if '<script' in l.lower() or '</script>' in l.lower():
        print(f'{i}: {l.rstrip()}')
