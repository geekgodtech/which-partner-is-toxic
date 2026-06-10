import sys, re
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    content = f.read()

# Find the last key in each language section
for lang in ['es', 'fr', 'de', 'pt', 'it', 'ja', 'ko', 'zh', 'ar', 'hi', 'ru', 'nl', 'tr', 'pl', 'uk']:
    lang_start = content.find(f'\n  {lang}: {{')
    if lang_start == -1:
        print(f'{lang}: NOT FOUND')
        continue
    # Find end of this section (the closing },)
    # Look for },\n  next_lang or },\n};
    section = content[lang_start:lang_start+3000]
    # Find last key before closing
    keys = re.findall(r'^\s{4}(\w+):', section, re.MULTILINE)
    last_key = keys[-1] if keys else 'NONE'
    # Find the closing line
    close_match = re.search(r'\n  \},', section)
    close_pos = close_match.start() if close_match else -1
    last_line_before_close = section[section.rfind('\n', 0, close_pos):close_pos].strip() if close_pos > 0 else 'N/A'
    print(f'{lang}: last_key={last_key!r}, before_close={last_line_before_close[:80]!r}')
