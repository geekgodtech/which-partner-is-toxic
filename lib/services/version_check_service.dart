import 'package:package_info_plus/package_info_plus.dart';
import 'remote_config_service.dart';

class VersionCheckService {
  final RemoteConfigService _remoteConfig = RemoteConfigService();

  Future<bool> isUpdateRequired() async {
    try {
      // Add timeout to prevent hanging
      await _remoteConfig.initialize().timeout(
        const Duration(seconds: 3),
        onTimeout: () {
          print('Remote Config initialization timed out');
          return;
        },
      );

      final packageInfo = await PackageInfo.fromPlatform();
      final currentVersion = packageInfo.version;
      final minRequiredVersion = _remoteConfig.minRequiredVersion;
      final forceUpdate = _remoteConfig.forceUpdate;

      if (!forceUpdate) return false;

      return _isVersionLower(currentVersion, minRequiredVersion);
    } catch (e) {
      print('Version check failed: $e');
      return false;
    }
  }

  bool _isVersionLower(String current, String minimum) {
    try {
      final currentParts = current.split('.').map(int.parse).toList();
      final minParts = minimum.split('.').map(int.parse).toList();

      for (int i = 0;
          i < 3 && i < currentParts.length && i < minParts.length;
          i++) {
        if (currentParts[i] < minParts[i]) return true;
        if (currentParts[i] > minParts[i]) return false;
      }
      return false;
    } catch (e) {
      print('Version comparison failed: $e');
      return false;
    }
  }

  String get updateMessage => _remoteConfig.updateMessage;
  String get androidStoreUrl => _remoteConfig.androidStoreUrl;
  String get iosStoreUrl => _remoteConfig.iosStoreUrl;
}
