#!/usr/bin/env python3
import json
import os

# New localization key
new_key = "discordBotConfiguration"
new_value_en = "Bot Configuration"
new_description = "Button to go to bot configuration page"

# Languages to translate to (using simple translations for now)
translations = {
    'en': 'Bot Configuration',
    'es': 'Configuración del Bot',
    'fr': 'Configuration du Bot',
    'de': 'Bot-Konfiguration',
    'it': 'Configurazione Bot',
    'pt': 'Configuração do Bot',
    'nl': 'Bot Configuratie',
    'pl': 'Konfiguracja Bota',
    'ru': 'Конфигурация Бота',
    'uk': 'Конфігурація Бота',
    'tr': 'Bot Yapılandırması',
    'ar': 'تكوين البوت',
    'hi': 'बॉट कॉन्फ़िगरेशन',
    'zh': '机器人配置',
    'ja': 'ボット設定',
    'ko': '봇 구성',
}

l10n_dir = r'C:\My Projects\AIRTA\lib\l10n'

# Find all .arb files
arb_files = [f for f in os.listdir(l10n_dir) if f.endswith('.arb')]

for arb_file in arb_files:
    filepath = os.path.join(l10n_dir, arb_file)

    # Get language code from filename (app_en.arb -> en)
    lang = arb_file.replace('app_', '').replace('.arb', '')

    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Check if key already exists
    if f'"{new_key}"' in content:
        print(f'Skipping {arb_file} - key already exists')
        continue

    # Find the position to insert (after discordStep5Description)
    insert_marker = '"@discordStep5Description": {\n    "description": "Step 5 description for Discord setup"\n  },'

    if insert_marker not in content:
        print(f'WARNING: Could not find insert marker in {arb_file}')
        continue

    # Get translation for this language
    translation = translations.get(lang, new_value_en)

    # Create the new entry
    new_entry = f'''  "{new_key}": "{translation}",
  "@{new_key}": {{
    "description": "{new_description}"
  }},'''

    # Insert after the marker
    content = content.replace(insert_marker, insert_marker + '\n' + new_entry)

    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

    print(f'OK - Added to {arb_file}: {translation}')

print('Done!')
