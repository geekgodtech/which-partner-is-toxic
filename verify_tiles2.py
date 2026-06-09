import re

with open(r'C:\My Projects\AIRTA\lib\controllers\toxicity_analyzer_controller.dart', 'r', encoding='utf-8') as f:
    content = f.read()

start = content.index('List<PsychologicalMetric> _buildMetricCatalog()')
section = content[start:]
names = re.findall(r"name: '[^']+'", section)
print(f'Base metrics in catalog: {len(names)}')

# Pack defaults
for line in content.split('\n'):
    if 'bool isPackGoodUnlocked' in line or 'bool isPackBadUnlocked' in line or 'bool isPackUglyUnlocked' in line:
        print(f'  {line.strip()}')

print()
print('Expected tile count:')
print(f'  100 base + 1 custom tile + 1 good tile + 1 bad tile + 1 ugly tile = 104')
