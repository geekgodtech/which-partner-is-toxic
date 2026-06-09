#!/usr/bin/env python3
import os

# New localization key
new_key = "discordBotConfiguration"

# Languages to translate to
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

    # Find gotIt to insert before it
    if '"gotIt":' in content:
        marker = '"gotIt":'
    else:
        print(f'WARNING: Could not find gotIt marker in {arb_file}')
        continue

    # Get translation for this language
    translation = translations.get(lang, translations['en'])

    # For English file, already done
    if lang == 'en':
        continue

    # Simple entry for other languages
    new_entry = f'  "{new_key}": "{translation}",\n'

    # Insert before gotIt
    content = content.replace(f'  {marker}', new_entry + f'  {marker}')

    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

    print(f'OK - Added to {arb_file}')

print('Done!')
