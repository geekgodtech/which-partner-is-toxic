import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:airta/controllers/toxicity_analyzer_controller.dart';
import 'package:airta/l10n/app_localizations.dart';

class ApiKeySettingsDialog extends StatefulWidget {
  const ApiKeySettingsDialog({super.key});

  @override
  State<ApiKeySettingsDialog> createState() => _ApiKeySettingsDialogState();
}

class _ApiKeySettingsDialogState extends State<ApiKeySettingsDialog> {
  final TextEditingController _apiKeyController = TextEditingController();
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    final controller = context.read<ToxicityAnalyzerController>();
    _apiKeyController.text = controller.apiKey ?? '';
  }

  @override
  void dispose() {
    _apiKeyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.read<ToxicityAnalyzerController>();
    final l10n = AppLocalizations.of(context)!;

    return AlertDialog(
      title: Text(l10n.deepSeekApiKey),
      content: SizedBox(
        width: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.enterYourDeepSeekApiKeyToEnableAiAnalysis,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Text(
              l10n.getYourApiKeyFrom,
              style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _apiKeyController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: l10n.apiKey,
                hintText: l10n.skPlaceholder,
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.info_outline, size: 20, color: Colors.blue),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      l10n.yourApiKeyIsStoredSecurely,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          onPressed: () async {
            final apiKey = _apiKeyController.text.trim();
            if (apiKey.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.pleaseEnterApiKey),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }

            await controller.saveApiKey(apiKey);

            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.apiKeySavedSuccessfully),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.of(context).pop();
            }
          },
          child: Text(l10n.save),
        ),
      ],
    );
  }
}
