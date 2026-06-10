"""
patch_remaining.py - Fix remaining non-discord missing/untranslated keys.
Run: python tools/patch_remaining.py  (from C:\My Projects\AIRTA)
"""
import json
import sys
sys.stdout.reconfigure(encoding='utf-8')

ARB_DIR = r'C:\My Projects\AIRTA\lib\l10n'


def load(lang):
    with open(f'{ARB_DIR}/app_{lang}.arb', encoding='utf-8') as f:
        return json.load(f)


def save(lang, arb):
    with open(f'{ARB_DIR}/app_{lang}.arb', 'w', encoding='utf-8') as f:
        json.dump(arb, f, ensure_ascii=False, indent=2)
    print(f'  Saved app_{lang}.arb')


# Keys that are intentionally kept in English (proper nouns / universal labels)
UNIVERSAL_ENGLISH = {
    'github': 'GitHub',
    'proPlusLabel': 'Pro+',
    'okButton': 'OK',
    'ok': 'OK',
    'standard': 'Standard',
    'skPlaceholder': 'sk-...',
    'upgradeButton': 'Upgrade',
    'supportEmail': 'Support',
    'importantLinks': 'Links',
    'hindi': 'Hindi',
}

# Per-language patches for non-discord, non-proper-noun keys
PATCHES = {
    'de': {
        'dateRangeOptional': '(optional)',
        'name': 'Name',
        'metric_bad_1_name': 'Passive-Aggressivit\u00e4t',
    },
    'fr': {
        'conversations': 'Conversations',
        'messages': 'Messages',
        'contactsPermission': 'Contacts',
        'metric_14_name': 'Invalidation',
        'metric_28_name': 'Projection',
    },
    'it': {
        'report': 'Report',
        'businessEmail': 'Business',
        'privacyEmail': 'Privacy',
        'passwordLabel': 'Password',
    },
    'nl': {
        'filters': 'Filters',
        'recent': 'Recent',
        'platformCredentialsTitle': 'Platformreferenties',
        'privacyEmail': 'Privacy',
        'website': 'Website',
    },
    'pt': {
        'metric_narcissist_48_name': 'Pseudo-Insight',
    },
    'es': {
        'error': 'Error',
        'packTheGood': 'El Bueno',
        'packTheBad': 'El Malo',
        'packTheUgly': 'El Feo',
        'packTheNarcissist': 'El Narcisista',
        'metricsExpansionPack': 'Paquete de expansi\u00f3n de m\u00e9tricas',
        'purchaseTitle': 'Comprar {title}',
        'buyForPrice': 'Comprar por {price}',
        'processingPurchase': 'Procesando compra...',
        'waitingForStoreConfirmation': 'Esperando confirmaci\u00f3n de la tienda...',
        'myMetricList': 'Mi lista de m\u00e9tricas',
        'botTokenSaved': 'Token del bot guardado correctamente',
        'failedToSaveError': 'Error al guardar: {error}',
        'connectionTestNotImplemented': 'Prueba de conexi\u00f3n a\u00fan no implementada',
        'pasteDiscordBotTokenHint': 'Pega tu token de bot de Discord aqu\u00ed',
        'botTokenLabel': 'Token del bot',
        'botConfigButton': 'Config. de bot',
        'customMetricPurchasePlaceholder': 'La compra de m\u00e9tricas personalizadas comenzar\u00eda aqu\u00ed',
        'configureBotToken': 'Configurar token de bot',
        'retryButton': 'Reintentar',
        'ownerLabel': 'Propietario',
        'noMessagesInChannel': 'No se encontraron mensajes en este canal',
        'failedToImportError': 'Error al importar: {error}',
        'proMembershipUpsell': 'Members\u00eda Pro - $0.99/mes',
        'unlockForPrice': 'Desbloquear por {price}',
        'startCapture': 'Iniciar captura',
        'finishAndProcess': 'Finalizar y procesar',
        'cancelButton': 'Cancelar',
        'processScreenshots': 'Procesar capturas de pantalla',
        'startOver': 'Empezar de nuevo',
        'capturingStatus': 'Capturando...',
        'captureComplete': 'Captura completa',
        'errorDialogTitle': 'Error',
        'failedToLoadConversation': 'Error al cargar la conversaci\u00f3n: {error}',
        'selectConversationTitle': 'Seleccionar conversaci\u00f3n',
        'platformCredentialsTitle': 'Credenciales de la plataforma',
        'saveCredentialsTooltip': 'Guardar credenciales',
        'upgradeToProPlusTitle': 'Mejorar a Pro Plus',
        'upgradeNowButton': 'Actualizar ahora',
        'selectLanguageTooltip': 'Seleccionar idioma',
        'nextSizeButton': 'Siguiente tama\u00f1o',
        'startSequenceButton': 'Iniciar secuencia',
        'nextSizeInstruction': 'Clic en "Siguiente tama\u00f1o" para la siguiente dimensi\u00f3n',
    },
}

en = load('en')
ALL_LANGS = ['ar', 'de', 'es', 'fr', 'hi', 'it', 'ja', 'ko', 'nl', 'pl', 'pt', 'ru', 'tr', 'uk', 'zh']

changed = 0
for lang in ALL_LANGS:
    arb = load(lang)
    dirty = False

    # Add universal English-only keys if missing
    for k, v in UNIVERSAL_ENGLISH.items():
        if k not in arb:
            arb[k] = v
            dirty = True

    # Apply per-language patches
    if lang in PATCHES:
        for k, v in PATCHES[lang].items():
            # Add if missing, or fix if it still has the English value
            if k not in arb or arb.get(k) == en.get(k):
                arb[k] = v
                dirty = True

    if dirty:
        save(lang, arb)
        changed += 1
    else:
        print(f'  {lang}: no changes needed')

print(f'\nDone. {changed} files updated.')
