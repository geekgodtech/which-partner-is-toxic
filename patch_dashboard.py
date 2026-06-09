"""Patch dashboard_control_pane.dart:
1. Replace _MetricSelectorSection (StatelessWidget) with a StatefulWidget
   that renders collapsible accordion sections per pack.
2. Extend _PackId enum to include narcissist + serialKiller.
3. Add _MetricPackTile factories + data for the two new packs.
4. Add new pack sales tiles to the sales grid.
"""

path = r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart'
content = open(path, encoding='utf-8').read().replace('\r\n', '\n')

# ── 1. Replace _MetricSelectorSection ────────────────────────────────────────
old_section = '''class _MetricSelectorSection extends StatelessWidget {
  final ToxicityAnalyzerController controller;

  const _MetricSelectorSection({required this.controller});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final mq = MediaQuery.of(context);
    final ssWidth = ScreenshotAutomation.instance.windowSize.value.width;
    final screenWidth = (kScreenshotMode && ssWidth > 0) ? ssWidth : mq.size.width;
    final columnCount = _metricColumnCount(screenWidth);
    // Ordered tiles: controller.availableMetrics returns
    // [initial 100] -> [purchased pack metrics] -> [custom metrics]
    final allMetricTiles = controller.availableMetrics;
    final goodUnlocked = controller.isPackGoodUnlocked;
    final badUnlocked  = controller.isPackBadUnlocked;
    final uglyUnlocked = controller.isPackUglyUnlocked;

    // Sales tiles appear after all metric tiles.
    // Custom-purchase tile is always visible.
    // Each pack sales tile disappears once that pack is purchased.
    final salesTiles = <Widget>[
      _PurchaseCustomMetricTile(controller: controller),
      if (!goodUnlocked) _MetricPackTile.good(controller: controller),
      if (!badUnlocked)  _MetricPackTile.bad(controller: controller),
      if (!uglyUnlocked) _MetricPackTile.ugly(controller: controller),
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.psychologicalMetrics,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(l10n.selectUpToCount(
              ToxicityAnalyzerController.requiredMetricSelectionCount,
              controller.selectedMetricCount)),
          const SizedBox(height: 2),
          Wrap(
            spacing: 0,
            runSpacing: 0,
            children: [
              TextButton.icon(
                onPressed: controller.selectedMetricCount > 0
                    ? () => _showSaveMetricListDialog(context, controller)
                    : null,
                icon: const Icon(Icons.save, size: 16),
                label: Text(l10n.saveSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              TextButton.icon(
                onPressed: () =>
                    _showLoadMetricListDialog(context, controller),
                icon: const Icon(Icons.folder_open, size: 16),
                label: Text(l10n.loadSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              TextButton.icon(
                onPressed: controller.selectedMetricCount > 0
                    ? controller.clearMetricSelection
                    : null,
                icon: const Icon(Icons.clear_all, size: 16),
                label: Text(l10n.clearSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(l10n.metricsDescription),
          const SizedBox(height: 12),
          LayoutBuilder(
            builder: (context, constraints) {
              const spacing = 12.0;
              final cols = columnCount;
              final tileWidth = (constraints.maxWidth - spacing * (cols - 1)) / cols;
              // Fixed tile height in logical pixels — enough for title (2 lines)
              // + description (3-4 lines) + radio icon at the bottom.
              // Scales with tile width so it looks right at every column count.
              // Single GridView for ALL tiles (metric + sales) — same columns, same height.
              // Tile heights: big & bold on small screen, moderate on wide screen
              final tileHeight = cols == 1
                  ? (tileWidth * 0.90).clamp(260.0, 380.0)   // 1-col: tall cards
                  : cols == 2
                      ? (tileWidth * 1.20).clamp(220.0, 340.0) // 2-col
                      : (tileWidth * 1.35).clamp(180.0, 280.0); // 3+ col: moderate
              final allItems = [
                ...allMetricTiles.asMap().entries.map((e) => _MetricButtonTile(
                  metric: e.value,
                  isSelected: controller.isMetricSelected(e.value),
                  color: _metricTileColor(e.key),
                  onPressed: () => controller.toggleMetricSelection(e.value),
                )),
                ...salesTiles,
              ];
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: cols,
                  crossAxisSpacing: spacing,
                  mainAxisSpacing: spacing,
                  mainAxisExtent: tileHeight,
                ),
                itemCount: allItems.length,
                itemBuilder: (context, index) => allItems[index],
              );
            },
          ),
        ],
      ),
    );
  }
}'''

new_section = '''class _MetricSelectorSection extends StatefulWidget {
  final ToxicityAnalyzerController controller;

  const _MetricSelectorSection({required this.controller});

  @override
  State<_MetricSelectorSection> createState() => _MetricSelectorSectionState();
}

class _MetricSelectorSectionState extends State<_MetricSelectorSection> {
  // Track which accordion sections are expanded
  bool _standardExpanded   = true;
  bool _goodExpanded       = true;
  bool _badExpanded        = true;
  bool _uglyExpanded       = true;
  bool _narcissistExpanded = true;
  bool _serialKillerExpanded = true;
  bool _customExpanded     = true;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final mq = MediaQuery.of(context);
    final ssWidth = ScreenshotAutomation.instance.windowSize.value.width;
    final screenWidth = (kScreenshotMode && ssWidth > 0) ? ssWidth : mq.size.width;
    final columnCount = _metricColumnCount(screenWidth);
    final controller = widget.controller;

    final goodUnlocked         = controller.isPackGoodUnlocked;
    final badUnlocked          = controller.isPackBadUnlocked;
    final uglyUnlocked         = controller.isPackUglyUnlocked;
    final narcissistUnlocked   = controller.isPackNarcissistUnlocked;
    final serialKillerUnlocked = controller.isPackSerialKillerUnlocked;
    final customMetrics        = controller.customMetrics;

    // Sales tiles — below all accordion sections, always visible until purchased
    final salesTiles = <Widget>[
      _PurchaseCustomMetricTile(controller: controller),
      if (!goodUnlocked)         _MetricPackTile.good(controller: controller),
      if (!badUnlocked)          _MetricPackTile.bad(controller: controller),
      if (!uglyUnlocked)         _MetricPackTile.ugly(controller: controller),
      if (!narcissistUnlocked)   _MetricPackTile.narcissist(controller: controller),
      if (!serialKillerUnlocked) _MetricPackTile.serialKiller(controller: controller),
    ];

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header ──────────────────────────────────────────────────────
          Text(
            l10n.psychologicalMetrics,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(l10n.selectUpToCount(
              ToxicityAnalyzerController.requiredMetricSelectionCount,
              controller.selectedMetricCount)),
          const SizedBox(height: 2),
          Wrap(
            spacing: 0,
            runSpacing: 0,
            children: [
              TextButton.icon(
                onPressed: controller.selectedMetricCount > 0
                    ? () => _showSaveMetricListDialog(context, controller)
                    : null,
                icon: const Icon(Icons.save, size: 16),
                label: Text(l10n.saveSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              TextButton.icon(
                onPressed: () => _showLoadMetricListDialog(context, controller),
                icon: const Icon(Icons.folder_open, size: 16),
                label: Text(l10n.loadSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              TextButton.icon(
                onPressed: controller.selectedMetricCount > 0
                    ? controller.clearMetricSelection
                    : null,
                icon: const Icon(Icons.clear_all, size: 16),
                label: Text(l10n.clearSelections),
                style: TextButton.styleFrom(
                  visualDensity: VisualDensity.compact,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(l10n.metricsDescription),
          const SizedBox(height: 12),

          // ── Accordion Sections ───────────────────────────────────────────
          _MetricAccordionSection(
            title: 'Standard Pack',
            subtitle: '100 Metrics',
            icon: Icons.psychology,
            isExpanded: _standardExpanded,
            onToggle: () => setState(() => _standardExpanded = !_standardExpanded),
            metrics: controller.standardMetrics,
            controller: controller,
            columnCount: columnCount,
            colorOffset: 0,
          ),
          if (goodUnlocked)
            _MetricAccordionSection(
              title: 'The Good Pack',
              subtitle: '100 Metrics Addon',
              icon: Icons.sentiment_satisfied_alt,
              isExpanded: _goodExpanded,
              onToggle: () => setState(() => _goodExpanded = !_goodExpanded),
              metrics: controller.packGoodMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 100,
            ),
          if (badUnlocked)
            _MetricAccordionSection(
              title: 'The Bad Pack',
              subtitle: '100 Metrics Addon',
              icon: Icons.warning_amber_rounded,
              isExpanded: _badExpanded,
              onToggle: () => setState(() => _badExpanded = !_badExpanded),
              metrics: controller.packBadMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 200,
            ),
          if (uglyUnlocked)
            _MetricAccordionSection(
              title: 'The Ugly Pack',
              subtitle: '100 Metrics Addon',
              icon: Icons.dangerous_outlined,
              isExpanded: _uglyExpanded,
              onToggle: () => setState(() => _uglyExpanded = !_uglyExpanded),
              metrics: controller.packUglyMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 300,
            ),
          if (narcissistUnlocked)
            _MetricAccordionSection(
              title: 'Narcissist Pack',
              subtitle: '50 Metrics Addon',
              icon: Icons.face_retouching_natural,
              isExpanded: _narcissistExpanded,
              onToggle: () => setState(() => _narcissistExpanded = !_narcissistExpanded),
              metrics: controller.packNarcissistMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 400,
            ),
          if (serialKillerUnlocked)
            _MetricAccordionSection(
              title: 'Serial Killer Pack',
              subtitle: '50 Metrics Addon',
              icon: Icons.coronavirus_outlined,
              isExpanded: _serialKillerExpanded,
              onToggle: () => setState(() => _serialKillerExpanded = !_serialKillerExpanded),
              metrics: controller.packSerialKillerMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 450,
            ),
          if (customMetrics.isNotEmpty)
            _MetricAccordionSection(
              title: 'Custom Metrics',
              subtitle: '\${customMetrics.length} Metric\${customMetrics.length == 1 ? "" : "s"}',
              icon: Icons.add_circle_outline,
              isExpanded: _customExpanded,
              onToggle: () => setState(() => _customExpanded = !_customExpanded),
              metrics: customMetrics,
              controller: controller,
              columnCount: columnCount,
              colorOffset: 500,
            ),

          // ── Sales Tiles (below accordion, always visible) ────────────────
          if (salesTiles.isNotEmpty) ...[
            const SizedBox(height: 16),
            LayoutBuilder(
              builder: (context, constraints) {
                const spacing = 12.0;
                final cols = columnCount;
                final tileWidth = (constraints.maxWidth - spacing * (cols - 1)) / cols;
                final tileHeight = cols == 1
                    ? (tileWidth * 0.90).clamp(260.0, 380.0)
                    : cols == 2
                        ? (tileWidth * 1.20).clamp(220.0, 340.0)
                        : (tileWidth * 1.35).clamp(180.0, 280.0);
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: cols,
                    crossAxisSpacing: spacing,
                    mainAxisSpacing: spacing,
                    mainAxisExtent: tileHeight,
                  ),
                  itemCount: salesTiles.length,
                  itemBuilder: (context, index) => salesTiles[index],
                );
              },
            ),
          ],
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// ACCORDION SECTION WIDGET
// ---------------------------------------------------------------------------

class _MetricAccordionSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isExpanded;
  final VoidCallback onToggle;
  final List<PsychologicalMetric> metrics;
  final ToxicityAnalyzerController controller;
  final int columnCount;
  final int colorOffset;

  const _MetricAccordionSection({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isExpanded,
    required this.onToggle,
    required this.metrics,
    required this.controller,
    required this.columnCount,
    required this.colorOffset,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Accordion header — tappable row
        InkWell(
          onTap: onToggle,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: isDark
                  ? theme.colorScheme.surfaceContainerHighest.withOpacity(0.55)
                  : theme.colorScheme.surfaceContainerHighest.withOpacity(0.45),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(icon, size: 20, color: theme.colorScheme.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  isExpanded ? Icons.expand_less : Icons.expand_more,
                  color: theme.colorScheme.onSurface.withOpacity(0.6),
                ),
              ],
            ),
          ),
        ),
        // Collapsible grid
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 220),
          crossFadeState: isExpanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: LayoutBuilder(
            builder: (context, constraints) {
              const spacing = 12.0;
              final cols = columnCount;
              final tileWidth = (constraints.maxWidth - spacing * (cols - 1)) / cols;
              final tileHeight = cols == 1
                  ? (tileWidth * 0.90).clamp(260.0, 380.0)
                  : cols == 2
                      ? (tileWidth * 1.20).clamp(220.0, 340.0)
                      : (tileWidth * 1.35).clamp(180.0, 280.0);
              return Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 4),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: cols,
                    crossAxisSpacing: spacing,
                    mainAxisSpacing: spacing,
                    mainAxisExtent: tileHeight,
                  ),
                  itemCount: metrics.length,
                  itemBuilder: (context, idx) {
                    final metric = metrics[idx];
                    return _MetricButtonTile(
                      metric: metric,
                      isSelected: controller.isMetricSelected(metric),
                      color: _metricTileColor(colorOffset + idx),
                      onPressed: () => controller.toggleMetricSelection(metric),
                    );
                  },
                ),
              );
            },
          ),
          secondChild: const SizedBox.shrink(),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}'''

assert old_section in content, "OLD SECTION NOT FOUND"
content = content.replace(old_section, new_section, 1)

# ── 2. Extend _PackId enum ────────────────────────────────────────────────────
old_enum = "enum _PackId { good, bad, ugly }"
new_enum = "enum _PackId { good, bad, ugly, narcissist, serialKiller }"
assert old_enum in content, "_PackId enum NOT FOUND"
content = content.replace(old_enum, new_enum, 1)

# ── 3. Add factory constructors for new packs ────────────────────────────────
old_factories = (
    "  factory _MetricPackTile.ugly({required ToxicityAnalyzerController controller}) =>\n"
    "      _MetricPackTile._(packId: _PackId.ugly, controller: controller);"
)
new_factories = (
    "  factory _MetricPackTile.ugly({required ToxicityAnalyzerController controller}) =>\n"
    "      _MetricPackTile._(packId: _PackId.ugly, controller: controller);\n"
    "  factory _MetricPackTile.narcissist({required ToxicityAnalyzerController controller}) =>\n"
    "      _MetricPackTile._(packId: _PackId.narcissist, controller: controller);\n"
    "  factory _MetricPackTile.serialKiller({required ToxicityAnalyzerController controller}) =>\n"
    "      _MetricPackTile._(packId: _PackId.serialKiller, controller: controller);"
)
assert old_factories in content, "FACTORIES NOT FOUND"
content = content.replace(old_factories, new_factories, 1)

# ── 4. Add data entries for new packs ────────────────────────────────────────
old_data_end = (
    "    _PackId.ugly: (\n"
    "      title: 'The Ugly',\n"
    "      subtitle: 'Metrics Expansion Pack',\n"
    "      body:\n"
    "          '100 new metrics that identify severe abuse indicators and crisis-level red '\n"
    "          'flags \ufffd physical violence threats, stalking obsession, reproductive coercion, '\n"
    "          'identity erasure, lethality risk patterns, and more. The most important pack '\n"
    "          'for safety-critical analysis.',\n"
    "      price: r'$9.99',\n"
    "      icon: Icons.dangerous_outlined,\n"
    "      color: Color(0xFF7F0000),\n"
    "      bgColor: Color(0xFFFFEBEE),\n"
    "      darkColor: Color(0xFFB71C1C),\n"
    "    ),\n"
    "  };"
)
new_data_end = (
    "    _PackId.ugly: (\n"
    "      title: 'The Ugly',\n"
    "      subtitle: 'Metrics Expansion Pack',\n"
    "      body:\n"
    "          '100 new metrics that identify severe abuse indicators and crisis-level red '\n"
    "          'flags \u2014 physical violence threats, stalking obsession, reproductive coercion, '\n"
    "          'identity erasure, lethality risk patterns, and more. The most important pack '\n"
    "          'for safety-critical analysis.',\n"
    "      price: r'$9.99',\n"
    "      icon: Icons.dangerous_outlined,\n"
    "      color: Color(0xFF7F0000),\n"
    "      bgColor: Color(0xFFFFEBEE),\n"
    "      darkColor: Color(0xFFB71C1C),\n"
    "    ),\n"
    "    _PackId.narcissist: (\n"
    "      title: 'The Narcissist',\n"
    "      subtitle: 'Metrics Expansion Pack',\n"
    "      body:\n"
    "          '50 metrics that identify classic narcissistic personality patterns - '\n"
    "          'grandiosity, love bombing, devaluation, DARVO, supply-seeking, '\n"
    "          'triangulation, rage at criticism, and more. Essential for recognizing '\n"
    "          'narcissistic abuse cycles in text.',\n"
    "      price: r'$4.99',\n"
    "      icon: Icons.face_retouching_natural,\n"
    "      color: Color(0xFF4A148C),\n"
    "      bgColor: Color(0xFFF3E5F5),\n"
    "      darkColor: Color(0xFF6A1B9A),\n"
    "    ),\n"
    "    _PackId.serialKiller: (\n"
    "      title: 'Serial Killer Metrics',\n"
    "      subtitle: 'Metrics Expansion Pack',\n"
    "      body:\n"
    "          '50 metrics that surface the most dangerous predatory behavioral signals - '\n"
    "          'dehumanization, objectification, control fixation, sadistic language, '\n"
    "          'victim-selection patterns, compartmentalization, and more. Designed for '\n"
    "          'identifying extreme-risk psychological profiles.',\n"
    "      price: r'$4.99',\n"
    "      icon: Icons.coronavirus_outlined,\n"
    "      color: Color(0xFF1A237E),\n"
    "      bgColor: Color(0xFFE8EAF6),\n"
    "      darkColor: Color(0xFF283593),\n"
    "    ),\n"
    "  };"
)

# Verify ugly block exists with exact text
if old_data_end not in content:
    # Try to find it with different quote style
    import re
    idx = content.find("_PackId.ugly: (")
    print("Context around ugly:", repr(content[idx:idx+400]))
    raise AssertionError("DATA END NOT FOUND")
content = content.replace(old_data_end, new_data_end, 1)

# ── 5. Extend _productId switch ──────────────────────────────────────────────
old_product_switch = (
    "      case _PackId.good: return SubscriptionService.packGoodOneTimeId;\n"
    "      case _PackId.bad:  return SubscriptionService.packBadOneTimeId;\n"
    "      case _PackId.ugly: return SubscriptionService.packUglyOneTimeId;\n"
    "    }"
)
new_product_switch = (
    "      case _PackId.good:         return SubscriptionService.packGoodOneTimeId;\n"
    "      case _PackId.bad:          return SubscriptionService.packBadOneTimeId;\n"
    "      case _PackId.ugly:         return SubscriptionService.packUglyOneTimeId;\n"
    "      case _PackId.narcissist:   return SubscriptionService.packNarcissistOneTimeId;\n"
    "      case _PackId.serialKiller: return SubscriptionService.packSerialKillerOneTimeId;\n"
    "    }"
)
assert old_product_switch in content, "PRODUCT SWITCH NOT FOUND"
content = content.replace(old_product_switch, new_product_switch, 1)

# ── 6. Extend purchase flow pending checks ───────────────────────────────────
old_pending = (
    "      final pending = switch (packId) {\n"
    "        _PackId.good => subService.pendingPackGoodPurchase,\n"
    "        _PackId.bad  => subService.pendingPackBadPurchase,\n"
    "        _PackId.ugly => subService.pendingPackUglyPurchase,\n"
    "      };"
)
new_pending = (
    "      final pending = switch (packId) {\n"
    "        _PackId.good         => subService.pendingPackGoodPurchase,\n"
    "        _PackId.bad          => subService.pendingPackBadPurchase,\n"
    "        _PackId.ugly         => subService.pendingPackUglyPurchase,\n"
    "        _PackId.narcissist   => subService.pendingPackNarcissistPurchase,\n"
    "        _PackId.serialKiller => subService.pendingPackSerialKillerPurchase,\n"
    "      };"
)
assert old_pending in content, "PENDING SWITCH NOT FOUND"
content = content.replace(old_pending, new_pending, 1)

# ── 7. Extend clear-pending switch ──────────────────────────────────────────
old_clear = (
    "        case _PackId.good: subService.clearPendingPackGoodPurchase(); break;\n"
    "        case _PackId.bad:  subService.clearPendingPackBadPurchase();  break;\n"
    "        case _PackId.ugly: subService.clearPendingPackUglyPurchase(); break;\n"
    "      }"
)
new_clear = (
    "        case _PackId.good:         subService.clearPendingPackGoodPurchase(); break;\n"
    "        case _PackId.bad:          subService.clearPendingPackBadPurchase();  break;\n"
    "        case _PackId.ugly:         subService.clearPendingPackUglyPurchase(); break;\n"
    "        case _PackId.narcissist:   subService.clearPendingPackNarcissistPurchase(); break;\n"
    "        case _PackId.serialKiller: subService.clearPendingPackSerialKillerPurchase(); break;\n"
    "      }"
)
assert old_clear in content, "CLEAR SWITCH NOT FOUND"
content = content.replace(old_clear, new_clear, 1)

# ── 8. Extend unlock switch ──────────────────────────────────────────────────
old_unlock = (
    "      case _PackId.good: controller.unlockPackGood(); break;\n"
    "      case _PackId.bad:  controller.unlockPackBad();  break;\n"
    "      case _PackId.ugly: controller.unlockPackUgly(); break;\n"
    "    }"
)
new_unlock = (
    "      case _PackId.good:         controller.unlockPackGood(); break;\n"
    "      case _PackId.bad:          controller.unlockPackBad();  break;\n"
    "      case _PackId.ugly:         controller.unlockPackUgly(); break;\n"
    "      case _PackId.narcissist:   controller.unlockPackNarcissist(); break;\n"
    "      case _PackId.serialKiller: controller.unlockPackSerialKiller(); break;\n"
    "    }"
)
assert old_unlock in content, "UNLOCK SWITCH NOT FOUND"
content = content.replace(old_unlock, new_unlock, 1)

# ── 9. Fix snack bar message for variable-size packs ────────────────────────
old_snack = "          '${d.title} pack unlocked! 100 new metrics added to your grid.'"
# Use a count-aware message
# Find it and replace
old_snack2 = "'${d.title} pack unlocked! 100 new metrics added to your grid.'"
new_snack2 = "'${d.title} pack unlocked! New metrics added to your grid.'"
if old_snack2 in content:
    content = content.replace(old_snack2, new_snack2, 1)

open(path, 'w', encoding='utf-8', newline='\r\n').write(content)
print("dashboard_control_pane.dart patched OK")
