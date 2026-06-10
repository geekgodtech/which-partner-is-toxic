"""
Fix dashboard tiles (hardcoded strings → l10n),
fix purchase dialog button contrast,
and wire user-submitted installed packs into metric accordion.
"""

import sys
sys.stdout.reconfigure(encoding='utf-8')

# ─────────────────────────────────────────────────────────────────────────────
# PART 1: dashboard_control_pane.dart
# ─────────────────────────────────────────────────────────────────────────────
path = r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart'
with open(path, encoding='utf-8') as f:
    c = f.read()
orig = c

# ── 1a. My Account tile: hardcoded 'My Account' and description ────────────
OLD_MY_ACCOUNT = (
    "                              Expanded(\n"
    "                                child: AutoSizeText(\n"
    "                                  'My Account',\n"
    "                                  maxLines: 1,\n"
    "                                  minFontSize: 10,\n"
    "                                  overflow: TextOverflow.ellipsis,\n"
    "                                  style: TextStyle(\n"
    "                                    color: colorScheme.onSecondaryContainer,\n"
    "                                    fontWeight: FontWeight.w700,\n"
    "                                    fontSize: (constraints.maxWidth * 0.24).clamp(14.0, 28.0),\n"
    "                                    height: 1.12,\n"
    "                                  ),\n"
    "                                ),\n"
    "                              ),\n"
    "                            ],\n"
    "                          ),\n"
    "                          SizedBox(height: constraints.maxWidth * 0.03),\n"
    "                          Expanded(\n"
    "                            child: AutoSizeText(\n"
    "                              'Membership, referrals, purchases, sales & developer license',\n"
)

NEW_MY_ACCOUNT = (
    "                              Expanded(\n"
    "                                child: AutoSizeText(\n"
    "                                  AppLocalizations.of(context)!.tileMyAccountTitle,\n"
    "                                  maxLines: 1,\n"
    "                                  minFontSize: 10,\n"
    "                                  overflow: TextOverflow.ellipsis,\n"
    "                                  style: TextStyle(\n"
    "                                    color: colorScheme.onSecondaryContainer,\n"
    "                                    fontWeight: FontWeight.w700,\n"
    "                                    fontSize: (constraints.maxWidth * 0.24).clamp(14.0, 28.0),\n"
    "                                    height: 1.12,\n"
    "                                  ),\n"
    "                                ),\n"
    "                              ),\n"
    "                            ],\n"
    "                          ),\n"
    "                          SizedBox(height: constraints.maxWidth * 0.03),\n"
    "                          Expanded(\n"
    "                            child: AutoSizeText(\n"
    "                              AppLocalizations.of(context)!.tileMyAccountDesc,\n"
)

assert OLD_MY_ACCOUNT in c, "My Account tile text not found"
c = c.replace(OLD_MY_ACCOUNT, NEW_MY_ACCOUNT, 1)
print("OK: My Account tile title+desc localized")

# ── 1b. Refer Friends tile: hardcoded title and description ────────────────
OLD_REFER = (
    "                              Expanded(\n"
    "                                child: AutoSizeText(\n"
    "                                  'Refer Friends\\nGet FREE Month',\n"
    "                                  maxLines: 2,\n"
    "                                  minFontSize: 10,\n"
    "                                  wrapWords: false,\n"
    "                                  overflow: TextOverflow.ellipsis,\n"
    "                                  style: TextStyle(\n"
    "                                    color: colorScheme.onSecondaryContainer,\n"
    "                                    fontWeight: FontWeight.w700,\n"
    "                                    fontSize: (constraints.maxWidth * 0.24).clamp(14.0, 28.0),\n"
    "                                    height: 1.12,\n"
    "                                  ),\n"
    "                                ),\n"
    "                              ),\n"
    "                            ],\n"
    "                          ),\n"
    "                          SizedBox(height: constraints.maxWidth * 0.03),\n"
    "                          Expanded(\n"
    "                            child: AutoSizeText(\n"
    "                              'Refer 5 friends who run a report and earn a free month of Standard!',\n"
)

NEW_REFER = (
    "                              Expanded(\n"
    "                                child: AutoSizeText(\n"
    "                                  AppLocalizations.of(context)!.tileReferFriendsTitle,\n"
    "                                  maxLines: 2,\n"
    "                                  minFontSize: 10,\n"
    "                                  wrapWords: false,\n"
    "                                  overflow: TextOverflow.ellipsis,\n"
    "                                  style: TextStyle(\n"
    "                                    color: colorScheme.onSecondaryContainer,\n"
    "                                    fontWeight: FontWeight.w700,\n"
    "                                    fontSize: (constraints.maxWidth * 0.24).clamp(14.0, 28.0),\n"
    "                                    height: 1.12,\n"
    "                                  ),\n"
    "                                ),\n"
    "                              ),\n"
    "                            ],\n"
    "                          ),\n"
    "                          SizedBox(height: constraints.maxWidth * 0.03),\n"
    "                          Expanded(\n"
    "                            child: AutoSizeText(\n"
    "                              AppLocalizations.of(context)!.tileReferFriendsDesc,\n"
)

assert OLD_REFER in c, "Refer Friends tile text not found"
c = c.replace(OLD_REFER, NEW_REFER, 1)
print("OK: Refer Friends tile title+desc localized")

# ── 1c. User Submitted Packs tile: hardcoded title, desc, Browse button ──────
OLD_USER_PACKS = (
    "                              Expanded(\n"
    "                                child: AutoSizeText(\n"
    "                                  'User Submitted\\nMetric Packs',\n"
    "                                  maxLines: 2,\n"
    "                                  minFontSize: 10,\n"
    "                                  wrapWords: false,\n"
    "                                  overflow: TextOverflow.ellipsis,\n"
    "                                  style: TextStyle(\n"
    "                                    color: colorScheme.onSecondaryContainer,\n"
    "                                    fontWeight: FontWeight.w700,\n"
    "                                    fontSize: (constraints.maxWidth * 0.26).clamp(16.0, 30.0),\n"
    "                                    height: 1.12,\n"
    "                                  ),\n"
    "                                ),\n"
    "                              ),\n"
    "                            ],\n"
    "                          ),\n"
    "                          SizedBox(height: constraints.maxWidth * 0.03),\n"
    "                          Expanded(\n"
    "                            child: AutoSizeText(\n"
    "                              'Browse & purchase community-created metric packs. Earn credits by submitting your own!',\n"
)

NEW_USER_PACKS = (
    "                              Expanded(\n"
    "                                child: AutoSizeText(\n"
    "                                  AppLocalizations.of(context)!.tileUserPacksTitle,\n"
    "                                  maxLines: 2,\n"
    "                                  minFontSize: 10,\n"
    "                                  wrapWords: false,\n"
    "                                  overflow: TextOverflow.ellipsis,\n"
    "                                  style: TextStyle(\n"
    "                                    color: colorScheme.onSecondaryContainer,\n"
    "                                    fontWeight: FontWeight.w700,\n"
    "                                    fontSize: (constraints.maxWidth * 0.26).clamp(16.0, 30.0),\n"
    "                                    height: 1.12,\n"
    "                                  ),\n"
    "                                ),\n"
    "                              ),\n"
    "                            ],\n"
    "                          ),\n"
    "                          SizedBox(height: constraints.maxWidth * 0.03),\n"
    "                          Expanded(\n"
    "                            child: AutoSizeText(\n"
    "                              AppLocalizations.of(context)!.tileUserPacksDesc,\n"
)

assert OLD_USER_PACKS in c, "User Submitted Packs tile text not found"
c = c.replace(OLD_USER_PACKS, NEW_USER_PACKS, 1)
print("OK: User Submitted Packs tile title+desc localized")

# ── 1d. Browse button in User Submitted Packs tile ────────────────────────────
OLD_BROWSE = (
    "                        child: const Text(\n"
    "                          'Browse',\n"
    "                          style: TextStyle(\n"
    "                            color: Colors.white,\n"
    "                            fontWeight: FontWeight.w800,\n"
    "                            fontSize: 12,\n"
    "                          ),\n"
    "                        ),\n"
    "                      ),\n"
    "                    ),\n"
    "                  ],\n"
    "                );\n"
    "              },\n"
    "            ),\n"
    "          ),\n"
    "        ),\n"
    "      ),\n"
    "    );\n"
    "  }\n"
    "}\n"
    "\n"
    "// METRIC EXPANSION PACK TILES"
)

NEW_BROWSE = (
    "                        child: Text(\n"
    "                          AppLocalizations.of(context)!.tileBrowseButton,\n"
    "                          style: const TextStyle(\n"
    "                            color: Colors.white,\n"
    "                            fontWeight: FontWeight.w800,\n"
    "                            fontSize: 12,\n"
    "                          ),\n"
    "                        ),\n"
    "                      ),\n"
    "                    ),\n"
    "                  ],\n"
    "                );\n"
    "              },\n"
    "            ),\n"
    "          ),\n"
    "        ),\n"
    "      ),\n"
    "    );\n"
    "  }\n"
    "}\n"
    "\n"
    "// METRIC EXPANSION PACK TILES"
)

assert OLD_BROWSE in c, "Browse button text not found"
c = c.replace(OLD_BROWSE, NEW_BROWSE, 1)
print("OK: Browse button localized")

# ── 1e. Wire user-submitted installed packs into metric accordion ─────────────
# Add after the serial killer section and before custom metrics section
OLD_AFTER_SERIAL = (
    "          if (serialKillerUnlocked)\n"
    "            _MetricAccordionSection(\n"
    "              title: l10n.serialKillerPackTitle,\n"
    "              subtitle: l10n.metricsAddonSubtitle(50),\n"
    "              icon: Icons.dangerous,\n"
    "              isExpanded: _serialKillerExpanded,\n"
    "              onToggle: () => setState(() => _serialKillerExpanded = !_serialKillerExpanded),\n"
    "              metrics: controller.packSerialKillerMetrics,\n"
    "              controller: controller,\n"
    "              columnCount: columnCount,\n"
    "              colorOffset: 450,\n"
    "            ),\n"
    "          if (customMetrics.isNotEmpty)"
)

NEW_AFTER_SERIAL = (
    "          if (serialKillerUnlocked)\n"
    "            _MetricAccordionSection(\n"
    "              title: l10n.serialKillerPackTitle,\n"
    "              subtitle: l10n.metricsAddonSubtitle(50),\n"
    "              icon: Icons.dangerous,\n"
    "              isExpanded: _serialKillerExpanded,\n"
    "              onToggle: () => setState(() => _serialKillerExpanded = !_serialKillerExpanded),\n"
    "              metrics: controller.packSerialKillerMetrics,\n"
    "              controller: controller,\n"
    "              columnCount: columnCount,\n"
    "              colorOffset: 450,\n"
    "            ),\n"
    "          // User-submitted installed packs — one accordion per purchased pack\n"
    "          ...context.read<UserSubmittedPacksService>().purchasedPackIds.map((packId) {\n"
    "            final svc = context.read<UserSubmittedPacksService>();\n"
    "            final pack = svc.availablePacks.where((p) => p.id == packId).firstOrNull;\n"
    "            final metrics = svc.installedPacks[packId] ?? [];\n"
    "            if (metrics.isEmpty) return const SizedBox.shrink();\n"
    "            final idx = svc.purchasedPackIds.toList().indexOf(packId);\n"
    "            return _MetricAccordionSection(\n"
    "              title: pack?.packName ?? packId,\n"
    "              subtitle: l10n.installedPacksAccordionSubtitle(metrics.length),\n"
    "              icon: Icons.inventory_2,\n"
    "              isExpanded: _userPackExpanded[packId] ?? false,\n"
    "              onToggle: () => setState(() {\n"
    "                _userPackExpanded[packId] = !(_userPackExpanded[packId] ?? false);\n"
    "              }),\n"
    "              metrics: metrics,\n"
    "              controller: controller,\n"
    "              columnCount: columnCount,\n"
    "              colorOffset: 501 + idx * 100,\n"
    "            );\n"
    "          }),\n"
    "          if (customMetrics.isNotEmpty)"
)

assert OLD_AFTER_SERIAL in c, "Serial killer section end not found"
c = c.replace(OLD_AFTER_SERIAL, NEW_AFTER_SERIAL, 1)
print("OK: User-submitted packs accordion wired in")

# ── 1f. Add _userPackExpanded map to state class ──────────────────────────────
OLD_EXPANDED_VARS = (
    "  bool _standardExpanded   = true;\n"
    "  bool _goodExpanded       = false;\n"
    "  bool _badExpanded        = false;\n"
    "  bool _uglyExpanded       = false;\n"
    "  bool _narcissistExpanded = false;\n"
    "  bool _serialKillerExpanded = false;\n"
    "  bool _customExpanded     = false;"
)

NEW_EXPANDED_VARS = (
    "  bool _standardExpanded   = true;\n"
    "  bool _goodExpanded       = false;\n"
    "  bool _badExpanded        = false;\n"
    "  bool _uglyExpanded       = false;\n"
    "  bool _narcissistExpanded = false;\n"
    "  bool _serialKillerExpanded = false;\n"
    "  bool _customExpanded     = false;\n"
    "  // Track expand state for each user-submitted installed pack by ID\n"
    "  final Map<String, bool> _userPackExpanded = {};"
)

assert OLD_EXPANDED_VARS in c, "Expanded vars block not found"
c = c.replace(OLD_EXPANDED_VARS, NEW_EXPANDED_VARS, 1)
print("OK: _userPackExpanded map added to state")

# ── 1g. Add provider import if not already present ───────────────────────────
# provider is already imported ('package:provider/provider.dart')
# context.read<UserSubmittedPacksService>() needs it — it's already imported

assert c != orig, "No changes made to dashboard_control_pane.dart"
with open(path, 'w', encoding='utf-8') as f:
    f.write(c)
print("Saved: dashboard_control_pane.dart\n")

# ─────────────────────────────────────────────────────────────────────────────
# PART 2: user_submitted_packs_page.dart — fix Buy button contrast + localize dialog
# ─────────────────────────────────────────────────────────────────────────────
path2 = r'C:\My Projects\AIRTA\lib\widgets\user_submitted_packs_page.dart'
with open(path2, encoding='utf-8') as f:
    c2 = f.read()
orig2 = c2

# Fix the Buy button: add foregroundColor: Colors.white for contrast
OLD_BUY_BTN = (
    "          ElevatedButton(\n"
    "            onPressed: () => Navigator.pop(ctx, true),\n"
    "            style: ElevatedButton.styleFrom(\n"
    "              backgroundColor: const Color(0xFF4040cc),\n"
    "            ),\n"
    "            child: Text('Buy for ${pack.priceFormatted}'),\n"
    "          ),"
)

NEW_BUY_BTN = (
    "          ElevatedButton(\n"
    "            onPressed: () => Navigator.pop(ctx, true),\n"
    "            style: ElevatedButton.styleFrom(\n"
    "              backgroundColor: const Color(0xFF4040cc),\n"
    "              foregroundColor: Colors.white,\n"
    "            ),\n"
    "            child: Text('Buy for \${pack.priceFormatted}'),\n"
    "          ),"
)

assert OLD_BUY_BTN in c2, "Buy button block not found"
c2 = c2.replace(OLD_BUY_BTN, NEW_BUY_BTN, 1)
print("OK: Buy button foregroundColor: white added")

assert c2 != orig2, "No changes made to user_submitted_packs_page.dart"
with open(path2, 'w', encoding='utf-8') as f:
    f.write(c2)
print("Saved: user_submitted_packs_page.dart\n")

print("All fixes applied successfully.")
