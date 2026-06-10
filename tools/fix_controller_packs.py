#!/usr/bin/env python3
"""Add UserSubmittedPacksService import and include packs in availableMetrics"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\controllers\toxicity_analyzer_controller.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Add import for UserSubmittedPacksService
old_import = "import 'package:airta/services/referral_service.dart';"
new_import = """import 'package:airta/services/referral_service.dart';
import 'package:airta/services/user_submitted_packs_service.dart';"""

content = content.replace(old_import, new_import)

# Update availableMetrics to include user submitted packs
old_metrics = '''  List<PsychologicalMetric> get availableMetrics {
    final metrics = <PsychologicalMetric>[];
    // 1. Initial 100 core metrics
    metrics.addAll(standardMetrics);
    // 2. Purchased expansion pack metrics (in purchase order)
    if (isPackGoodUnlocked) metrics.addAll(packGoodMetrics);
    if (isPackBadUnlocked)  metrics.addAll(packBadMetrics);
    if (isPackUglyUnlocked) metrics.addAll(packUglyMetrics);
    if (isPackNarcissistUnlocked) metrics.addAll(packNarcissistMetrics);
    if (isPackSerialKillerUnlocked) metrics.addAll(packSerialKillerMetrics);
    // 3. User-created custom metrics
    metrics.addAll(customMetrics);
    return metrics;
  }'''

new_metrics = '''  List<PsychologicalMetric> get availableMetrics {
    final metrics = <PsychologicalMetric>[];
    // 1. Initial 100 core metrics
    metrics.addAll(standardMetrics);
    // 2. Purchased expansion pack metrics (in purchase order)
    if (isPackGoodUnlocked) metrics.addAll(packGoodMetrics);
    if (isPackBadUnlocked)  metrics.addAll(packBadMetrics);
    if (isPackUglyUnlocked) metrics.addAll(packUglyMetrics);
    if (isPackNarcissistUnlocked) metrics.addAll(packNarcissistMetrics);
    if (isPackSerialKillerUnlocked) metrics.addAll(packSerialKillerMetrics);
    // 3. User-created custom metrics
    metrics.addAll(customMetrics);
    // 4. User-submitted packs purchased from the marketplace
    metrics.addAll(UserSubmittedPacksService().allInstalledMetrics);
    return metrics;
  }'''

content = content.replace(old_metrics, new_metrics)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed toxicity_analyzer_controller.dart:")
print("- Added UserSubmittedPacksService import")
print("- Added allInstalledMetrics to availableMetrics")
