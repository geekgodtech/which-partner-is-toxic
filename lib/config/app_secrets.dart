class AppSecrets {
  static const String deepSeekApiKey = String.fromEnvironment(
    'DEEPSEEK_API_KEY',
  );

  static bool get hasDeepSeekApiKey => deepSeekApiKey.trim().isNotEmpty;
}
