import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../services/version_check_service.dart';
import '../services/remote_config_service.dart';

class ForceUpdateScreen extends StatelessWidget {
  final VersionCheckService _versionService = VersionCheckService();
  final RemoteConfigService _remoteConfig = RemoteConfigService();

  ForceUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.system_update,
                size: 100,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 32),
              const Text(
                'Update Required',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                _versionService.updateMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              if (_remoteConfig.discordAddonEnabled) ...[
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '✨ What\'s New:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 12),
                      if (_remoteConfig.isPlatformSupported('discord'))
                        const Text('• Discord server channel analysis'),
                      const Text('• Import up to 10,000 messages'),
                      const Text('• Full AI toxicity analysis'),
                      const Text('• Enhanced AI insights'),
                      const Text('• Improved performance'),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.green.shade200),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        '🎉 New Add-On Available!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Discord Addon: +\$${_remoteConfig.discordAddonPrice}/month',
                        style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Add to your Standard membership',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => _openStore(),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Update Now'),
              ),
              const SizedBox(height: 16),
              const Text(
                'This update is required to continue using the app',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _openStore() async {
    String url;
    if (Platform.isAndroid) {
      url = _versionService.androidStoreUrl;
    } else if (Platform.isIOS) {
      url = _versionService.iosStoreUrl;
    } else {
      return;
    }

    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
