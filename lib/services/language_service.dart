import 'dart:io' show Platform;
import 'dart:ui' show Locale;
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Supported languages with their display info
class SupportedLanguage {
  final String code;
  final String name;
  final String nativeName;
  final String flagEmoji;
  final Locale locale;

  const SupportedLanguage({
    required this.code,
    required this.name,
    required this.nativeName,
    required this.flagEmoji,
    required this.locale,
  });
}

/// Service for managing app language/locale
class LanguageService extends ChangeNotifier {
  static final LanguageService _instance = LanguageService._internal();
  factory LanguageService() => _instance;
  LanguageService._internal();

  static const String _languagePreferenceKey = 'app_language_code';

  // Default to English
  Locale _currentLocale = const Locale('en');
  Locale get currentLocale => _currentLocale;

  String get currentLanguageCode => _currentLocale.languageCode;

  /// All supported languages
  static const List<SupportedLanguage> supportedLanguages = [
    SupportedLanguage(
      code: 'en',
      name: 'English',
      nativeName: 'English',
      flagEmoji: '🇺🇸',
      locale: Locale('en'),
    ),
    SupportedLanguage(
      code: 'es',
      name: 'Spanish',
      nativeName: 'Español',
      flagEmoji: '🇪🇸',
      locale: Locale('es'),
    ),
    SupportedLanguage(
      code: 'fr',
      name: 'French',
      nativeName: 'Français',
      flagEmoji: '🇫🇷',
      locale: Locale('fr'),
    ),
    SupportedLanguage(
      code: 'de',
      name: 'German',
      nativeName: 'Deutsch',
      flagEmoji: '🇩🇪',
      locale: Locale('de'),
    ),
    SupportedLanguage(
      code: 'it',
      name: 'Italian',
      nativeName: 'Italiano',
      flagEmoji: '🇮🇹',
      locale: Locale('it'),
    ),
    SupportedLanguage(
      code: 'pt',
      name: 'Portuguese',
      nativeName: 'Português',
      flagEmoji: '🇵🇹',
      locale: Locale('pt'),
    ),
    SupportedLanguage(
      code: 'nl',
      name: 'Dutch',
      nativeName: 'Nederlands',
      flagEmoji: '🇳🇱',
      locale: Locale('nl'),
    ),
    SupportedLanguage(
      code: 'ru',
      name: 'Russian',
      nativeName: 'Русский',
      flagEmoji: '🇷🇺',
      locale: Locale('ru'),
    ),
    SupportedLanguage(
      code: 'zh',
      name: 'Chinese',
      nativeName: '中文',
      flagEmoji: '🇨🇳',
      locale: Locale('zh'),
    ),
    SupportedLanguage(
      code: 'ja',
      name: 'Japanese',
      nativeName: '日本語',
      flagEmoji: '🇯🇵',
      locale: Locale('ja'),
    ),
    SupportedLanguage(
      code: 'ko',
      name: 'Korean',
      nativeName: '한국어',
      flagEmoji: '🇰🇷',
      locale: Locale('ko'),
    ),
    SupportedLanguage(
      code: 'ar',
      name: 'Arabic',
      nativeName: 'العربية',
      flagEmoji: '🇸🇦',
      locale: Locale('ar'),
    ),
    SupportedLanguage(
      code: 'hi',
      name: 'Hindi',
      nativeName: 'हिन्दी',
      flagEmoji: '🇮🇳',
      locale: Locale('hi'),
    ),
    SupportedLanguage(
      code: 'tr',
      name: 'Turkish',
      nativeName: 'Türkçe',
      flagEmoji: '🇹🇷',
      locale: Locale('tr'),
    ),
    SupportedLanguage(
      code: 'pl',
      name: 'Polish',
      nativeName: 'Polski',
      flagEmoji: '🇵🇱',
      locale: Locale('pl'),
    ),
    SupportedLanguage(
      code: 'uk',
      name: 'Ukrainian',
      nativeName: 'Українська',
      flagEmoji: '🇺🇦',
      locale: Locale('uk'),
    ),
  ];

  /// Get language by code
  SupportedLanguage? getLanguageByCode(String code) {
    try {
      return supportedLanguages.firstWhere((lang) => lang.code == code);
    } catch (e) {
      return null;
    }
  }

  /// Get current language info
  SupportedLanguage get currentLanguage {
    return getLanguageByCode(_currentLocale.languageCode) ??
        supportedLanguages.first;
  }

  /// Initialize and load saved language preference
  /// On every launch, attempts to match system locale to supported languages
  /// Only uses saved preference if user manually selected a different language
  Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLanguage = prefs.getString(_languagePreferenceKey);

    // Always detect system locale on every launch
    final systemLocale = _getSystemLocale();
    final matchedLanguage = _findMatchingLanguage(systemLocale);

    if (savedLanguage != null) {
      // User has previously selected a language
      // Only use it if it differs from the system locale (manual selection)
      // If it matches the system locale, clear it and use system locale
      if (matchedLanguage != null && savedLanguage == matchedLanguage.code) {
        // Saved language matches system locale - clear saved preference
        await prefs.remove(_languagePreferenceKey);
        _currentLocale = matchedLanguage.locale;
        notifyListeners();
      } else {
        // Saved language differs from system locale - user manually selected it
        final language = getLanguageByCode(savedLanguage);
        if (language != null) {
          _currentLocale = language.locale;
          notifyListeners();
        }
      }
    } else {
      // No saved preference - use system locale
      if (matchedLanguage != null) {
        _currentLocale = matchedLanguage.locale;
        notifyListeners();
      }
      // If no match found, keep default English
    }
  }

  /// Get the system locale
  Locale _getSystemLocale() {
    try {
      final localeName = Platform.localeName;
      // Parse locale string (e.g., "en_US", "es_ES", "fr_FR")
      final parts = localeName.split('_');
      if (parts.isNotEmpty) {
        final languageCode = parts[0].toLowerCase();
        final countryCode = parts.length > 1 ? parts[1].toUpperCase() : null;
        return Locale(languageCode, countryCode);
      }
    } catch (e) {
      // Fallback if Platform.localeName fails
    }
    return const Locale('en');
  }

  /// Find a supported language that matches the system locale
  SupportedLanguage? _findMatchingLanguage(Locale systemLocale) {
    // First try exact match (language + country)
    if (systemLocale.countryCode != null) {
      try {
        return supportedLanguages.firstWhere(
          (lang) =>
              lang.locale.languageCode == systemLocale.languageCode &&
              lang.locale.countryCode == systemLocale.countryCode,
        );
      } catch (e) {
        // No exact match found, try language-only match
      }
    }

    // Try language-only match
    try {
      return supportedLanguages.firstWhere(
        (lang) => lang.locale.languageCode == systemLocale.languageCode,
      );
    } catch (e) {
      // No match found
      return null;
    }
  }

  /// Change the app language
  Future<void> setLanguage(String languageCode) async {
    final language = getLanguageByCode(languageCode);
    if (language == null) return;

    if (_currentLocale.languageCode == languageCode) return;

    _currentLocale = language.locale;

    // Save preference
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languagePreferenceKey, languageCode);

    notifyListeners();
  }

  /// Get the instruction for AI to generate content in current language
  String getAiLanguageInstruction() {
    final langName = currentLanguage.name;
    return 'Please provide all analysis, reports, and responses in $langName language.';
  }

  /// Supported locales for MaterialApp
  static List<Locale> get supportedLocales {
    return supportedLanguages.map((lang) => lang.locale).toList();
  }

  /// Locale resolution callback
  static Locale? localeResolutionCallback(
      Locale? locale, Iterable<Locale> supportedLocales) {
    if (locale == null) return const Locale('en');

    // Check for exact match
    for (final supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return supportedLocale;
      }
    }

    // Default to English
    return const Locale('en');
  }
}
