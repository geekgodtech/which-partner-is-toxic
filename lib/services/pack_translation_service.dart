import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

/// Service to auto-translate user-submitted metric packs to all supported languages.
/// Uses DeepSeek AI for translation.
class PackTranslationService {
  static final PackTranslationService _instance = PackTranslationService._internal();
  factory PackTranslationService() => _instance;
  PackTranslationService._internal();

  /// DeepSeek API configuration
  static const String _apiKey = String.fromEnvironment('DEEPSEEK_API_KEY');
  static const String _apiUrl = 'https://api.deepseek.com/chat/completions';

  /// All supported languages for pack translation
  static const Map<String, String> _languageNames = {
    'en': 'English',
    'es': 'Spanish',
    'fr': 'French',
    'de': 'German',
    'it': 'Italian',
    'pt': 'Portuguese',
    'nl': 'Dutch',
    'pl': 'Polish',
    'ru': 'Russian',
    'tr': 'Turkish',
    'uk': 'Ukrainian',
    'ar': 'Arabic',
    'zh': 'Chinese',
    'ja': 'Japanese',
    'ko': 'Korean',
    'hi': 'Hindi',
  };

  /// Translate a pack to all supported languages and save to Firestore.
  /// Called when a pack is approved.
  Future<bool> translatePackToAllLanguages(String packId) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final doc = await firestore.collection('user_submitted_packs').doc(packId).get();

      if (!doc.exists) {
        debugPrint('PackTranslationService: Pack $packId not found');
        return false;
      }

      final data = doc.data() as Map<String, dynamic>;
      final originalLang = data['submissionLanguage'] as String? ?? 'en';
      final packName = data['packName'] as String? ?? '';
      final metrics = data['metrics'] as List<dynamic>? ?? [];

      // Skip if already translated
      if (data.containsKey('translations') &&
          (data['translations'] as Map<String, dynamic>).length >= _languageNames.length) {
        debugPrint('PackTranslationService: Pack $packId already translated');
        return true;
      }

      final translations = <String, dynamic>{};

      // Translate to each language (except original)
      for (final langCode in _languageNames.keys) {
        if (langCode == originalLang) {
          // Original language - store as-is
          translations[langCode] = {
            'packName': packName,
            'metrics': metrics,
            'isOriginal': true,
          };
          continue;
        }

        // Translate using AI
        final translated = await _translateMetrics(
          packName: packName,
          metrics: metrics.cast<Map<String, dynamic>>(),
          targetLanguage: _languageNames[langCode]!,
          sourceLanguage: _languageNames[originalLang]!,
        );

        if (translated != null) {
          translations[langCode] = translated;
        } else {
          // Fallback to original if translation fails
          translations[langCode] = {
            'packName': packName,
            'metrics': metrics,
            'isFallback': true,
          };
        }

        // Small delay to avoid rate limiting
        await Future.delayed(const Duration(milliseconds: 100));
      }

      // Save translations to Firestore
      await firestore.collection('user_submitted_packs').doc(packId).update({
        'translations': translations,
        'translatedAt': FieldValue.serverTimestamp(),
        'translationComplete': true,
      });

      debugPrint('PackTranslationService: Translated pack $packId to ${translations.length} languages');
      return true;
    } catch (e) {
      debugPrint('PackTranslationService.translatePackToAllLanguages error: $e');
      return false;
    }
  }

  /// Translate metrics to a specific language using DeepSeek API.
  Future<Map<String, dynamic>?> _translateMetrics({
    required String packName,
    required List<Map<String, dynamic>> metrics,
    required String targetLanguage,
    required String sourceLanguage,
  }) async {
    try {
      if (_apiKey.isEmpty) {
        debugPrint('PackTranslationService: No API key available');
        return null;
      }

      // Build the prompt
      final metricsJson = jsonEncode(metrics.map((m) => {
        'name': m['name'],
        'definition': m['definition'],
      }).toList());

      final prompt = '''Translate the following metric pack from $sourceLanguage to $targetLanguage.

Pack Name: "$packName"

Metrics:
$metricsJson

Please provide the translation in this exact JSON format:
{
  "packName": "translated pack name",
  "metrics": [
    {"name": "translated name", "definition": "translated definition"},
    ...
  ]
}

Important:
- Keep the same number of metrics
- Maintain psychological accuracy
- Use natural, native expressions
- Keep definitions concise but clear''';

      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode({
          'model': 'deepseek-chat',
          'messages': [
            {'role': 'system', 'content': 'You are a professional translator specializing in psychological and behavioral terminology.'},
            {'role': 'user', 'content': prompt},
          ],
          'temperature': 0.3,
          'max_tokens': 4000,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final content = data['choices']?[0]?['message']?['content'] as String?;

        if (content != null) {
          // Extract JSON from response (it might be wrapped in markdown)
          final jsonMatch = RegExp(r'\{[\s\S]*\}').firstMatch(content);
          if (jsonMatch != null) {
            final jsonStr = jsonMatch.group(0)!;
            final translation = jsonDecode(jsonStr) as Map<String, dynamic>;
            return {
              ...translation,
              'isAutoTranslated': true,
            };
          }
        }
      } else {
        debugPrint('PackTranslationService API error: ${response.statusCode} ${response.body}');
      }

      return null;
    } catch (e) {
      debugPrint('PackTranslationService._translateMetrics error: $e');
      return null;
    }
  }

  /// Get the display name for a language code.
  String getLanguageName(String langCode) {
    return _languageNames[langCode] ?? langCode.toUpperCase();
  }

  /// Check if a pack has translations available.
  Future<bool> hasTranslations(String packId) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final doc = await firestore.collection('user_submitted_packs').doc(packId).get();
      if (!doc.exists) return false;

      final data = doc.data() as Map<String, dynamic>;
      return data.containsKey('translations') && data['translationComplete'] == true;
    } catch (e) {
      debugPrint('PackTranslationService.hasTranslations error: $e');
      return false;
    }
  }

  /// Auto-translate all packs (approved + pending_review) that haven't been
  /// translated yet. pending_review packs are auto-approved after translation.
  Future<int> autoTranslateAllPending() async {
    try {
      final firestore = FirebaseFirestore.instance;

      // Fetch both approved and pending_review packs needing translation
      final results = await Future.wait([
        firestore
            .collection('user_submitted_packs')
            .where('status', isEqualTo: 'approved')
            .where('translationComplete', isEqualTo: false)
            .limit(10)
            .get(),
        firestore
            .collection('user_submitted_packs')
            .where('status', isEqualTo: 'pending_review')
            .where('translationComplete', isEqualTo: false)
            .limit(10)
            .get(),
      ]);

      final allDocs = [...results[0].docs, ...results[1].docs];

      int translated = 0;
      for (final doc in allDocs) {
        final success = await translatePackToAllLanguages(doc.id);
        if (success) {
          translated++;
          // Auto-approve pending_review packs once translation completes
          final data = doc.data();
          if ((data['status'] as String?) == 'pending_review') {
            await firestore
                .collection('user_submitted_packs')
                .doc(doc.id)
                .update({
              'status': 'approved',
              'approvedAt': FieldValue.serverTimestamp(),
            });
            debugPrint('PackTranslationService: Auto-approved pack ${doc.id}');
          }
        }
        // Delay to avoid rate limiting
        await Future.delayed(const Duration(milliseconds: 200));
      }

      debugPrint('PackTranslationService: Auto-translated $translated packs');
      return translated;
    } catch (e) {
      debugPrint('PackTranslationService.autoTranslateAllPending error: $e');
      return 0;
    }
  }
}
