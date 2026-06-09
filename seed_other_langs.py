"""Seed all non-English ARBs with English placeholder values for new pack keys."""
import json
from pathlib import Path

L10N = Path(r'C:\My Projects\AIRTA\lib\l10n')
LANGS = ['ar','de','es','fr','hi','it','ja','ko','nl','pl','pt','ru','tr','uk','zh']

en_arb = json.load(open(L10N / 'app_en.arb', encoding='utf-8'))
new_keys = [k for k in en_arb if k.startswith('metric_narcissist_') or k.startswith('metric_serial_killer_') or k in ('packNarcissistLabel', 'packSerialKillerLabel')]
print(f"New keys to seed: {len(new_keys)}")

for lc in LANGS:
    path = L10N / f'app_{lc}.arb'
    arb = json.load(open(path, encoding='utf-8'))
    for k in new_keys:
        if k not in arb:
            arb[k] = en_arb[k]
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(arb, f, ensure_ascii=False, indent=2)
        f.write('\n')
    print(f"  {lc}: seeded")

print("Done")
