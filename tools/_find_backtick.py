import sys
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    content = f.read()

script_start = content.find('<script>') + len('<script>')
script_end = content.find('</script>')
script = content[script_start:script_end]
lines = script.splitlines()

# Track backtick balance
in_template = False
depth = 0
for i, line in enumerate(lines, start=1):
    for j, ch in enumerate(line):
        if ch == '`':
            in_template = not in_template
            if not in_template:
                pass  # closed
            else:
                pass  # opened
    if in_template:
        print(f'After line {i}, template literal is OPEN: {line.strip()[:80]}')

# Find METRICS descriptions with unescaped apostrophes
print()
print('=== METRICS with unescaped apostrophes (single-quoted strings) ===')
# The METRICS array uses single quotes for description values
# Find pattern: description: 'text's text'
import re
metrics_section = script[:script.index('let conversationText')]
for i, line in enumerate(metrics_section.splitlines(), start=1):
    if "description: '" in line:
        # Count single quotes
        desc_start = line.index("description: '") + len("description: '")
        desc_content = line[desc_start:]
        # Find where string ends (should be at next ', before the } or newline)
        sq_count = desc_content.count("'")
        if sq_count % 2 == 0 and sq_count > 0:
            print(f'  Line {i}: OK ({sq_count} quotes) -- {line.strip()[:100]}')
        elif sq_count % 2 == 1 or sq_count == 0:
            if sq_count > 1:
                print(f'  Line {i}: POSSIBLE ISSUE ({sq_count} single quotes): {line.strip()[:100]}')
