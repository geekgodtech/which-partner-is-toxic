#!/usr/bin/env python3

# 1. Update the icon to info and make it more prominent
with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'r', encoding='utf-8') as f:
    content = f.read()

old_icon = '''            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Icon(
                  Icons.help_outline,
                  size: 18,
                  color: theme.colorScheme.onSurface.withOpacity(0.5),
                ),
              ),
            ),'''

new_icon = '''            // Info icon - more prominent, indicates setup information
            InkWell(
              onTap: () => _showDiscordHelp(context),
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xFF5865F2).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(
                  Icons.info_outline,
                  size: 20,
                  color: Color(0xFF5865F2),
                ),
              ),
            ),'''

if old_icon in content:
    content = content.replace(old_icon, new_icon)
    print('OK - Updated info icon')
else:
    print('WARNING - Could not find icon pattern')

# 2. Change button text to use selectChannel string (we'll create this)
old_button_text = 'l10n.selectDiscord,'
new_button_text = 'l10n.selectDiscordChannel,'

if old_button_text in content:
    content = content.replace(old_button_text, new_button_text)
    print('OK - Updated button text to use selectDiscordChannel')

with open(r'C:\My Projects\AIRTA\lib\widgets\dashboard_control_pane.dart', 'w', encoding='utf-8') as f:
    f.write(content)

# 3. Update localization strings to be shorter (just "Select Channel" / "Selecteer kanaal" etc.)
select_channel_translations = {
    "en": "Select Channel",
    "nl": "Selecteer kanaal",
    "ar": "اختر القناة",
    "de": "Kanal wählen",
    "es": "Seleccionar canal",
    "fr": "Sélectionner canal",
    "hi": "चैनल चुनें",
    "it": "Seleziona canale",
    "ja": "チャンネルを選択",
    "ko": "채널 선택",
    "pl": "Wybierz kanał",
    "pt": "Selecionar canal",
    "ru": "Выбрать канал",
    "tr": "Kanal seç",
    "uk": "Вибрати канал",
    "zh": "选择频道",
}

# Update selectDiscordChannel to be the short version
for lang, value in select_channel_translations.items():
    filepath = rf'C:\My Projects\AIRTA\lib\l10n\app_{lang}.arb'
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            arb_content = f.read()

        # Replace the long selectDiscordChannel with short version
        import re
        # Pattern to find "selectDiscordChannel": "..." and replace value
        pattern = r'"selectDiscordChannel":\s*"[^"]*"'
        replacement = f'"selectDiscordChannel": "{value}"'
        new_content = re.sub(pattern, replacement, arb_content)

        if new_content != arb_content:
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f'OK - Updated {lang} to "{value}"')
    except Exception as e:
        print(f'ERROR - {lang}: {e}')

print('Done!')
