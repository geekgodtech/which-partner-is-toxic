import sys
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    lines = f.readlines()

# Show lines around key elements
keywords = ['<script', '</body>', '</html>', 'id="analyzeBtn"',
            'id="inputPanel"', 'id="mathQuestion"', 'id="mathAnswer"', '<body']
for i, l in enumerate(lines, start=1):
    for kw in keywords:
        if kw in l:
            print(f'{i}: {l.rstrip()[:120]}')
            break

# Show TRANSLATIONS object structure (first 50 lines of it)
print()
print('=== TRANSLATIONS starts at line 827 ===')
for i, l in enumerate(lines[826:876], start=827):
    print(f'{i}: {l.rstrip()[:120]}')
