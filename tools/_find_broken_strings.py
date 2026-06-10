import sys, re
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    content = f.read()

script_start = content.find('<script>') + len('<script>')
script_end = content.find('</script>')
script = content[script_start:script_end]
lines = script.splitlines()

# Find all lines with description: '...' that contain an ASCII apostrophe (U+0027) 
# inside the string
print('Lines with unescaped ASCII apostrophe inside single-quoted description strings:')
for i, line in enumerate(lines, start=1):
    if "description: '" in line:
        # Extract the value after description: '
        m = re.search(r"description: '(.+)", line)
        if m:
            desc_val = m.group(1)
            # Check for ASCII apostrophe in the value (the string should end at the last ')
            # but if there's a ' before that, it's an unescaped one
            # Find positions of ASCII single quotes in desc_val
            apostrophe_positions = [j for j, ch in enumerate(desc_val) if ch == "'"]
            if len(apostrophe_positions) >= 2:
                # First and last should be string delimiters; if there are more, those are the bugs
                inner_apostrophes = apostrophe_positions[:-1]  # exclude the closing '
                if len(inner_apostrophes) > 0:
                    print(f'  Line {i}: {line.strip()[:120]}')
                    print(f'    Apostrophe positions: {apostrophe_positions}')
