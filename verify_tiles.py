import re

with open(r'C:\My Projects\AIRTA\lib\controllers\toxicity_analyzer_controller.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Count base metrics
base_match = re.search(r'List<PsychologicalMetric> _buildMetricCatalog\(\)', content)
if base_match:
    catalog_section = content[base_match.start():]
    names = re.findall(r"id: 'metric_\d+'", catalog_section[:catalog_section.index('_buildPackGoodCatalog') if '_buildPackGoodCatalog' in catalog_section else len(catalog_section)])
    print(f'Base metrics: {len(names)}')
else:
    print('Could not find _buildMetricCatalog')

# Check pack default values
for line in content.split('\n'):
    if 'isPackGoodUnlocked' in line or 'isPackBadUnlocked' in line or 'isPackUglyUnlocked' in line:
        if 'bool ' in line:
            print(f'  {line.strip()}')
