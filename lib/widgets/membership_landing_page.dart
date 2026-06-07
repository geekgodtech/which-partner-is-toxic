import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/services/subscription_service.dart';

class MembershipLandingPage extends StatelessWidget {
  const MembershipLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    // Try to get subscription service, default to free tier if not available
    final subscriptionService =
        context.read<SubscriptionService?>() ?? SubscriptionService();
    final isStandardMember =
        subscriptionService.activeTier == MembershipTier.standard ||
            subscriptionService.activeTier == MembershipTier.pro ||
            subscriptionService.activeTier == MembershipTier.proPlus;

    return Scaffold(
      appBar: AppBar(
        title: LayoutBuilder(
          builder: (context, constraints) {
            final isNarrow = constraints.maxWidth < 400;
            return Text(
              l10n.membershipOptions,
              style: TextStyle(
                fontSize: isNarrow ? 18 : 20,
                height: 1.0,
                letterSpacing: isNarrow ? -0.5 : 0,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            );
          },
        ),
      ),
      body: ColoredBox(
        color: colorScheme.surfaceContainerHighest,
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth >= 900;
              final cardWidth = isWide
                  ? (constraints.maxWidth - 48) / 3
                  : constraints.maxWidth;
              final tiles = _buildTierCards(
                context,
                l10n,
                colorScheme,
                isStandardMember,
                cardWidth,
              );

              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _MembershipHero(isWide: isWide),
                    const SizedBox(height: 24),
                    if (isWide)
                      IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            for (var i = 0; i < tiles.length; i++) ...[
                              if (i > 0) const SizedBox(width: 16),
                              Expanded(child: tiles[i]),
                            ],
                          ],
                        ),
                      )
                    else
                      Column(
                        children: [
                          for (var i = 0; i < tiles.length; i++) ...[
                            if (i > 0) const SizedBox(height: 16),
                            tiles[i],
                          ],
                        ],
                      ),
                    const SizedBox(height: 24),
                    const _ComingSoonCard(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTierCards(
    BuildContext context,
    AppLocalizations l10n,
    ColorScheme colorScheme,
    bool isStandardMember,
    double cardWidth,
  ) {
    return [
      _TierCard(
        width: cardWidth,
        icon: Icons.sms_outlined,
        title: l10n.free,
        price: '\$0',
        accentColor: colorScheme.secondary,
        benefits: [
          l10n.benefitAnalyzeSms,
          l10n.benefitReportPreview,
          l10n.benefitViewPartialReport,
          l10n.benefitLockedDetails,
        ],
        buttonLabel: l10n.currentFreeAccess,
        onPressed: null,
      ),
      _TierCard(
        width: cardWidth,
        icon: Icons.lock_open_outlined,
        title: l10n.oneTimeUnlock,
        price: '\$20',
        accentColor: colorScheme.primary,
        benefits: [
          l10n.benefitUnlockCurrentReport,
          l10n.benefitNoSubscription,
          l10n.benefitSavePrintShareThis,
          l10n.benefitBestSingleAnalysis,
        ],
        buttonLabel: l10n.unlockThisReportShort,
        onPressed: () => _completeOneTimeUnlock(context),
      ),
      _TierCard(
        width: cardWidth,
        icon: Icons.article_outlined,
        title: l10n.standard,
        price: '\$9.99/mo',
        accentColor: colorScheme.primary,
        benefits: [
          l10n.benefitFullSmsReport,
          l10n.benefitSavePrintSharePdf,
          l10n.benefitTenReports,
          l10n.benefitBestTextReview,
          l10n.benefitDateRangeFilter,
        ],
        buttonLabel: l10n.signUpStandard,
        onPressed: () => _completeStandardSignup(context),
      ),
      _TierCard(
        width: cardWidth,
        icon: Icons.chat_bubble_outline,
        title: l10n.discordAddon,
        price: '\$9.99/mo',
        accentColor: colorScheme.tertiary,
        benefits: [
          l10n.benefitAddToStandard,
          l10n.benefitAnalyzeDiscord,
          l10n.benefitRequiresBot,
          l10n.benefitBestGamers,
        ],
        buttonLabel: isStandardMember
            ? l10n.addDiscordAnalysis
            : l10n.requiresStandardMembership,
        onPressed: isStandardMember
            ? () => _completeDiscordAddonSignup(context)
            : null,
      ),
    ];
  }

  Future<void> _completeOneTimeUnlock(BuildContext context) async {
    final subscriptionService = SubscriptionService();

    // Show loading
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final success = await subscriptionService.purchaseSubscription(
        SubscriptionService.oneTimeUnlockId,
      );

      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        Navigator.pop(context); // Close loading dialog

        if (success) {
          context.read<ToxicityAnalyzerController>().unlockCurrentReport();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.purchaseSuccessfulUnlocked),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.purchaseFailed),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  Future<void> _completeStandardSignup(BuildContext context) async {
    await _purchaseMembership(
      context,
      SubscriptionService.standardMonthlyId,
      'Standard',
      () => context.read<ToxicityAnalyzerController>().unlockPremium(),
    );
  }

  // PRO AND PRO PLUS METHODS - COMMENTED OUT FOR CURRENT LAUNCH
  // Future<void> _completeProSignup(BuildContext context) async {
  //   await _purchaseMembership(
  //     context,
  //     SubscriptionService.proMonthlyId,
  //     'Pro',
  //     () =>
  //         context.read<ToxicityAnalyzerController>().unlockConnectedAccounts(),
  //   );
  // }
  //
  // Future<void> _completeProPlusSignup(BuildContext context) async {
  //   await _purchaseMembership(
  //     context,
  //     SubscriptionService.proPlusMonthlyId,
  //     'Pro Plus',
  //     () =>
  //         context.read<ToxicityAnalyzerController>().unlockConnectedAccounts(),
  //   );
  // }

  // DISCORD ADDON FOR STANDARD MEMBERSHIP
  Future<void> _completeDiscordAddonSignup(BuildContext context) async {
    await _purchaseMembership(
      context,
      SubscriptionService.discordAddonMonthlyId,
      'Discord Addon',
      () => context.read<ToxicityAnalyzerController>().unlockDiscordAddon(),
    );
  }

  Future<void> _purchaseMembership(
    BuildContext context,
    String productId,
    String tierName,
    VoidCallback onSuccess,
  ) async {
    final subscriptionService = SubscriptionService();

    // Show loading
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final success = await subscriptionService.purchaseSubscription(productId);

      if (context.mounted) {
        final l10n = AppLocalizations.of(context)!;
        Navigator.pop(context); // Close loading dialog

        if (success) {
          onSuccess();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.membershipActivated),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.purchaseFailed),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$e'), backgroundColor: Colors.red),
        );
      }
    }
  }
}

class _MembershipHero extends StatelessWidget {
  final bool isWide;

  const _MembershipHero({required this.isWide});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Flex(
          direction: isWide ? Axis.horizontal : Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.assignment_turned_in_outlined,
              size: 84,
              color: colorScheme.primary,
            ),
            SizedBox(width: isWide ? 24 : 0, height: isWide ? 0 : 16),
            Expanded(
              flex: isWide ? 1 : 0,
              child: Column(
                crossAxisAlignment: isWide
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.becomeMemberTitle,
                    textAlign: isWide ? TextAlign.start : TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.of(context)!.becomeMemberSubtitle,
                    textAlign: isWide ? TextAlign.start : TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TierCard extends StatelessWidget {
  final double width;
  final IconData icon;
  final String title;
  final String price;
  final Color accentColor;
  final List<String> benefits;
  final String buttonLabel;
  final VoidCallback? onPressed;

  const _TierCard({
    required this.width,
    required this.icon,
    required this.title,
    required this.price,
    required this.accentColor,
    required this.benefits,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: accentColor.withAlpha( 0.16),
                child: Icon(icon, size: 32, color: accentColor),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(
                price,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: accentColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: benefits
                      .map(
                        (benefit) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 18,
                                color: accentColor,
                              ),
                              const SizedBox(width: 8),
                              Expanded(child: Text(benefit)),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: onPressed,
                child: Text(
                  buttonLabel,
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ComingSoonCard extends StatelessWidget {
  const _ComingSoonCard();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 3,
      color: colorScheme.tertiaryContainer.withAlpha( 0.45),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: colorScheme.tertiary, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.rocket_launch_outlined,
                        size: 18,
                        color: colorScheme.onTertiary,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        l10n.comingSoon,
                        style: textTheme.labelLarge?.copyWith(
                          color: colorScheme.onTertiary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              l10n.comingSoonWithNextUpdate,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _ComingSoonTier(
              icon: Icons.hub_outlined,
              title: l10n.proMembershipTier,
              accentColor: colorScheme.tertiary,
              children: [
                Text(
                  l10n.proGetsLabel,
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(l10n.proGetsDescription),
                const SizedBox(height: 6),
                Text(
                  l10n.proPlatformsList,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _ComingSoonTier(
              icon: Icons.workspace_premium_outlined,
              title: l10n.proPlusMembershipTier,
              accentColor: colorScheme.error,
              children: [
                Text(
                  l10n.proPlusGetsLabel,
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(l10n.proPlusGetsDescription),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ComingSoonTier extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color accentColor;
  final List<Widget> children;

  const _ComingSoonTier({
    required this.icon,
    required this.title,
    required this.accentColor,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withAlpha( 0.6),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: accentColor.withAlpha( 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: accentColor, size: 24),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: accentColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }
}
