import sys, re
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    content = f.read()

# Find all getElementById calls in the script
script_start = content.find('<script>') + len('<script>')
script_end = content.find('</script>')
script = content[script_start:script_end]

# IDs referenced via getElementById
get_ids = re.findall(r"getElementById\('([^']+)'\)", script)
# IDs defined in HTML
def_ids = re.findall(r'\bid="([^"]+)"', content)
def_ids_set = set(def_ids)

print('=== getElementById calls in script ===')
for gid in sorted(set(get_ids)):
    found = gid in def_ids_set
    print(f"  {'OK' if found else 'MISSING!'}: #{gid}")

print()
print('=== Top-level const DOM refs (lines 481-491) ===')
lines = script.splitlines()
for i, l in enumerate(lines, start=1):
    if 'document.getElementById' in l and 'const ' in l:
        print(f'  {i}: {l.strip()[:100]}')

# Also check for any try-it anchor
idx = content.find('id="try-it"')
print()
print(f'id="try-it" in HTML: {idx != -1} (at char {idx})')
idx2 = content.find('href="#try-it"')
print(f'href="#try-it" in HTML: {idx2 != -1}')
