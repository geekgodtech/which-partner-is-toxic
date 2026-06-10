"""
l10n_audit.py — Comprehensive localization audit for AIRTA.

Checks EVERY language ARB against EN and reports:
1. Missing keys (key exists in EN, absent in lang)
2. Untranslated keys (value in lang == value in EN)
3. Placeholder/broken values (contains ?? or is empty)

Outputs a summary table + detailed per-language report.
Run: python tools/l10n_audit.py
"""
import json, os, re, sys
sys.stdout.reconfigure(encoding='utf-8')

ARB_DIR = r'C:\My Projects\AIRTA\lib\l10n'
LANGS = ['ar','de','es','fr','hi','it','ja','ko','nl','pl','pt','ru','tr','uk','zh']

# Load EN
with open(os.path.join(ARB_DIR, 'app_en.arb'), encoding='utf-8-sig') as f:
    en = json.load(f)
en_keys = [k for k in en if not k.startswith('@')]

# Categorize keys by group for readable output
def key_group(k):
    if re.match(r'metric_\d+_(name|description)$', k):       return 'standard_metrics (1-100)'
    if re.match(r'metric_good_\d+_(name|description)$', k):  return 'good_pack_metrics'
    if re.match(r'metric_bad_\d+_(name|description)$', k):   return 'bad_pack_metrics'
    if re.match(r'metric_ugly_\d+_(name|description)$', k):  return 'ugly_pack_metrics'
    if re.match(r'metric_narcissist_\d+_(name|description)$', k): return 'narcissist_pack_metrics'
    if re.match(r'metric_serial_killer_\d+_(name|description)$', k): return 'serial_killer_pack_metrics'
    if k.startswith('discord'):   return 'discord'
    if k.startswith('purchase') or k.startswith('unlock') or k.startswith('benefit'): return 'purchase/unlock'
    if k.startswith('tile'):      return 'dashboard_tiles'
    if k.startswith('about') or k.startswith('contact') or k.startswith('privacy') or k.startswith('terms'): return 'about/contact'
    return 'ui_strings'

results = {}
for lang in LANGS:
    path = os.path.join(ARB_DIR, f'app_{lang}.arb')
    with open(path, encoding='utf-8-sig') as f:
        data = json.load(f)

    missing, untranslated, broken = [], [], []
    for k in en_keys:
        en_val = en[k]
        if k not in data:
            missing.append(k)
        else:
            lang_val = data[k]
            if lang_val == en_val:
                untranslated.append(k)
            if isinstance(lang_val, str) and ('??' in lang_val or lang_val.strip() == ''):
                broken.append(k)

    results[lang] = dict(missing=missing, untranslated=untranslated, broken=broken, data=data)

# ── Summary table ─────────────────────────────────────────────────────────────
print(f"{'Lang':<6} {'Missing':>8} {'Untrans':>9} {'Broken':>7}  {'Status'}")
print('-' * 55)
for lang in LANGS:
    r = results[lang]
    m, u, b = len(r['missing']), len(r['untranslated']), len(r['broken'])
    status = 'OK' if (m + u + b) == 0 else ('NEEDS WORK' if (m + u + b) > 50 else 'PARTIAL')
    print(f"{lang:<6} {m:>8} {u:>9} {b:>7}  {status}")

print()
print(f'Total EN keys: {len(en_keys)}')

# ── Detailed breakdown by group ───────────────────────────────────────────────
print()
print('=' * 70)
print('UNTRANSLATED KEYS BY GROUP (languages that still have EN values)')
print('=' * 70)

# Group all untranslated keys across all langs
group_lang_counts = {}  # group -> {lang: count}
for lang in LANGS:
    for k in results[lang]['untranslated']:
        g = key_group(k)
        if g not in group_lang_counts:
            group_lang_counts[g] = {}
        group_lang_counts[g][lang] = group_lang_counts[g].get(lang, 0) + 1

for group, lang_counts in sorted(group_lang_counts.items()):
    print(f'\n  [{group}]')
    for lang, count in sorted(lang_counts.items(), key=lambda x: -x[1]):
        total_in_group = len([k for k in en_keys if key_group(k) == group])
        print(f'    {lang}: {count}/{total_in_group} untranslated')

# ── Per-language detail for non-metric untranslated strings ──────────────────
print()
print('=' * 70)
print('NON-METRIC UNTRANSLATED UI STRINGS (sample, per language)')
print('=' * 70)
ui_groups = {'discord', 'purchase/unlock', 'dashboard_tiles', 'about/contact', 'ui_strings'}
for lang in LANGS:
    ui_untrans = [k for k in results[lang]['untranslated'] if key_group(k) in ui_groups]
    if ui_untrans:
        print(f'\n  {lang} ({len(ui_untrans)} untranslated UI strings):')
        for k in ui_untrans[:10]:
            print(f'    {k}: {repr(en[k])[:60]}')
        if len(ui_untrans) > 10:
            print(f'    ... and {len(ui_untrans)-10} more')

# ── Broken values ─────────────────────────────────────────────────────────────
all_broken = [(lang, k) for lang in LANGS for k in results[lang]['broken']]
if all_broken:
    print()
    print('=' * 70)
    print('BROKEN VALUES (empty or ?? placeholders)')
    print('=' * 70)
    for lang, k in all_broken:
        print(f'  {lang}: {k} = {repr(results[lang]["data"][k])[:60]}')
else:
    print('\nNo broken (?? / empty) values found across any language.')
