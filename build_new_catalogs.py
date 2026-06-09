"""
Read new_pack_metrics.json and:
1. Append two new _build*Catalog() functions to metric_pack_catalogs.dart
2. Add all new ARB keys to app_en.arb
3. Add switch cases to app_localizations_extension.dart
4. Add getter stubs to app_localizations.dart (abstract class)
5. Add getter stubs to app_localizations_en.dart
"""
import json, re
from pathlib import Path

L10N = Path(r'C:\My Projects\AIRTA\lib\l10n')
CTRL = Path(r'C:\My Projects\AIRTA\lib\controllers\metric_pack_catalogs.dart')

data = json.load(open(r'C:\My Projects\AIRTA\new_pack_metrics.json', encoding='utf-8'))
sk_metrics   = data['serial_killer']   # list of {name, description}
narc_metrics = data['narcissist']

def escape_dart(s):
    return s.replace("\\", "\\\\").replace("'", "\\'")

# ── 1. Append catalog functions to metric_pack_catalogs.dart ─────────────────
def build_catalog_fn(fn_name, pack_prefix, metrics):
    lines = [f"\nList<PsychologicalMetric> {fn_name}() {{"]
    lines.append("  const defs = [")
    for m in metrics:
        n = escape_dart(m['name'])
        d = escape_dart(m['description'])
        lines.append(f"    (name: '{n}', description: '{d}'),")
    lines.append("  ];")
    lines.append("  return [")
    lines.append("    for (var i = 0; i < defs.length; i++)")
    lines.append("      PsychologicalMetric(")
    lines.append(f"        id: '{pack_prefix}_${{i + 1}}',")
    lines.append("        name: defs[i].name,")
    lines.append("        description: defs[i].description,")
    lines.append("        severityWeight: 3,")
    lines.append("      ),")
    lines.append("  ];")
    lines.append("}")
    return "\n".join(lines)

catalog_content = open(CTRL, encoding='utf-8').read().replace('\r\n', '\n')
catalog_content += "\n"
catalog_content += build_catalog_fn("_buildPackNarcissistCatalog", "narcissist", narc_metrics)
catalog_content += "\n"
catalog_content += build_catalog_fn("_buildPackSerialKillerCatalog", "serial_killer", sk_metrics)
catalog_content += "\n"
open(CTRL, 'w', encoding='utf-8', newline='\r\n').write(catalog_content)
print("metric_pack_catalogs.dart updated")

# ── 2. Add ARB entries to app_en.arb ────────────────────────────────────────
en_arb_path = L10N / 'app_en.arb'
en_arb = json.load(open(en_arb_path, encoding='utf-8'))

def add_arb_entries(arb, pack_prefix, metrics):
    for i, m in enumerate(metrics, 1):
        arb[f"metric_{pack_prefix}_{i}_name"] = m['name']
        arb[f"metric_{pack_prefix}_{i}_description"] = m['description']

add_arb_entries(en_arb, 'narcissist', narc_metrics)
add_arb_entries(en_arb, 'serial_killer', sk_metrics)

# Also add pack label strings for the accordion headers / sales tiles
en_arb['packNarcissistLabel'] = 'The Narcissist'
en_arb['packSerialKillerLabel'] = 'The Serial Killer'

with open(en_arb_path, 'w', encoding='utf-8') as f:
    json.dump(en_arb, f, ensure_ascii=False, indent=2)
    f.write('\n')
print("app_en.arb updated")

# ── 3. Add switch cases to app_localizations_extension.dart ─────────────────
ext_path = L10N / 'app_localizations_extension.dart'
ext = open(ext_path, encoding='utf-8').read().replace('\r\n', '\n')

# Update getMetricName/getMetricDescription to recognise new prefixes
old_name_check = (
    "    final bool isPack = metricId.startsWith('good_') ||\n"
    "        metricId.startsWith('bad_') ||\n"
    "        metricId.startsWith('ugly_');"
)
new_name_check = (
    "    final bool isPack = metricId.startsWith('good_') ||\n"
    "        metricId.startsWith('bad_') ||\n"
    "        metricId.startsWith('ugly_') ||\n"
    "        metricId.startsWith('narcissist_') ||\n"
    "        metricId.startsWith('serial_killer_');"
)
assert old_name_check in ext, "NAME CHECK NOT FOUND"
ext = ext.replace(old_name_check, new_name_check)

# Same for description method (it appears twice — replace both)
ext = ext.replace(old_name_check, new_name_check)  # no-op if already replaced

# Find the end of the switch statement (last 'default: return key;' line)
# and add new cases before the default
switch_tail = "  default:\n        return key; // Fallback to key if not found\n    }\n  }\n}"
assert switch_tail in ext, "SWITCH TAIL NOT FOUND"

def build_switch_cases(pack_prefix, count):
    lines = []
    for i in range(1, count + 1):
        lines.append(f"      case 'metric_{pack_prefix}_{i}_name':")
        lines.append(f"        return metric_{pack_prefix}_{i}_name;")
        lines.append(f"      case 'metric_{pack_prefix}_{i}_description':")
        lines.append(f"        return metric_{pack_prefix}_{i}_description;")
    return "\n".join(lines) + "\n"

new_cases = (
    build_switch_cases('narcissist', len(narc_metrics)) +
    build_switch_cases('serial_killer', len(sk_metrics))
)

ext = ext.replace(switch_tail, new_cases + switch_tail)
open(ext_path, 'w', encoding='utf-8', newline='\r\n').write(ext)
print("app_localizations_extension.dart updated")

# ── 4. Add abstract getters to app_localizations.dart ───────────────────────
loc_path = L10N / 'app_localizations.dart'
loc = open(loc_path, encoding='utf-8').read().replace('\r\n', '\n')

def build_abstract_getters(pack_prefix, count):
    lines = []
    for i in range(1, count + 1):
        lines.append(f"  String get metric_{pack_prefix}_{i}_name;")
        lines.append(f"  String get metric_{pack_prefix}_{i}_description;")
    return "\n".join(lines)

# Find the last metric getter to insert after
# We'll look for the last packUglyLabel getter definition and add after it
# Actually find end of abstract class body — look for 'String get packUglyLabel'
anchor = "  String get packUglyLabel;"
assert anchor in loc, "ANCHOR NOT FOUND in app_localizations.dart"

new_getters = (
    "  String get packUglyLabel;\n"
    "  String get packNarcissistLabel;\n"
    "  String get packSerialKillerLabel;\n" +
    build_abstract_getters('narcissist', len(narc_metrics)) + "\n" +
    build_abstract_getters('serial_killer', len(sk_metrics))
)
loc = loc.replace("  String get packUglyLabel;", new_getters, 1)
open(loc_path, 'w', encoding='utf-8', newline='\r\n').write(loc)
print("app_localizations.dart updated")

# ── 5. Add concrete getters to app_localizations_en.dart ────────────────────
en_dart_path = L10N / 'app_localizations_en.dart'
en_dart = open(en_dart_path, encoding='utf-8').read().replace('\r\n', '\n')

def build_en_getters(pack_prefix, metrics):
    lines = []
    for i, m in enumerate(metrics, 1):
        n = escape_dart(m['name'])
        d = escape_dart(m['description'])
        lines.append(f"  @override")
        lines.append(f"  String get metric_{pack_prefix}_{i}_name => '{n}';")
        lines.append(f"  @override")
        lines.append(f"  String get metric_{pack_prefix}_{i}_description => '{d}';")
    return "\n".join(lines)

anchor_en = "  @override\n  String get packUglyLabel =>"
# Find and expand
ugly_line_end = en_dart.index(anchor_en)
ugly_end = en_dart.index('\n', ugly_line_end) + 1
insert_pos = ugly_end

new_getters_en = (
    "  @override\n"
    "  String get packNarcissistLabel => 'The Narcissist';\n"
    "  @override\n"
    "  String get packSerialKillerLabel => 'The Serial Killer';\n" +
    build_en_getters('narcissist', narc_metrics) + "\n" +
    build_en_getters('serial_killer', sk_metrics) + "\n"
)
en_dart = en_dart[:insert_pos] + new_getters_en + en_dart[insert_pos:]
open(en_dart_path, 'w', encoding='utf-8', newline='\r\n').write(en_dart)
print("app_localizations_en.dart updated")

print("\nAll done. Next: update other 15 language ARB files + run flutter gen-l10n")
print("New pack keys added:")
print(f"  narcissist: {len(narc_metrics)*2} strings ({len(narc_metrics)} name + {len(narc_metrics)} description)")
print(f"  serial_killer: {len(sk_metrics)*2} strings ({len(sk_metrics)} name + {len(sk_metrics)} description)")
