#!/usr/bin/env python3

# Update the membership landing page to add Discord warning and setup link
with open(r'C:\My Projects\AIRTA\lib\widgets\membership_landing_page.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Replace the Discord addon card with an expanded version that includes warning
old_discord_card = '''      _TierCard(
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
      ),'''

new_discord_section = '''      // Discord Addon with Technical Warning
      Column(
        children: [
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
          // Technical warning card
          if (isStandardMember)
            Container(
              width: cardWidth,
              margin: const EdgeInsets.only(top: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.1),
                border: Border.all(color: Colors.orange.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.warning_amber_rounded, color: Colors.orange, size: 20),
                      const SizedBox(width: 8),
                      Text(
                        'Technical Setup Required',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'This feature requires you to create a Discord bot and configure it yourself. Please review the setup instructions before purchasing to ensure you are comfortable with the technical steps involved.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.orange.shade900,
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () => _showDiscordSetupInstructions(context),
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF5865F2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.menu_book, color: Colors.white, size: 18),
                          const SizedBox(width: 8),
                          Text(
                            'View Setup Instructions',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),'''

if old_discord_card in content:
    content = content.replace(old_discord_card, new_discord_section)
    print('OK - Updated Discord addon section with warning')
else:
    print('ERROR - Could not find Discord card pattern')

# Add the _showDiscordSetupInstructions method before _purchaseMembership
method_insert_marker = '''  // DISCORD ADDON FOR STANDARD MEMBERSHIP'''

new_method = '''  // Show Discord setup instructions dialog
  void _showDiscordSetupInstructions(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const DiscordSetupHelp(),
    );
  }

  // DISCORD ADDON FOR STANDARD MEMBERSHIP'''

if method_insert_marker in content and 'void _showDiscordSetupInstructions' not in content:
    content = content.replace(method_insert_marker, new_method)
    print('OK - Added _showDiscordSetupInstructions method')

# Update the Discord Setup Help to add a link at the bottom
with open(r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart', 'r', encoding='utf-8') as f:
    help_content = f.read()

old_help_end = '''                SizedBox(height: isSmallScreen ? 16 : 24),
                Center(
                  child: FilledButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(l10n.gotIt),
                  ),
                ),'''

new_help_end = '''                SizedBox(height: isSmallScreen ? 16 : 24),
                // Link to bot configuration at the bottom
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF5865F2).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.settings, color: const Color(0xFF5865F2), size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Ready to configure your bot?',
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Once you\'ve created your Discord bot following the steps above, enter your bot token in the settings to start analyzing.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DiscordSettingsPage(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.arrow_forward),
                        label: const Text('Go to Bot Settings'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5865F2),
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: isSmallScreen ? 16 : 24),
                Center(
                  child: FilledButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(l10n.gotIt),
                  ),
                ),'''

if old_help_end in help_content and 'Go to Bot Settings' not in help_content:
    help_content = help_content.replace(old_help_end, new_help_end)
    with open(r'C:\My Projects\AIRTA\lib\widgets\discord_setup_help.dart', 'w', encoding='utf-8') as f:
        f.write(help_content)
    print('OK - Updated Discord setup help with settings link')
else:
    print('WARNING - Could not update help dialog or already updated')

# Save the membership landing page changes
with open(r'C:\My Projects\AIRTA\lib\widgets\membership_landing_page.dart', 'w', encoding='utf-8') as f:
    f.write(content)

print('Done!')
