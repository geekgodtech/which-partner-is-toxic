#!/usr/bin/env python3
"""Make LanguageSelector more compact on narrow screens"""

FILE_PATH = r"C:\My Projects\AIRTA\lib\widgets\language_selector.dart"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

# Add isNarrow check and update padding
old_code = '''        final currentLanguage = languageService.currentLanguage;
        final l10n = AppLocalizations.of(context)!;

        return PopupMenuButton<String>(
          tooltip: l10n.selectLanguageTooltip,
          offset: const Offset(0, 40),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),'''

new_code = '''        final currentLanguage = languageService.currentLanguage;
        final l10n = AppLocalizations.of(context)!;
        final mq = MediaQuery.of(context);
        final isNarrow = mq.size.width < 400;

        return PopupMenuButton<String>(
          tooltip: l10n.selectLanguageTooltip,
          offset: const Offset(0, 40),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: isNarrow ? 4 : 8, vertical: 4),'''

content = content.replace(old_code, new_code)

# Also update the font size for language code on narrow screens
old_font = '''                Text(
                  currentLanguage.code.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),'''

new_font = '''                Text(
                  currentLanguage.code.toUpperCase(),
                  style: TextStyle(
                    fontSize: isNarrow ? 9 : 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),'''

content = content.replace(old_font, new_font)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Fixed language_selector.dart - more compact on narrow screens")
