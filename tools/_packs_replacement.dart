
/// Displays the list of packs for a specific language in a scrollable table.
class _PacksListView extends StatelessWidget {
  final String languageCode;
  final UserSubmittedPacksService service;

  const _PacksListView({
    required this.languageCode,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    final packs = service.getPacksByLanguage(languageCode);

    if (packs.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.inventory_2_outlined,
                color: Color(0xFF4a4a6a), size: 48),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1a1a3a),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFF2a2a5a)),
              ),
              child: Column(
                children: [
                  const Icon(Icons.language, color: Color(0xFF6060ff), size: 36),
                  const SizedBox(height: 12),
                  const Text(
                    'Be the First Creator in This Language!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFd0d0ff),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Submit a pack once, get it auto-translated to 16 languages, and earn from sales worldwide.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF8888aa), fontSize: 11),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Visit airta.net to submit your pack!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF60ff60),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // ── Column headers ────────────────────────────────────────────────
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
          child: LayoutBuilder(builder: (context, constraints) {
            final isSmall = constraints.maxWidth < 500;
            if (isSmall) {
              return const Row(
                children: [
                  SizedBox(width: 28), // chevron space
                  Expanded(
                    child: Text('Pack Name',
                        style: TextStyle(
                            color: Color(0xFF5a5a8a),
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5)),
                  ),
                ],
              );
            }
            return const Row(
              children: [
                SizedBox(width: 28),
                Expanded(
                  flex: 3,
                  child: Text('Pack Name',
                      style: TextStyle(
                          color: Color(0xFF5a5a8a),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5)),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: 52,
                  child: Text('Metrics',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF5a5a8a),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5)),
                ),
                SizedBox(
                  width: 58,
                  child: Text('Price',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF5a5a8a),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5)),
                ),
                SizedBox(
                  width: 64,
                  child: Text('Status',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF5a5a8a),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5)),
                ),
                SizedBox(
                  width: 46,
                  child: Text('Sold',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF5a5a8a),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5)),
                ),
              ],
            );
          }),
        ),
        const Divider(height: 1, color: Color(0xFF2a2a4a)),
        // ── Pack rows ─────────────────────────────────────────────────────
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            itemCount: packs.length,
            itemBuilder: (context, index) => _PackRow(
              pack: packs[index],
              service: service,
              languageCode: languageCode,
            ),
          ),
        ),
      ],
    );
  }
}

/// A single pack row with accordion expansion to show metric names.
/// On small screens (<500px wide) shows a 2-line card layout so nothing is truncated.
class _PackRow extends StatefulWidget {
  final UserSubmittedPack pack;
  final UserSubmittedPacksService service;
  final String languageCode;

  const _PackRow({
    required this.pack,
    required this.service,
    required this.languageCode,
  });

  @override
  State<_PackRow> createState() => _PackRowState();
}

class _PackRowState extends State<_PackRow> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final pack = widget.pack;
    final isPurchased = widget.service.isPurchased(pack.id);
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmall = screenWidth < 500;

    return Card(
      color: const Color(0xFF12122a),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: isPurchased
              ? const Color(0xFF2a5a2a)
              : const Color(0xFF2a2a5a),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Tappable header ─────────────────────────────────────────────
          InkWell(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            onTap: () => setState(() => _expanded = !_expanded),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 6),
              child: isSmall
                  ? _buildSmallLayout(context, pack, isPurchased)
                  : _buildWideLayout(context, pack, isPurchased),
            ),
          ),
          // ── Creator + date ──────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(38, 0, 12, 6),
            child: Row(
              children: [
                Text(
                  'by ${pack.creatorName}',
                  style: const TextStyle(
                      color: Color(0xFF6666aa), fontSize: 11),
                ),
                const Spacer(),
                Text(
                  _formatDate(pack.submissionDate),
                  style: const TextStyle(
                      color: Color(0xFF4a4a6a), fontSize: 10),
                ),
              ],
            ),
          ),
          // ── Expanded accordion: metric names ────────────────────────────
          if (_expanded)
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFF1a1a3a)),
                ),
              ),
              constraints: const BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                itemCount: pack.getMetrics(widget.languageCode).length,
                itemBuilder: (context, index) {
                  final metrics = pack.getMetrics(widget.languageCode);
                  final metric = metrics[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 28,
                          child: Text(
                            '${index + 1}.',
                            style: const TextStyle(
                                color: Color(0xFF4a4a6a), fontSize: 12),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            metric.name,
                            style: const TextStyle(
                                color: Color(0xFFa0a0c0), fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  /// Wide layout (tablets / landscape): all columns inline in one row.
  Widget _buildWideLayout(
      BuildContext context, UserSubmittedPack pack, bool isPurchased) {
    return Row(
      children: [
        Icon(
          _expanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_right,
          color: const Color(0xFF6666aa),
          size: 20,
        ),
        const SizedBox(width: 6),
        Expanded(
          flex: 3,
          child: Text(
            pack.getPackName(widget.languageCode),
            style: const TextStyle(
              color: Color(0xFFd0d0ff),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 8),
        SizedBox(
          width: 52,
          child: Text(
            '${pack.metricCount}',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xFFa0a0c0), fontSize: 12),
          ),
        ),
        SizedBox(
          width: 58,
          child: Text(
            pack.priceFormatted,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color(0xFF60ff60),
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(width: 6),
        SizedBox(
          width: 64,
          child: isPurchased
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1a3a1a),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xFF2a5a2a)),
                  ),
                  child: const Text('Owned',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Color(0xFF60ff60), fontSize: 11)),
                )
              : SizedBox(
                  height: 28,
                  child: ElevatedButton(
                    onPressed: () => _confirmPurchase(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4040cc),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      textStyle: const TextStyle(fontSize: 11),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text('Buy'),
                  ),
                ),
        ),
        const SizedBox(width: 6),
        SizedBox(
          width: 46,
          child: Text(
            '${pack.salesCount}',
            textAlign: TextAlign.center,
            style:
                const TextStyle(color: Color(0xFF6666aa), fontSize: 11),
          ),
        ),
      ],
    );
  }

  /// Small-screen layout: pack name prominently on its own line,
  /// info chips (metric count / price / status / sold) on a second line.
  Widget _buildSmallLayout(
      BuildContext context, UserSubmittedPack pack, bool isPurchased) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Line 1: chevron + full pack name
        Row(
          children: [
            Icon(
              _expanded
                  ? Icons.keyboard_arrow_down
                  : Icons.keyboard_arrow_right,
              color: const Color(0xFF6060ff),
              size: 20,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                pack.getPackName(widget.languageCode),
                style: const TextStyle(
                  color: Color(0xFFd0d0ff),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        // Line 2: info chips
        Padding(
          padding: const EdgeInsets.only(left: 26),
          child: Row(
            children: [
              _InfoChip(
                label: '${pack.metricCount} metrics',
                color: const Color(0xFF252550),
                textColor: const Color(0xFF9090cc),
              ),
              const SizedBox(width: 6),
              _InfoChip(
                label: pack.priceFormatted,
                color: const Color(0xFF1a3a1a),
                textColor: const Color(0xFF60ff60),
              ),
              const SizedBox(width: 6),
              if (isPurchased)
                const _InfoChip(
                  label: 'Owned',
                  color: Color(0xFF1a3a1a),
                  textColor: Color(0xFF60ff60),
                  bold: true,
                )
              else
                GestureDetector(
                  onTap: () => _confirmPurchase(context),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4040cc),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text('Buy',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              const Spacer(),
              Text(
                '${pack.salesCount} sold',
                style: const TextStyle(
                    color: Color(0xFF5555aa), fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _formatDate(String isoDate) {
    try {
      final dt = DateTime.parse(isoDate);
      return '${dt.month}/${dt.day}/${dt.year}';
    } catch (_) {
      return isoDate;
    }
  }

  Future<void> _confirmPurchase(BuildContext context) async {
    final pack = widget.pack;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1a1a3e),
        title: Text(
          'Purchase "${pack.getPackName(widget.languageCode)}"?',
          style: const TextStyle(color: Color(0xFFd0d0ff), fontSize: 16),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${pack.metricCount} metrics by ${pack.creatorName}',
              style: const TextStyle(color: Color(0xFFa0a0c0), fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              'Price: ${pack.priceFormatted}',
              style: const TextStyle(
                  color: Color(0xFF60ff60),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 12),
            const Text(
              'This will install the metric pack for use in your analyses.',
              style: TextStyle(color: Color(0xFF6666aa), fontSize: 12),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel',
                style: TextStyle(color: Color(0xFF6666aa))),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4040cc),
              foregroundColor: Colors.white,
            ),
            child: Text('Buy for ${pack.priceFormatted}'),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      final success = await widget.service.purchasePack(pack,
          preferredLanguage: widget.languageCode);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(success
                ? 'Pack installed successfully!'
                : 'Purchase failed. Please try again.'),
            backgroundColor:
                success ? const Color(0xFF2a5a2a) : const Color(0xFF5a2a2a),
          ),
        );
        if (success) setState(() {});
      }
    }
  }
}

/// Small chip widget for the compact small-screen pack row info line.
class _InfoChip extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;
  final bool bold;

  const _InfoChip({
    required this.label,
    required this.color,
    required this.textColor,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 11,
          fontWeight: bold ? FontWeight.w700 : FontWeight.normal,
        ),
      ),
    );
  }
}
