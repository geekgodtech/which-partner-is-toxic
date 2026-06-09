import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../l10n/app_localizations.dart';
import '../controllers/toxicity_analyzer_controller.dart';

class DiscordSettingsPage extends StatefulWidget {
  const DiscordSettingsPage({super.key});

  @override
  State<DiscordSettingsPage> createState() => _DiscordSettingsPageState();
}

class _DiscordSettingsPageState extends State<DiscordSettingsPage> {
  final _botTokenController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _saving = false;
  bool _saved = false;

  @override
  void initState() {
    super.initState();
    _loadSavedToken();
  }

  Future<void> _loadSavedToken() async {
    final prefs = await SharedPreferences.getInstance();
    final savedToken = prefs.getString('discord_bot_token') ?? '';
    if (savedToken.isNotEmpty) {
      // Mask the token for display (show last 8 chars)
      setState(() {
        _botTokenController.text = '••••••••' + savedToken.substring(savedToken.length - 8);
      });
    }
  }

  Future<void> _saveToken() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _saving = true;
      _saved = false;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('discord_bot_token', _botTokenController.text.trim());

      setState(() {
        _saving = false;
        _saved = true;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bot token saved successfully'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      setState(() {
        _saving = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to save: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _testConnection() async {
    // This would test the connection - placeholder for now
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Connection test not yet implemented'),
        backgroundColor: Colors.orange,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Discord Bot Configuration'),
        backgroundColor: const Color(0xFF5865F2),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Icon(Icons.discord, color: const Color(0xFF5865F2), size: 32),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Bot Token Setup',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Enter your Discord bot token below. This is required to access your Discord servers and channels.',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 24),

              // Instructions card
              Card(
                color: theme.colorScheme.primaryContainer.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Where to find your bot token:',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _buildStep('1', 'Go to discord.com/developers'),
                      _buildStep('2', 'Click on your application'),
                      _buildStep('3', 'Go to "Bot" section'),
                      _buildStep('4', 'Click "Reset Token" if needed'),
                      _buildStep('5', 'Copy the token and paste it below'),
                      const SizedBox(height: 12),
                      Text(
                        '⚠️ Never share this token with anyone!',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Bot Token Field
              TextFormField(
                controller: _botTokenController,
                decoration: InputDecoration(
                  labelText: 'Bot Token',
                  hintText: 'Paste your Discord bot token here',
                  prefixIcon: const Icon(Icons.vpn_key),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your bot token';
                  }
                  if (value.trim().length < 20) {
                    return 'Token appears too short';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Action buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: _saving ? null : _saveToken,
                      icon: _saving
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.save),
                      label: Text(_saving ? 'Saving...' : 'Save Token'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5865F2),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 48),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: _testConnection,
                      icon: const Icon(Icons.check_circle_outline),
                      label: const Text('Test Connection'),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 48),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Back to help link
              Center(
                child: TextButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const DiscordSetupHelpDialog(),
                    );
                  },
                  icon: const Icon(Icons.help_outline),
                  label: const Text('View Full Setup Instructions'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStep(String number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$number. ',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}

// Dialog version of the setup help for the settings page
class DiscordSetupHelpDialog extends StatelessWidget {
  const DiscordSetupHelpDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Dialog(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600, maxHeight: 600),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(Icons.discord, color: Color(0xFF5865F2), size: 32),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      l10n.discordSetupTitle,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const SizedBox(height: 16),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

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
  }
}
