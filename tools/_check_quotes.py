import sys
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    content = f.read()

# Find the script section
script_start = content.find('<script>') + len('<script>')
script_end = content.find('</script>')
script = content[script_start:script_end]

# Find any apostrophe-like characters in single-quoted strings
lines = script.splitlines()
print('Lines with curly quotes or unusual apostrophes in JS string context:')
for i, line in enumerate(lines, start=1):
    # Check for right single quotation mark U+2019 or left U+2018
    for pos, ch in enumerate(line):
        code = ord(ch)
        if code in (0x2018, 0x2019, 0x201A, 0x201B, 0x0060, 0xFF07):
            print(f'  Line {i}, pos {pos}: U+{code:04X} ({ch!r}) -- {line.strip()[:100]}')

# Also check template literals (backticks) used correctly
backtick_count = script.count('`')
print(f'\nBacktick count in script: {backtick_count} (should be even)')

# Check for unescaped single quotes inside single-quoted strings
# Look for patterns like: 'text's text'
import re
bad_patterns = re.findall(r"'[^'\n]*'s[^'\n]*'", script)
print(f'\nPotential unescaped apostrophe patterns: {len(bad_patterns)}')
for p in bad_patterns[:10]:
    print(f'  {repr(p[:80])}')
