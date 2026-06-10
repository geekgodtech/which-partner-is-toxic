#!/usr/bin/env python3
"""Center the Discord button text by changing mainAxisSize to mainAxisAlignment"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart"

with open(FILE_PATH, 'r', encoding='utf-8') as f:
    lines = f.readlines()

# Find the specific Row in the Discord button (around line 540)
# We look for the pattern after the CircularProgressIndicator closing
for i, line in enumerate(lines):
    # Look for the Row that contains the Discord Icon
    if 'const Icon(Icons.discord, size: 20)' in line and i > 0:
        # Go back to find the Row declaration
        for j in range(i-1, max(i-10, -1), -1):
            if 'mainAxisSize: MainAxisSize.min,' in lines[j]:
                lines[j] = lines[j].replace(
                    'mainAxisSize: MainAxisSize.min,',
                    'mainAxisAlignment: MainAxisAlignment.center,'
                )
                print(f"Updated line {j+1}: {lines[j].strip()}")
                break
        break

with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.writelines(lines)

print("Discord button text will now be centered on large screens")
