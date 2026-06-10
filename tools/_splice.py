import sys
sys.stdout.reconfigure(encoding='utf-8')

with open(r'C:\My Projects\AIRTA\lib\widgets\user_submitted_packs_page.dart', encoding='utf-8') as f:
    content = f.read()

with open(r'C:\My Projects\AIRTA\tools\_packs_replacement.dart', encoding='utf-8') as f:
    replacement = f.read()

marker = '\n/// Displays the list of packs for a specific language in a scrollable table.'
idx = content.find(marker)
if idx == -1:
    print('ERROR: marker not found')
    sys.exit(1)

keep_before = content[:idx]
new_content = keep_before + '\n' + replacement

with open(r'C:\My Projects\AIRTA\lib\widgets\user_submitted_packs_page.dart', 'w', encoding='utf-8') as f:
    f.write(new_content)

print(f'Done. Kept {len(keep_before)} chars, new total {len(new_content)} chars')
