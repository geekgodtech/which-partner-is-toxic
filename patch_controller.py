path = r'C:\My Projects\AIRTA\lib\controllers\toxicity_analyzer_controller.dart'
content = open(path, encoding='utf-8').read().replace('\r\n', '\n')

# 1. Extend MetricPackView enum
old = "enum MetricPackView { main, good, bad, ugly }"
new = "enum MetricPackView { main, good, bad, ugly, narcissist, serialKiller }"
assert old in content, "ENUM NOT FOUND"
content = content.replace(old, new, 1)

# 2. Extend availableMetrics to include new packs
old = (
    "    if (isPackGoodUnlocked) metrics.addAll(packGoodMetrics);\n"
    "    if (isPackBadUnlocked)  metrics.addAll(packBadMetrics);\n"
    "    if (isPackUglyUnlocked) metrics.addAll(packUglyMetrics);\n"
    "    // 3. User-created custom metrics"
)
new = (
    "    if (isPackGoodUnlocked) metrics.addAll(packGoodMetrics);\n"
    "    if (isPackBadUnlocked)  metrics.addAll(packBadMetrics);\n"
    "    if (isPackUglyUnlocked) metrics.addAll(packUglyMetrics);\n"
    "    if (isPackNarcissistUnlocked) metrics.addAll(packNarcissistMetrics);\n"
    "    if (isPackSerialKillerUnlocked) metrics.addAll(packSerialKillerMetrics);\n"
    "    // 3. User-created custom metrics"
)
assert old in content, "AVAILABLE METRICS NOT FOUND"
content = content.replace(old, new, 1)

# 3. Add new catalog fields after packUglyMetrics
old = (
    "  final List<PsychologicalMetric> packGoodMetrics = _buildPackGoodCatalog();\n"
    "  final List<PsychologicalMetric> packBadMetrics = _buildPackBadCatalog();\n"
    "  final List<PsychologicalMetric> packUglyMetrics = _buildPackUglyCatalog();"
)
new = (
    "  final List<PsychologicalMetric> packGoodMetrics = _buildPackGoodCatalog();\n"
    "  final List<PsychologicalMetric> packBadMetrics = _buildPackBadCatalog();\n"
    "  final List<PsychologicalMetric> packUglyMetrics = _buildPackUglyCatalog();\n"
    "  final List<PsychologicalMetric> packNarcissistMetrics = _buildPackNarcissistCatalog();\n"
    "  final List<PsychologicalMetric> packSerialKillerMetrics = _buildPackSerialKillerCatalog();"
)
assert old in content, "PACK FIELDS NOT FOUND"
content = content.replace(old, new, 1)

# 4. Extend visibleMetrics switch
old = (
    "      case MetricPackView.ugly:\n"
    "        return packUglyMetrics;\n"
    "      case MetricPackView.main:\n"
    "        return availableMetrics;\n"
    "    }"
)
new = (
    "      case MetricPackView.ugly:\n"
    "        return packUglyMetrics;\n"
    "      case MetricPackView.narcissist:\n"
    "        return packNarcissistMetrics;\n"
    "      case MetricPackView.serialKiller:\n"
    "        return packSerialKillerMetrics;\n"
    "      case MetricPackView.main:\n"
    "        return availableMetrics;\n"
    "    }"
)
assert old in content, "VISIBLE METRICS SWITCH NOT FOUND"
content = content.replace(old, new, 1)

# 5. Add isPackNarcissistUnlocked / isPackSerialKillerUnlocked flags after isPackUglyUnlocked
old = (
    "  bool isPackGoodUnlocked = false;\n"
    "  bool isPackBadUnlocked  = false;\n"
    "  bool isPackUglyUnlocked = false;"
)
new = (
    "  bool isPackGoodUnlocked = false;\n"
    "  bool isPackBadUnlocked  = false;\n"
    "  bool isPackUglyUnlocked = false;\n"
    "  bool isPackNarcissistUnlocked = false;\n"
    "  bool isPackSerialKillerUnlocked = false;"
)
assert old in content, "UNLOCK FLAGS NOT FOUND"
content = content.replace(old, new, 1)

# 6. Add unlockPackNarcissist / unlockPackSerialKiller after unlockPackUgly
old = (
    "  /// Unlock The Ugly metrics expansion pack and inject all 100 metrics into the main catalog.\n"
    "  void unlockPackUgly() {\n"
    "    if (isPackUglyUnlocked) return;\n"
    "    isPackUglyUnlocked = true;\n"
    "    SharedPreferences.getInstance().then((p) => p.setBool('pack_ugly', true));\n"
    "    notifyListeners();\n"
    "  }\n"
    "\n"
    "  /// Called after a successful custom metric purchase"
)
new = (
    "  /// Unlock The Ugly metrics expansion pack and inject all 100 metrics into the main catalog.\n"
    "  void unlockPackUgly() {\n"
    "    if (isPackUglyUnlocked) return;\n"
    "    isPackUglyUnlocked = true;\n"
    "    SharedPreferences.getInstance().then((p) => p.setBool('pack_ugly', true));\n"
    "    notifyListeners();\n"
    "  }\n"
    "\n"
    "  /// Unlock the Narcissist metrics expansion pack and inject all 50 metrics.\n"
    "  void unlockPackNarcissist() {\n"
    "    if (isPackNarcissistUnlocked) return;\n"
    "    isPackNarcissistUnlocked = true;\n"
    "    SharedPreferences.getInstance().then((p) => p.setBool('pack_narcissist', true));\n"
    "    notifyListeners();\n"
    "  }\n"
    "\n"
    "  /// Unlock the Serial Killer metrics expansion pack and inject all 50 metrics.\n"
    "  void unlockPackSerialKiller() {\n"
    "    if (isPackSerialKillerUnlocked) return;\n"
    "    isPackSerialKillerUnlocked = true;\n"
    "    SharedPreferences.getInstance().then((p) => p.setBool('pack_serial_killer', true));\n"
    "    notifyListeners();\n"
    "  }\n"
    "\n"
    "  /// Called after a successful custom metric purchase"
)
assert old in content, "UNLOCK METHODS NOT FOUND"
content = content.replace(old, new, 1)

# 7. Restore new packs on startup
old = (
    "    if (preferences.getBool('pack_ugly') == true) unlockPackUgly();\n"
    "\n"
    "    // Load API key"
)
new = (
    "    if (preferences.getBool('pack_ugly') == true) unlockPackUgly();\n"
    "    if (preferences.getBool('pack_narcissist') == true) unlockPackNarcissist();\n"
    "    if (preferences.getBool('pack_serial_killer') == true) unlockPackSerialKiller();\n"
    "\n"
    "    // Load API key"
)
assert old in content, "RESTORE PACKS NOT FOUND"
content = content.replace(old, new, 1)

open(path, 'w', encoding='utf-8', newline='\r\n').write(content)
print("toxicity_analyzer_controller.dart patched OK")
