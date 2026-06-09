path = r'C:\My Projects\AIRTA\lib\services\subscription_service.dart'
content = open(path, encoding='utf-8').read().replace('\r\n', '\n')

# 1. Add new product IDs
old = "  static const String packUglyOneTimeId = 'metrics_pack_ugly_9_99';\n\n  // Available products"
new = (
    "  static const String packUglyOneTimeId = 'metrics_pack_ugly_9_99';\n"
    "  static const String packNarcissistOneTimeId = 'metrics_pack_narcissist_4_99';\n"
    "  static const String packSerialKillerOneTimeId = 'metrics_pack_serial_killer_4_99';\n"
    "\n  // Available products"
)
assert old in content, "BLOCK 1 NOT FOUND"
content = content.replace(old, new, 1)

# 2. Add pending flags after packUgly flags
old2 = "  bool _pendingPackUglyPurchase = false;\n  bool get pendingPackUglyPurchase => _pendingPackUglyPurchase;\n\n  void clearPendingPackGoodPurchase()"
new2 = (
    "  bool _pendingPackUglyPurchase = false;\n"
    "  bool get pendingPackUglyPurchase => _pendingPackUglyPurchase;\n"
    "  bool _pendingPackNarcissistPurchase = false;\n"
    "  bool get pendingPackNarcissistPurchase => _pendingPackNarcissistPurchase;\n"
    "  bool _pendingPackSerialKillerPurchase = false;\n"
    "  bool get pendingPackSerialKillerPurchase => _pendingPackSerialKillerPurchase;\n"
    "\n  void clearPendingPackGoodPurchase()"
)
assert old2 in content, "BLOCK 2 NOT FOUND"
content = content.replace(old2, new2, 1)

# 3. Add clear methods after clearPendingPackUglyPurchase
old3 = "  void clearPendingPackUglyPurchase() { _pendingPackUglyPurchase = false; notifyListeners(); }\n\n  /// Clear the pending custom metric"
new3 = (
    "  void clearPendingPackUglyPurchase() { _pendingPackUglyPurchase = false; notifyListeners(); }\n"
    "  void clearPendingPackNarcissistPurchase() { _pendingPackNarcissistPurchase = false; notifyListeners(); }\n"
    "  void clearPendingPackSerialKillerPurchase() { _pendingPackSerialKillerPurchase = false; notifyListeners(); }\n"
    "\n  /// Clear the pending custom metric"
)
assert old3 in content, "BLOCK 3 NOT FOUND"
content = content.replace(old3, new3, 1)

# 4. Add new cases to purchasePack demo-mode switch
old4 = "        case packUglyOneTimeId: _pendingPackUglyPurchase = true; break;\n      }\n      notifyListeners();\n      return true;\n    }"
new4 = (
    "        case packUglyOneTimeId: _pendingPackUglyPurchase = true; break;\n"
    "        case packNarcissistOneTimeId: _pendingPackNarcissistPurchase = true; break;\n"
    "        case packSerialKillerOneTimeId: _pendingPackSerialKillerPurchase = true; break;\n"
    "      }\n      notifyListeners();\n      return true;\n    }"
)
assert old4 in content, "BLOCK 4 NOT FOUND"
content = content.replace(old4, new4, 1)

# 5. Restore pack purchases
old5 = "    if (prefs.getBool('pack_ugly') == true) { _pendingPackUglyPurchase = true; }"
new5 = (
    "    if (prefs.getBool('pack_ugly') == true) { _pendingPackUglyPurchase = true; }\n"
    "    if (prefs.getBool('pack_narcissist') == true) { _pendingPackNarcissistPurchase = true; }\n"
    "    if (prefs.getBool('pack_serial_killer') == true) { _pendingPackSerialKillerPurchase = true; }"
)
assert old5 in content, "BLOCK 5 NOT FOUND"
content = content.replace(old5, new5, 1)

open(path, 'w', encoding='utf-8', newline='\r\n').write(content)
print("subscription_service.dart patched OK")
