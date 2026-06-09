#!/usr/bin/env python3

with open(r'C:\My Projects\AIRTA\lib\widgets\discord_settings_page.dart', 'r', encoding='utf-8') as f:
    content = f.read()

# Find and replace the dialog content
old_dialog = '''              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(l10n.discordSetupDescription),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.gotIt),
              ),'''

new_dialog = '''              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.discordSetupDescription,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      _buildStep(l10n.discordStep1Title, l10n.discordStep1Description),
                      const SizedBox(height: 12),
                      _buildStep(l10n.discordStep2Title, l10n.discordStep2Description),
                      const SizedBox(height: 12),
                      _buildStep(l10n.discordStep3Title, l10n.discordStep3Description),
                      const SizedBox(height: 12),
                      _buildStep(l10n.discordStep4Title, l10n.discordStep4Description),
                      const SizedBox(height: 12),
                      _buildStep(l10n.discordStep5Title, l10n.discordStep5Description),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.gotIt),
              ),'''

if old_dialog in content:
    content = content.replace(old_dialog, new_dialog)
    print('OK - Updated dialog with step-by-step instructions')
else:
    print('ERROR - Could not find dialog content')

# Now we need to add the _buildStep method to the dialog class
# First, check if _buildStep method exists in the dialog
if 'Widget _buildStep(String title, String description)' not in content:
    # Add the method before the closing of DiscordSetupHelpDialog
    method_code = '''

  Widget _buildStep(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 13,
          ),
        ),
      ],
    );
  }'''

    # Find the end of DiscordSetupHelpDialog and insert before it
    old_end = '''              FilledButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.gotIt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}'''

    new_end = '''              FilledButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.gotIt),
              ),
            ],
          ),
        ),
      ),
    );
  }''' + method_code + '''
}'''

    if old_end in content:
        content = content.replace(old_end, new_end)
        print('OK - Added _buildStep method to dialog')
    else:
        print('ERROR - Could not find dialog end')
else:
    print('INFO - _buildStep method already exists')

with open(r'C:\My Projects\AIRTA\lib\widgets\discord_settings_page.dart', 'w', encoding='utf-8') as f:
    f.write(content)

print('Done!')
