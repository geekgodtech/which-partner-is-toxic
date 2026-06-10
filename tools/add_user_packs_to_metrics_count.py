#!/usr/bin/env python3
"""Add user-submitted packs to the metrics still available calculation"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Add import for UserSubmittedPacksService if not present
if 'user_submitted_packs_service' not in content.lower():
    # Find the imports section and add the new import
    old_import = "import 'package:airta/widgets/user_account_page.dart';"
    new_import = """import 'package:airta/widgets/user_account_page.dart';
import 'package:airta/services/user_submitted_packs_service.dart';"""
    content = content.replace(old_import, new_import)
    print("Added UserSubmittedPacksService import")

# Update the metrics calculation section
old_calculation = '''    // Count metrics
    final ownedMetrics = controller.standardMetrics.length +
        (goodUnlocked ? controller.packGoodMetrics.length : 0) +
        (badUnlocked ? controller.packBadMetrics.length : 0) +
        (uglyUnlocked ? controller.packUglyMetrics.length : 0) +
        (narcissistUnlocked ? controller.packNarcissistMetrics.length : 0) +
        (serialKillerUnlocked ? controller.packSerialKillerMetrics.length : 0) +
        controller.customMetrics.length;

    final totalAvailableMetrics = controller.standardMetrics.length +
        controller.packGoodMetrics.length +
        controller.packBadMetrics.length +
        controller.packUglyMetrics.length +
        controller.packNarcissistMetrics.length +
        controller.packSerialKillerMetrics.length;
    final metricsStillAvailable = totalAvailableMetrics - ownedMetrics;'''

new_calculation = '''    // Count metrics from standard packs
    final ownedMetrics = controller.standardMetrics.length +
        (goodUnlocked ? controller.packGoodMetrics.length : 0) +
        (badUnlocked ? controller.packBadMetrics.length : 0) +
        (uglyUnlocked ? controller.packUglyMetrics.length : 0) +
        (narcissistUnlocked ? controller.packNarcissistMetrics.length : 0) +
        (serialKillerUnlocked ? controller.packSerialKillerMetrics.length : 0) +
        controller.customMetrics.length;

    // Calculate standard pack metrics available
    final totalAvailableMetrics = controller.standardMetrics.length +
        controller.packGoodMetrics.length +
        controller.packBadMetrics.length +
        controller.packUglyMetrics.length +
        controller.packNarcissistMetrics.length +
        controller.packSerialKillerMetrics.length;

    // Get user-submitted packs metrics count
    final userPacksService = UserSubmittedPacksService();
    final userPacksAvailable = userPacksService.availablePacks;
    final userPacksPurchased = userPacksService.purchasedPackIds;

    // Calculate metrics in user packs that haven't been purchased
    int userPackMetricsAvailable = 0;
    int userPackMetricsOwned = 0;
    for (final pack in userPacksAvailable) {
      final packMetricsCount = pack.metrics.length;
      if (userPacksPurchased.contains(pack.id)) {
        userPackMetricsOwned += packMetricsCount;
      } else {
        userPackMetricsAvailable += packMetricsCount;
      }
    }

    // Total metrics still available (standard packs + user packs)
    final metricsStillAvailable = (totalAvailableMetrics - ownedMetrics) + userPackMetricsAvailable;'''

if old_calculation in content:
    content = content.replace(old_calculation, new_calculation)
    print("Updated metrics calculation to include user-submitted packs")
else:
    print("WARNING: Could not find the old calculation pattern. File may have changed.")
    print("Searching for alternative pattern...")
    # Try to find with different whitespace
    import re
    pattern = r'// Count metrics\s+final ownedMetrics = controller\.standardMetrics\.length.*?final metricsStillAvailable = totalAvailableMetrics - ownedMetrics;'
    match = re.search(pattern, content, re.DOTALL)
    if match:
        print(f"Found pattern at position {match.start()}-{match.end()}")
    else:
        print("Could not find pattern with regex either")

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("\nDone! The metricsStillAvailable count now includes:")
print("  - Standard expansion packs not yet purchased")
print("  - User-submitted packs not yet purchased")
print("\nExample: If you have 5 packs purchased (500 metrics)")
print("         and there are 50 user packs (50 x 50 = 2,500 metrics)")
print("         Metrics Still Available = 2,500")
