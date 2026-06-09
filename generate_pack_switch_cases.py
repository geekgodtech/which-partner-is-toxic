"""
Generate switch cases for the 300 pack metrics (good/bad/ugly)
to add to app_localizations_extension.dart
"""

packs = ["good", "bad", "ugly"]
switch_cases = []

for pack in packs:
    for i in range(1, 101):
        metric_id = f"{pack}_{i}"
        name_key = f"metric_{metric_id}_name"
        desc_key = f"metric_{metric_id}_description"

        switch_cases.append(f"      case '{name_key}':")
        switch_cases.append(f"        return {name_key};")
        switch_cases.append(f"      case '{desc_key}':")
        switch_cases.append(f"        return {desc_key};")

# Write to file
with open(r"C:\My Projects\AIRTA\pack_switch_cases.txt", "w", encoding="utf-8") as f:
    f.write("\n".join(switch_cases))

print(f"Generated {len(switch_cases)} switch cases")
print("Written to: pack_switch_cases.txt")
