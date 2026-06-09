path = r'C:\My Projects\AIRTA\lib\controllers\toxicity_analyzer_controller.dart'
content = open(path, encoding='utf-8').read().replace('\r\n', '\n')

# Add standardMetrics getter and customMetrics getter after availableMetrics
old = (
    "  List<PsychologicalMetric> get availableMetrics {\n"
    "    final metrics = <PsychologicalMetric>[];\n"
    "    // 1. Initial 100 core metrics\n"
    "    metrics.addAll(_buildMetricCatalog());\n"
    "    // 2. Purchased expansion pack metrics (in purchase order)\n"
    "    if (isPackGoodUnlocked) metrics.addAll(packGoodMetrics);\n"
    "    if (isPackBadUnlocked)  metrics.addAll(packBadMetrics);\n"
    "    if (isPackUglyUnlocked) metrics.addAll(packUglyMetrics);\n"
    "    if (isPackNarcissistUnlocked) metrics.addAll(packNarcissistMetrics);\n"
    "    if (isPackSerialKillerUnlocked) metrics.addAll(packSerialKillerMetrics);\n"
    "    // 3. User-created custom metrics\n"
    "    metrics.addAll(CustomMetricService().customMetrics);\n"
    "    return metrics;\n"
    "  }"
)
new = (
    "  /// The initial 100 standard core metrics.\n"
    "  List<PsychologicalMetric> get standardMetrics => _buildMetricCatalog();\n"
    "\n"
    "  /// Custom user-created metrics.\n"
    "  List<PsychologicalMetric> get customMetrics => CustomMetricService().customMetrics;\n"
    "\n"
    "  List<PsychologicalMetric> get availableMetrics {\n"
    "    final metrics = <PsychologicalMetric>[];\n"
    "    // 1. Initial 100 core metrics\n"
    "    metrics.addAll(standardMetrics);\n"
    "    // 2. Purchased expansion pack metrics (in purchase order)\n"
    "    if (isPackGoodUnlocked) metrics.addAll(packGoodMetrics);\n"
    "    if (isPackBadUnlocked)  metrics.addAll(packBadMetrics);\n"
    "    if (isPackUglyUnlocked) metrics.addAll(packUglyMetrics);\n"
    "    if (isPackNarcissistUnlocked) metrics.addAll(packNarcissistMetrics);\n"
    "    if (isPackSerialKillerUnlocked) metrics.addAll(packSerialKillerMetrics);\n"
    "    // 3. User-created custom metrics\n"
    "    metrics.addAll(customMetrics);\n"
    "    return metrics;\n"
    "  }"
)
assert old in content, "AVAILABLE METRICS BLOCK NOT FOUND"
content = content.replace(old, new, 1)

open(path, 'w', encoding='utf-8', newline='\r\n').write(content)
print("controller getters added OK")
