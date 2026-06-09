"""
Extract the 300 metric pack metrics (good/bad/ugly) from metric_pack_catalogs.dart
and generate ARB localization entries for all 16 languages.
"""

from pathlib import Path

# Read the metric pack catalog file
catalog_file = Path(r"C:\My Projects\AIRTA\lib\controllers\metric_pack_catalogs.dart")
lines = catalog_file.read_text(encoding="utf-8").splitlines()

metrics = {"good": [], "bad": [], "ugly": []}
current_pack = None
in_defs = False

for line in lines:
    # Detect section headers
    if "THE GOOD" in line:
        current_pack = "good"
        in_defs = False
    elif "THE BAD" in line:
        current_pack = "bad"
        in_defs = False
    elif "THE UGLY" in line:
        current_pack = "ugly"
        in_defs = False
    elif "const defs = [" in line:
        in_defs = True
    elif "];" in line and in_defs:
        in_defs = False
    elif in_defs and current_pack and "(name:" in line:
        # Parse the tuple
        line = line.strip()
        if line.startswith("(name:"):
            # Extract name and description
            name_start = line.find("name: '") + 7
            name_end = line.find("', description:")
            name = line[name_start:name_end]

            desc_start = line.find("description: '") + 13
            desc_end = line.rfind("'),")
            desc = line[desc_start:desc_end]

            # Clean up the description - remove surrounding quotes if present
            if desc.startswith("'"):
                desc = desc[1:]
            if desc.endswith("'"):
                desc = desc[:-1]

            # Escape double quotes for JSON
            desc = desc.replace('"', '\\"')

            metrics[current_pack].append((name, desc))

# Print counts
for pack in ["good", "bad", "ugly"]:
    print(f"{pack.upper()}: {len(metrics[pack])} metrics")

# Generate ARB entries
arb_entries = []

for pack in ["good", "bad", "ugly"]:
    for i, (name, desc) in enumerate(metrics[pack], 1):
        metric_id = f"{pack}_{i}"
        name_key = f"metric_{metric_id}_name"
        desc_key = f"metric_{metric_id}_description"

        arb_entries.append(f'  "{name_key}": "{name}",')
        arb_entries.append(f'  "{desc_key}": "{desc}",')

# Write to a temporary file for review
output_file = Path(r"C:\My Projects\AIRTA\pack_metrics_arb_entries.txt")
output_file.write_text("\n".join(arb_entries), encoding="utf-8")

print(f"\nGenerated {len(arb_entries)} ARB entries")
print(f"Written to: {output_file}")
print("\nNext steps:")
print("1. Review the generated entries")
print("2. Add them to app_en.arb")
print("3. Translate to all 15 other languages")
print("4. Update app_localizations_extension.dart")
