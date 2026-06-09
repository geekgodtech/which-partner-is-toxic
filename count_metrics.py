import re

with open(r'C:\My Projects\AIRTA\lib\controllers\metric_pack_catalogs.dart', 'r', encoding='utf-8') as f:
    content = f.read()

good_end = content.index('_buildPackBadCatalog')
bad_end  = content.index('_buildPackUglyCatalog')

good_section = content[:good_end]
bad_section  = content[good_end:bad_end]
ugly_section = content[bad_end:]

good_matches = re.findall(r"name: '([^']+)'", good_section)
bad_matches  = re.findall(r"name: '([^']+)'", bad_section)
ugly_matches = re.findall(r"name: '([^']+)'", ugly_section)

print(f'Good pack: {len(good_matches)} metrics')
print(f'Bad pack:  {len(bad_matches)} metrics')
print(f'Ugly pack: {len(ugly_matches)} metrics')
print(f'Total:     {len(good_matches)+len(bad_matches)+len(ugly_matches)} metrics')
