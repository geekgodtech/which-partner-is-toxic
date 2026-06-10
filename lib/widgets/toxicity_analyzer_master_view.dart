import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:airta/l10n/app_localizations.dart';
import 'package:airta/widgets/analyzer_workspace.dart';
import 'package:airta/widgets/language_selector.dart';
import 'package:airta/widgets/dark_mode_switch.dart';
import 'package:airta/widgets/about_page.dart';

class ToxicityAnalyzerMasterView extends StatelessWidget {
  const ToxicityAnalyzerMasterView({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final isNarrow = mq.size.width < 400;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.appTitle,
          style: TextStyle(
            fontSize: isNarrow ? 18 : 20,
            height: 1.0,
            letterSpacing: isNarrow ? -0.5 : 0,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          const DarkModeSwitch(),
          SizedBox(width: isNarrow ? 4 : 8),
          const LanguageSelector(),
          SizedBox(width: isNarrow ? 4 : 8),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == 'about') {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              } else if (value == 'support') {
                showDialog(
                  context: context,
                  builder: (context) => _SupportDialog(),
                );
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'support',
                child: Row(
                  children: [
                    Icon(Icons.support_agent, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 12),
                    const Text('Support'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'about',
                child: Row(
                  children: [
                    Icon(Icons.info, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 12),
                    const Text('About'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: isNarrow ? 2 : 4),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const AnalyzerWorkspace(),
    );
  }
}

class _SupportDialog extends StatelessWidget {
  Future<void> _launchEmail(BuildContext context, String email) async {
    final uri = Uri.parse('mailto:$email');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not open email app. Contact: $email'),
          duration: const Duration(seconds: 5),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 400;

    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.support_agent, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 12),
          const Text('Contact Support'),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Need help with AIRTA? Reach out to us:',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: isSmallScreen ? 16 : 20),
          _EmailTile(
            icon: Icons.support_agent,
            title: 'Technical Support',
            email: 'support@airta.net',
            description: 'Questions, bugs, help using the app',
            onTap: () => _launchEmail(context, 'support@airta.net'),
          ),
          SizedBox(height: isSmallScreen ? 12 : 16),
          _EmailTile(
            icon: Icons.business,
            title: 'Business Inquiries',
            email: 'ceo@airta.net',
            description: 'Partnerships, enterprise, media',
            onTap: () => _launchEmail(context, 'ceo@airta.net'),
          ),
          SizedBox(height: isSmallScreen ? 12 : 16),
          _EmailTile(
            icon: Icons.privacy_tip,
            title: 'Privacy Questions',
            email: 'privacy@airta.net',
            description: 'Data, privacy policy, deletion requests',
            onTap: () => _launchEmail(context, 'privacy@airta.net'),
          ),
          SizedBox(height: isSmallScreen ? 16 : 20),
          Text(
            'We typically respond within 24 hours.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}

class _EmailTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String email;
  final String description;
  final VoidCallback onTap;

  const _EmailTile({
    required this.icon,
    required this.title,
    required this.email,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    email,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.open_in_new,
              size: 18,
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
