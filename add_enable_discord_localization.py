#!/usr/bin/env python3

enable_strings = {
    "en": "Enable Discord",
    "nl": "Discord inschakelen",
    "ar": "تفعيل Discord",
    "de": "Discord aktivieren",
    "es": "Habilitar Discord",
    "fr": "Activer Discord",
    "hi": "Discord सक्षम करें",
    "it": "Abilita Discord",
    "ja": "Discordを有効にする",
    "ko": "Discord 활성화",
    "pl": "Włącz Discord",
    "pt": "Ativar Discord",
    "ru": "Включить Discord",
    "tr": "Discord'u Etkinleştir",
    "uk": "Увімкнути Discord",
    "zh": "启用 Discord",
}

for lang, value in enable_strings.items():
    filepath = rf'C:\My Projects\AIRTA\lib\l10n\app_{lang}.arb'
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        if '"enableDiscord"' not in content and content.rstrip().endswith('}'):
            content = content.rstrip()[:-1] + f',\n  "enableDiscord": "{value}"\n}}'
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f'OK - Added to {lang}')
    except Exception as e:
        print(f'ERROR - {lang}: {e}')

print('Done!')
