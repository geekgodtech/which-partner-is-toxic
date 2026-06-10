import sys, re, json
sys.stdout.reconfigure(encoding='utf-8')

path = r'C:\My Projects\AIRTA\docs\index.html'
with open(path, encoding='utf-8') as f:
    content = f.read()

with open(r'C:\My Projects\AIRTA\tools\_lang_translations.json', encoding='utf-8') as f:
    LANG_DATA = json.load(f)

for lang_code, translations in LANG_DATA.items():
    lang_start = content.find(f'\n  {lang_code}: {{')
    if lang_start == -1:
        print(f'{lang_code}: NOT FOUND')
        continue

    # Find the closing },  of this lang block
    close_match = re.search(r'\n  \},', content[lang_start + 5:])
    if not close_match:
        print(f'{lang_code}: close not found')
        continue
    close_pos = lang_start + 5 + close_match.start()

    # Build insertion string — escape single quotes in values
    lines = []
    for k, v in translations.items():
        v_esc = v.replace("'", "\\'")
        lines.append(f"    {k}: '{v_esc}',")
    insert_str = '\n' + '\n'.join(lines) + '\n'

    content = content[:close_pos] + insert_str + content[close_pos:]
    print(f'{lang_code}: {len(translations)} keys injected OK')

with open(path, 'w', encoding='utf-8') as f:
    f.write(content)
print('\nSaved.')
