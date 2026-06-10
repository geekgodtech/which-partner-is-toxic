path = r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart'
with open(path, encoding='utf-8') as f:
    c = f.read()

OLD = (
    "          // User-submitted installed packs \u2014 one accordion per purchased pack\n"
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
    "          }),"
)

NEW = (
    "          // User-submitted installed packs \u2014 one accordion per purchased pack\n"
    "          // Uses singleton directly (not Provider \u2014 service is not in the widget tree)\n"
    "          ...() {\n"
    "            final svc = UserSubmittedPacksService();\n"
    "            final packIds = svc.purchasedPackIds.toList();\n"
    "            return packIds.map((packId) {\n"
    "              final pack = svc.availablePacks.where((p) => p.id == packId).firstOrNull;\n"
    "              final metrics = svc.installedPacks[packId] ?? [];\n"
    "              if (metrics.isEmpty) return const SizedBox.shrink();\n"
    "              final idx = packIds.indexOf(packId);\n"
    "              return _MetricAccordionSection(\n"
    "                title: pack?.packName ?? packId,\n"
    "                subtitle: l10n.installedPacksAccordionSubtitle(metrics.length),\n"
    "                icon: Icons.inventory_2,\n"
    "                isExpanded: _userPackExpanded[packId] ?? false,\n"
    "                onToggle: () => setState(() {\n"
    "                  _userPackExpanded[packId] = !(_userPackExpanded[packId] ?? false);\n"
    "                }),\n"
    "                metrics: metrics,\n"
    "                controller: controller,\n"
    "                columnCount: columnCount,\n"
    "                colorOffset: 501 + idx * 100,\n"
    "              );\n"
    "            });\n"
    "          }(),"
)

assert OLD in c, f"Block not found. First 50 chars of target: {repr(OLD[:50])}"
c = c.replace(OLD, NEW, 1)
with open(path, 'w', encoding='utf-8') as f:
    f.write(c)
print("Fixed: context.read<UserSubmittedPacksService> -> singleton call")
