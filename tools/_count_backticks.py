import sys
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    content = f.read()

script_start = content.find('<script>') + len('<script>')
script_end = content.find('</script>')
script = content[script_start:script_end]

# Find all backtick positions with their line numbers
lines = script.splitlines()
positions = []
for i, line in enumerate(lines, start=1):
    for j, ch in enumerate(line):
        if ch == '`':
            positions.append((i, j, line.strip()[:80]))

print(f'Total backticks: {len(positions)}')
print()
# Show each backtick with open/close status
state = 'closed'
for idx, (line_no, col, ctx) in enumerate(positions):
    state = 'OPEN' if idx % 2 == 0 else 'close'
    print(f'{idx+1:3}. Line {line_no:4}, col {col:3} [{state:5}] {ctx}')
