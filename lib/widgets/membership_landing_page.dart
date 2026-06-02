import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:which_partner_is_toxic/controllers/toxicity_analyzer_controller.dart';
import 'package:which_partner_is_toxic/services/subscription_service.dart';

class MembershipLandingPage extends StatelessWidget {
  const MembershipLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Membership Options')),
      body: ColoredBox(
        color: colorScheme.surfaceContainerHighest,
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth >= 900;
              final cardWidth = isWide
                  ? (constraints.maxWidth - 48) / 3
                  : constraints.maxWidth;

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
                            Expanded(
                              child: _TierCard(
                                width: cardWidth,
                                icon: Icons.sms_outlined,
                                title: 'Free',
                                price: '\$0',
                                accentColor: colorScheme.secondary,
                                benefits: const [
                                  'Analyze SMS text messages',
                                  'Run a report preview',
                                  'View about 15% of the report',
                                  'Locked full report details',
                                ],
                                buttonLabel: 'Current free access',
                                onPressed: null,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _TierCard(
                                width: cardWidth,
                                icon: Icons.lock_open_outlined,
                                title: 'One-Time Report Unlock',
                                price: '\$20',
                                accentColor: colorScheme.primary,
                                benefits: const [
                                  'Unlock this current full report',
                                  'No subscription',
                                  'Save, print, and share this report',
                                  'Best if you only need one analysis',
                                ],
                                buttonLabel: 'Unlock This Report',
                                onPressed: () =>
                                    _completeOneTimeUnlock(context),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _TierCard(
                                width: cardWidth,
                                icon: Icons.article_outlined,
                                title: 'Standard',
                                price: '\$9.99/mo',
                                accentColor: colorScheme.primary,
                                benefits: const [
                                  'Full SMS analysis report',
                                  'Save, print, and share PDF reports',
                                  '10 reports per 24-hour period',
                                  'Best for text-message relationship review',
                                ],
                                buttonLabel: 'Sign up for Standard Membership',
                                onPressed: () =>
                                    _completeStandardSignup(context),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _TierCard(
                                width: cardWidth,
                                icon: Icons.hub_outlined,
                                title: 'Pro',
                                price: '\$19.99/mo',
                                accentColor: colorScheme.tertiary,
                                benefits: const [
                                  'Everything in Standard',
                                  'No daily report limit',
                                  'Analyze LinkedIn, WhatsApp, Instagram, Messenger, Telegram, Email, and Calendar',
                                  'Best for multi-platform relationship review',
                                ],
                                buttonLabel: 'Sign up for Pro Membership',
                                onPressed: () => _completeProSignup(context),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: _TierCard(
                                width: cardWidth,
                                icon: Icons.workspace_premium_outlined,
                                title: 'Pro Plus',
                                price: '\$24.99/mo',
                                accentColor: colorScheme.error,
                                benefits: const [
                                  'Everything in Pro',
                                  'Discord chat analysis',
                                  'Only \$4.99 more than Pro',
                                  'Best for gamers and Discord users',
                                ],
                                buttonLabel: 'Sign up for Pro Plus',
                                onPressed: () =>
                                    _completeProPlusSignup(context),
                              ),
                            ),
                          ],
                        ),
                      )
                    else
                      Column(
                        children: [
                          _TierCard(
                            width: cardWidth,
                            icon: Icons.sms_outlined,
                            title: 'Free',
                            price: '\$0',
                            accentColor: colorScheme.secondary,
                            benefits: const [
                              'Analyze SMS text messages',
                              'Run a report preview',
                              'View about 15% of the report',
                              'Locked full report details',
                            ],
                            buttonLabel: 'Current free access',
                            onPressed: null,
                          ),
                          const SizedBox(height: 16),
                          _TierCard(
                            width: cardWidth,
                            icon: Icons.lock_open_outlined,
                            title: 'One-Time Report Unlock',
                            price: '\$20',
                            accentColor: colorScheme.primary,
                            benefits: const [
                              'Unlock this current full report',
                              'No subscription',
                              'Save, print, and share this report',
                              'Best if you only need one analysis',
                            ],
                            buttonLabel: 'Unlock This Report',
                            onPressed: () => _completeOneTimeUnlock(context),
                          ),
                          const SizedBox(height: 16),
                          _TierCard(
                            width: cardWidth,
                            icon: Icons.article_outlined,
                            title: 'Standard',
                            price: '9.99/mo',
                            accentColor: colorScheme.primary,
                            benefits: const [
                              'Full SMS analysis report',
                              'Save, print, and share PDF reports',
                              '10 reports per 24-hour period',
                              'Best for text-message relationship review',
                            ],
                            buttonLabel: 'Sign up for Standard Membership',
                            onPressed: () => _completeStandardSignup(context),
                          ),
                          const SizedBox(height: 16),
                          _TierCard(
                            width: cardWidth,
                            icon: Icons.hub_outlined,
                            title: 'Pro',
                            price: '\$19.99/mo',
                            accentColor: colorScheme.tertiary,
                            benefits: const [
                              'Everything in Standard',
                              'No daily report limit',
                              'Analyze LinkedIn, WhatsApp, Instagram, Messenger, Telegram, Email, and Calendar',
                              'Best for multi-platform relationship review',
                            ],
                            buttonLabel: 'Sign up for Pro Membership',
                            onPressed: () => _completeProSignup(context),
                          ),
                          const SizedBox(height: 16),
                          _TierCard(
                            width: cardWidth,
                            icon: Icons.workspace_premium_outlined,
                            title: 'Pro Plus',
                            price: '\$24.99/mo',
                            accentColor: colorScheme.error,
                            benefits: const [
                              'Everything in Pro',
                              'Discord chat analysis',
                              'Only \$4.99 more than Pro',
                              'Best for gamers and Discord users',
                            ],
                            buttonLabel: 'Sign up for Pro Plus',
                            onPressed: () => _completeProPlusSignup(context),
                          ),
                        ],
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
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
        Navigator.pop(context); // Close loading dialog

        if (success) {
          context.read<ToxicityAnalyzerController>().unlockCurrentReport();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Purchase successful! Report unlocked.'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Purchase failed. Please try again.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
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

  Future<void> _completeProSignup(BuildContext context) async {
    await _purchaseMembership(
      context,
      SubscriptionService.proMonthlyId,
      'Pro',
      () =>
          context.read<ToxicityAnalyzerController>().unlockConnectedAccounts(),
    );
  }

  Future<void> _completeProPlusSignup(BuildContext context) async {
    await _purchaseMembership(
      context,
      SubscriptionService.proPlusMonthlyId,
      'Pro Plus',
      () =>
          context.read<ToxicityAnalyzerController>().unlockConnectedAccounts(),
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
        Navigator.pop(context); // Close loading dialog

        if (success) {
          onSuccess();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('$tierName membership activated!'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.of(context).pop();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Purchase failed. Please try again.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // Close loading dialog
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
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
                    'Become a member to get full analysis report',
                    textAlign: isWide ? TextAlign.start : TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Choose the access level that matches the conversations and reports you need to analyze.',
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
                backgroundColor: accentColor.withValues(alpha: 0.16),
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
