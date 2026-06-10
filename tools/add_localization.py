"""
Adds full 16-language localization to docs/index.html.
- Inserts a language selector into the header
- Adds i18n CSS
- Injects a TRANSLATIONS object and applyLang() function
- Adds data-i18n attributes to all translatable elements
"""
import re

path = r'C:\My Projects\AIRTA\docs\index.html'
content = open(path, encoding='utf-8').read()

# ─────────────────────────────────────────────────────────────────────────────
# 1.  CSS for the language selector
# ─────────────────────────────────────────────────────────────────────────────
lang_css = """
    /* Language selector */
    .lang-selector { display: flex; justify-content: center; align-items: center; gap: 8px; margin-top: 16px; flex-wrap: wrap; }
    .lang-btn { background: #1a1a3a; border: 1px solid #3a3a6a; border-radius: 6px; color: #a0a0c0; font-size: 0.78rem; padding: 5px 10px; cursor: pointer; transition: all 0.15s; white-space: nowrap; }
    .lang-btn:hover { background: #2a2a5a; color: #d0d0ff; }
    .lang-btn.active { background: #3030aa; border-color: #6060ff; color: #ffffff; font-weight: 600; }
    [dir="rtl"] { text-align: right; }
"""
content = content.replace('  </style>', lang_css + '  </style>')

# ─────────────────────────────────────────────────────────────────────────────
# 2.  Language selector HTML — insert after the badges div in <header>
# ─────────────────────────────────────────────────────────────────────────────
lang_html = """  <div class="lang-selector" id="langSelector">
    <button class="lang-btn active" onclick="setLang('en')">EN</button>
    <button class="lang-btn" onclick="setLang('es')">ES</button>
    <button class="lang-btn" onclick="setLang('fr')">FR</button>
    <button class="lang-btn" onclick="setLang('de')">DE</button>
    <button class="lang-btn" onclick="setLang('pt')">PT</button>
    <button class="lang-btn" onclick="setLang('it')">IT</button>
    <button class="lang-btn" onclick="setLang('ja')">JA</button>
    <button class="lang-btn" onclick="setLang('ko')">KO</button>
    <button class="lang-btn" onclick="setLang('zh')">ZH</button>
    <button class="lang-btn" onclick="setLang('ar')">AR</button>
    <button class="lang-btn" onclick="setLang('hi')">HI</button>
    <button class="lang-btn" onclick="setLang('ru')">RU</button>
    <button class="lang-btn" onclick="setLang('nl')">NL</button>
    <button class="lang-btn" onclick="setLang('tr')">TR</button>
    <button class="lang-btn" onclick="setLang('pl')">PL</button>
    <button class="lang-btn" onclick="setLang('uk')">UK</button>
  </div>
"""
content = content.replace('</header>', lang_html + '</header>')

# ─────────────────────────────────────────────────────────────────────────────
# 3.  Add data-i18n attributes to translatable elements
# ─────────────────────────────────────────────────────────────────────────────

# Try It heading
content = content.replace(
    '<h2 id="try-it">Try It Out</h2>',
    '<h2 id="try-it" data-i18n="try_it_title">Try It Out</h2>'
)
# Subtitle
content = content.replace(
    '<p class="tryit-subtitle">Upload a text conversation file. Select how many metrics to analyze. Get your uncensored report.</p>',
    '<p class="tryit-subtitle" data-i18n="try_it_subtitle">Upload a text conversation file. Select how many metrics to analyze. Get your uncensored report.</p>'
)
# Step 1 heading
content = content.replace(
    '<h3>1. Load Conversation</h3>',
    '<h3 data-i18n="load_conversation">1. Load Conversation</h3>'
)
# Step 1 desc
content = content.replace(
    '<p>Upload a .txt or .csv file containing a conversation (SMS export, chat log, WhatsApp export, etc.)</p>',
    '<p data-i18n="load_conversation_desc">Upload a .txt or .csv file containing a conversation (SMS export, chat log, WhatsApp export, etc.)</p>'
)
# File drop text
content = content.replace(
    '<div class="text">Click or drop a .txt / .csv file here</div>',
    '<div class="text" data-i18n="file_drop_text">Click or drop a .txt / .csv file here</div>'
)
# Step 2 heading
content = content.replace(
    '<h3 style="margin-top:24px;">2. Choose Random Metrics</h3>',
    '<h3 style="margin-top:24px;" data-i18n="choose_metrics">2. Choose Random Metrics</h3>'
)
# Step 2 desc
content = content.replace(
    '<p>Select how many of the 20 available metrics to randomly analyze.</p>',
    '<p data-i18n="choose_metrics_desc">Select how many of the 50 available metrics to randomly analyze.</p>'
)
# Metrics label
content = content.replace(
    '<span class="slider-label">Metrics to analyze:</span>',
    '<span class="slider-label" data-i18n="metrics_label">Metrics to analyze:</span>'
)
# Step 3 heading
content = content.replace(
    '<h3 style="margin-top:24px;">3. Quick Check</h3>',
    '<h3 style="margin-top:24px;" data-i18n="quick_check">3. Quick Check</h3>'
)
# Analyze button
content = content.replace(
    '          🔬 Analyze Conversation\n        </button>',
    '          <span data-i18n="analyze_btn">🔬 Analyze Conversation</span>\n        </button>'
)
# Report header
content = content.replace(
    '<h2>🧠 AIRTA Analysis Report</h2>',
    '<h2 data-i18n="report_title">🧠 AIRTA Analysis Report</h2>'
)
# Action buttons
content = content.replace(
    'onclick="printReport()">🖨️ Print</button>',
    'onclick="printReport()"><span data-i18n="btn_print">🖨️ Print</span></button>'
)
content = content.replace(
    'onclick="saveReport()">💾 Save as PDF</button>',
    'onclick="saveReport()"><span data-i18n="btn_save_pdf">💾 Save as PDF</span></button>'
)
content = content.replace(
    'onclick="shareReport()">🔗 Share</button>',
    'onclick="shareReport()"><span data-i18n="btn_share">🔗 Share</span></button>'
)
content = content.replace(
    'onclick="resetDemo()">🔄 New Analysis</button>',
    'onclick="resetDemo()"><span data-i18n="btn_new_analysis">🔄 New Analysis</span></button>'
)
# PDF Preview accordion label
content = content.replace(
    '<span>📄 PDF Preview</span>',
    '<span data-i18n="pdf_preview">📄 PDF Preview</span>'
)
# Report sections
content = content.replace(
    '<h3>⚖️ Forensic Verdict</h3>',
    '<h3 data-i18n="forensic_verdict">⚖️ Forensic Verdict</h3>'
)
content = content.replace(
    '<h3>🎯 Primary Problem Conclusion</h3>',
    '<h3 data-i18n="primary_conclusion">🎯 Primary Problem Conclusion</h3>'
)
# Individual Analysis heading
content = content.replace(
    '<h3 style="color:#a0a0c0; font-size:0.95rem; margin-bottom:12px;">Individual Analysis</h3>',
    '<h3 style="color:#a0a0c0; font-size:0.95rem; margin-bottom:12px;" data-i18n="individual_analysis">Individual Analysis</h3>'
)

# ─────────────────────────────────────────────────────────────────────────────
# 4.  Translations JS object + applyLang() — insert before closing </script>
# ─────────────────────────────────────────────────────────────────────────────
i18n_js = r"""
// ── Localization ─────────────────────────────────────────────────────────────
const TRANSLATIONS = {
  en: {
    try_it_title: 'Try It Out',
    try_it_subtitle: 'Upload a text conversation file. Select how many metrics to analyze. Get your uncensored report.',
    load_conversation: '1. Load Conversation',
    load_conversation_desc: 'Upload a .txt or .csv file containing a conversation (SMS export, chat log, WhatsApp export, etc.)',
    file_drop_text: 'Click or drop a .txt / .csv file here',
    choose_metrics: '2. Choose Random Metrics',
    choose_metrics_desc: 'Select how many of the 50 available metrics to randomly analyze.',
    metrics_label: 'Metrics to analyze:',
    quick_check: '3. Quick Check',
    math_question: 'What is {a} + {b} =',
    verified: '\u2713 Verified',
    analyze_btn: '\uD83D\uDD2C Analyze Conversation',
    report_title: '\uD83E\uDDE0 AIRTA Analysis Report',
    btn_print: '\uD83D\uDDA8\uFE0F Print',
    btn_save_pdf: '\uD83D\uDCBE Save as PDF',
    btn_share: '\uD83D\uDD17 Share',
    btn_new_analysis: '\uD83D\uDD04 New Analysis',
    pdf_preview: '\uD83D\uDCC4 PDF Preview',
    exec_summary: 'Executive Summary',
    metric_scores: 'Metric Scores',
    evidence_examples: 'Evidence Examples',
    individual_analysis: 'Individual Analysis',
    forensic_verdict: '\u2696\uFE0F Forensic Verdict',
    primary_conclusion: '\uD83C\uDFAF Primary Problem Conclusion',
    analyzing: 'AI is analyzing psychological patterns\u2026',
    error_prefix: 'Error:',
    file_loaded: '\u2713 Loaded:',
    limit_reached: "You've used your 2 free demo analyses. Download the app for unlimited access!",
    individual_analysis_label: 'Individual Analysis',
  },
  es: {
    try_it_title: 'Pruébalo',
    try_it_subtitle: 'Carga un archivo de conversación de texto. Selecciona cuántas métricas analizar. Obtén tu informe sin censura.',
    load_conversation: '1. Cargar Conversación',
    load_conversation_desc: 'Carga un archivo .txt o .csv que contenga una conversación (exportación de SMS, registro de chat, exportación de WhatsApp, etc.)',
    file_drop_text: 'Arrastra y suelta o haz clic para seleccionar',
    choose_metrics: '2. Elegir Métricas Aleatorias',
    choose_metrics_desc: 'Selecciona cuántas de las 50 métricas disponibles analizar aleatoriamente.',
    metrics_label: 'Métricas a analizar:',
    quick_check: '3. Verificación Rápida',
    math_question: '¿Cuánto es {a} + {b} =',
    verified: '\u2713 Verificado',
    analyze_btn: '\uD83D\uDD2C Analizar Conversación',
    report_title: '\uD83E\uDDE0 Informe de Análisis AIRTA',
    btn_print: '\uD83D\uDDA8\uFE0F Imprimir',
    btn_save_pdf: '\uD83D\uDCBE Guardar como PDF',
    btn_share: '\uD83D\uDD17 Compartir',
    btn_new_analysis: '\uD83D\uDD04 Nuevo Análisis',
    pdf_preview: '\uD83D\uDCC4 Vista Previa PDF',
    exec_summary: 'Resumen Ejecutivo',
    metric_scores: 'Puntuaciones de Métricas',
    evidence_examples: 'Ejemplos de Evidencia',
    individual_analysis: 'Análisis Individual',
    forensic_verdict: '\u2696\uFE0F Veredicto Forense',
    primary_conclusion: '\uD83C\uDFAF Conclusión del Problema Principal',
    analyzing: 'La IA está analizando patrones psicológicos\u2026',
    error_prefix: 'Error:',
    file_loaded: '\u2713 Cargado:',
    limit_reached: 'Has usado tus 2 análisis de demostración gratuitos. ¡Descarga la aplicación para acceso ilimitado!',
  },
  fr: {
    try_it_title: 'Essayez-le',
    try_it_subtitle: 'Téléchargez un fichier de conversation texte. Sélectionnez le nombre de métriques à analyser. Obtenez votre rapport sans censure.',
    load_conversation: '1. Charger une Conversation',
    load_conversation_desc: 'Téléchargez un fichier .txt ou .csv contenant une conversation (export SMS, journal de chat, export WhatsApp, etc.)',
    file_drop_text: 'Glissez-déposez ou cliquez pour sélectionner',
    choose_metrics: '2. Choisir des Métriques Aléatoires',
    choose_metrics_desc: 'Sélectionnez le nombre de métriques parmi les 50 disponibles à analyser aléatoirement.',
    metrics_label: 'Métriques à analyser\u00a0:',
    quick_check: '3. Vérification Rapide',
    math_question: 'Combien fait {a} + {b} =',
    verified: '\u2713 Vérifié',
    analyze_btn: '\uD83D\uDD2C Analyser la Conversation',
    report_title: '\uD83E\uDDE0 Rapport d\'Analyse AIRTA',
    btn_print: '\uD83D\uDDA8\uFE0F Imprimer',
    btn_save_pdf: '\uD83D\uDCBE Enregistrer en PDF',
    btn_share: '\uD83D\uDD17 Partager',
    btn_new_analysis: '\uD83D\uDD04 Nouvelle Analyse',
    pdf_preview: '\uD83D\uDCC4 Aperçu PDF',
    exec_summary: 'Résumé Exécutif',
    metric_scores: 'Scores des Métriques',
    evidence_examples: 'Exemples de Preuves',
    individual_analysis: 'Analyse Individuelle',
    forensic_verdict: '\u2696\uFE0F Verdict Judiciaire',
    primary_conclusion: '\uD83C\uDFAF Conclusion du Problème Principal',
    analyzing: 'L\'IA analyse les schémas psychologiques\u2026',
    error_prefix: 'Erreur\u00a0:',
    file_loaded: '\u2713 Chargé\u00a0:',
    limit_reached: 'Vous avez utilisé vos 2 analyses de démonstration gratuites. Téléchargez l\'application pour un accès illimité\u00a0!',
  },
  de: {
    try_it_title: 'Probieren Sie es aus',
    try_it_subtitle: 'Laden Sie eine Textkonversationsdatei hoch. Wählen Sie, wie viele Metriken analysiert werden sollen. Erhalten Sie Ihren unzensierten Bericht.',
    load_conversation: '1. Konversation Laden',
    load_conversation_desc: 'Laden Sie eine .txt- oder .csv-Datei mit einer Konversation hoch (SMS-Export, Chat-Protokoll, WhatsApp-Export usw.)',
    file_drop_text: 'Ziehen Sie per Drag & Drop oder klicken Sie zum Auswählen',
    choose_metrics: '2. Zufällige Metriken Wählen',
    choose_metrics_desc: 'Wählen Sie, wie viele der 50 verfügbaren Metriken zufällig analysiert werden sollen.',
    metrics_label: 'Zu analysierende Metriken:',
    quick_check: '3. Schnellprüfung',
    math_question: 'Was ist {a} + {b} =',
    verified: '\u2713 Verifiziert',
    analyze_btn: '\uD83D\uDD2C Konversation Analysieren',
    report_title: '\uD83E\uDDE0 AIRTA Analysebericht',
    btn_print: '\uD83D\uDDA8\uFE0F Drucken',
    btn_save_pdf: '\uD83D\uDCBE Als PDF Speichern',
    btn_share: '\uD83D\uDD17 Teilen',
    btn_new_analysis: '\uD83D\uDD04 Neue Analyse',
    pdf_preview: '\uD83D\uDCC4 PDF-Vorschau',
    exec_summary: 'Zusammenfassung',
    metric_scores: 'Metrik-Bewertungen',
    evidence_examples: 'Beweisbeispiele',
    individual_analysis: 'Individuelle Analyse',
    forensic_verdict: '\u2696\uFE0F Forensisches Urteil',
    primary_conclusion: '\uD83C\uDFAF Schlussfolgerung des Hauptproblems',
    analyzing: 'Die KI analysiert psychologische Muster\u2026',
    error_prefix: 'Fehler:',
    file_loaded: '\u2713 Geladen:',
    limit_reached: 'Sie haben Ihre 2 kostenlosen Demo-Analysen aufgebraucht. Laden Sie die App für unbegrenzten Zugang herunter!',
  },
  pt: {
    try_it_title: 'Experimente',
    try_it_subtitle: 'Carregue um arquivo de conversa de texto. Selecione quantas métricas analisar. Obtenha seu relatório sem censura.',
    load_conversation: '1. Carregar Conversa',
    load_conversation_desc: 'Carregue um arquivo .txt ou .csv contendo uma conversa (exportação de SMS, registro de chat, exportação do WhatsApp, etc.)',
    file_drop_text: 'Arraste e solte ou clique para selecionar',
    choose_metrics: '2. Escolher Métricas Aleatórias',
    choose_metrics_desc: 'Selecione quantas das 50 métricas disponíveis analisar aleatoriamente.',
    metrics_label: 'Métricas a analisar:',
    quick_check: '3. Verificação Rápida',
    math_question: 'Quanto é {a} + {b} =',
    verified: '\u2713 Verificado',
    analyze_btn: '\uD83D\uDD2C Analisar Conversa',
    report_title: '\uD83E\uDDE0 Relatório de Análise AIRTA',
    btn_print: '\uD83D\uDDA8\uFE0F Imprimir',
    btn_save_pdf: '\uD83D\uDCBE Salvar como PDF',
    btn_share: '\uD83D\uDD17 Compartilhar',
    btn_new_analysis: '\uD83D\uDD04 Nova Análise',
    pdf_preview: '\uD83D\uDCC4 Visualização de PDF',
    exec_summary: 'Resumo Executivo',
    metric_scores: 'Pontuações de Métricas',
    evidence_examples: 'Exemplos de Evidência',
    individual_analysis: 'Análise Individual',
    forensic_verdict: '\u2696\uFE0F Veredicto Forense',
    primary_conclusion: '\uD83C\uDFAF Conclusão do Problema Principal',
    analyzing: 'A IA está analisando padrões psicológicos\u2026',
    error_prefix: 'Erro:',
    file_loaded: '\u2713 Carregado:',
    limit_reached: 'Você usou suas 2 análises de demonstração gratuitas. Baixe o aplicativo para acesso ilimitado!',
  },
  it: {
    try_it_title: 'Provalo',
    try_it_subtitle: 'Carica un file di conversazione di testo. Seleziona quante metriche analizzare. Ottieni il tuo rapporto senza censure.',
    load_conversation: '1. Carica Conversazione',
    load_conversation_desc: 'Carica un file .txt o .csv contenente una conversazione (esportazione SMS, registro chat, esportazione WhatsApp, ecc.)',
    file_drop_text: 'Trascina e rilascia o fai clic per selezionare',
    choose_metrics: '2. Scegli Metriche Casuali',
    choose_metrics_desc: 'Seleziona quante delle 50 metriche disponibili analizzare casualmente.',
    metrics_label: 'Metriche da analizzare:',
    quick_check: '3. Verifica Rapida',
    math_question: 'Quanto fa {a} + {b} =',
    verified: '\u2713 Verificato',
    analyze_btn: '\uD83D\uDD2C Analizza Conversazione',
    report_title: '\uD83E\uDDE0 Report di Analisi AIRTA',
    btn_print: '\uD83D\uDDA8\uFE0F Stampa',
    btn_save_pdf: '\uD83D\uDCBE Salva come PDF',
    btn_share: '\uD83D\uDD17 Condividi',
    btn_new_analysis: '\uD83D\uDD04 Nuova Analisi',
    pdf_preview: '\uD83D\uDCC4 Anteprima PDF',
    exec_summary: 'Sintesi Esecutiva',
    metric_scores: 'Punteggi delle Metriche',
    evidence_examples: 'Esempi di Prove',
    individual_analysis: 'Analisi Individuale',
    forensic_verdict: '\u2696\uFE0F Verdetto Forense',
    primary_conclusion: '\uD83C\uDFAF Conclusione del Problema Principale',
    analyzing: 'L\'IA sta analizzando i modelli psicologici\u2026',
    error_prefix: 'Errore:',
    file_loaded: '\u2713 Caricato:',
    limit_reached: 'Hai usato le tue 2 analisi demo gratuite. Scarica l\'app per un accesso illimitato!',
  },
  ja: {
    try_it_title: '\u8A66\u3057\u3066\u307F\u308B',
    try_it_subtitle: '\u30C6\u30AD\u30B9\u30C8\u4F1A\u8A71\u30D5\u30A1\u30A4\u30EB\u3092\u30A2\u30C3\u30D7\u30ED\u30FC\u30C9\u3002\u5206\u6790\u3059\u308B\u6307\u6A19\u6570\u3092\u9078\u629E\u3002\u6B63\u76F4\u306A\u30EC\u30DD\u30FC\u30C8\u3092\u53D6\u5F97\u3002',
    load_conversation: '1. \u4F1A\u8A71\u3092\u8AAD\u307F\u8FBC\u3080',
    load_conversation_desc: '\u4F1A\u8A71\u3092\u542B\u3080.txt\u307E\u305F\u306F.csv\u30D5\u30A1\u30A4\u30EB\u3092\u30A2\u30C3\u30D7\u30ED\u30FC\u30C9\uFF08SMS\u30A8\u30AF\u30B9\u30DD\u30FC\u30C8\u3001\u30C1\u30E3\u30C3\u30C8\u30ED\u30B0\u3001WhatsApp\u30A8\u30AF\u30B9\u30DD\u30FC\u30C8\u306A\u3069\uFF09',
    file_drop_text: '\u30C9\u30E9\u30C3\u30B0\uFF06\u30C9\u30ED\u30C3\u30D7\u307E\u305F\u306F\u30AF\u30EA\u30C3\u30AF\u3057\u3066\u9078\u629E',
    choose_metrics: '2. \u30E1\u30C8\u30EA\u30AF\u30B9\u3092\u30E9\u30F3\u30C0\u30E0\u9078\u629E',
    choose_metrics_desc: '50\u500B\u306E\u30E1\u30C8\u30EA\u30AF\u30B9\u304B\u3089\u30E9\u30F3\u30C0\u30E0\u306B\u5206\u6790\u3059\u308B\u6570\u3092\u9078\u629E\u3057\u3066\u304F\u3060\u3055\u3044\u3002',
    metrics_label: '\u5206\u6790\u3059\u308B\u6307\u6A19:',
    quick_check: '3. \u30AF\u30A4\u30C3\u30AF\u30C1\u30A7\u30C3\u30AF',
    math_question: '{a} + {b} = ?',
    verified: '\u2713 \u78BA\u8A8D\u6E08\u307F',
    analyze_btn: '\uD83D\uDD2C \u4F1A\u8A71\u3092\u5206\u6790',
    report_title: '\uD83E\uDDE0 AIRTA \u5206\u6790\u30EC\u30DD\u30FC\u30C8',
    btn_print: '\uD83D\uDDA8\uFE0F \u5370\u5237',
    btn_save_pdf: '\uD83D\uDCBE PDF\u3068\u3057\u3066\u4FDD\u5B58',
    btn_share: '\uD83D\uDD17 \u5171\u6709',
    btn_new_analysis: '\uD83D\uDD04 \u65B0\u3057\u3044\u5206\u6790',
    pdf_preview: '\uD83D\uDCC4 PDF\u30D7\u30EC\u30D3\u30E5\u30FC',
    exec_summary: '\u30A8\u30B0\u30BC\u30AF\u30C6\u30A3\u30D6\u30B5\u30DE\u30EA\u30FC',
    metric_scores: '\u6307\u6A19\u30B9\u30B3\u30A2',
    evidence_examples: '\u8A3C\u62E0\u306E\u4F8B',
    individual_analysis: '\u500B\u5225\u5206\u6790',
    forensic_verdict: '\u2696\uFE0F \u6CD5\u533B\u5B66\u7684\u5224\u65AD',
    primary_conclusion: '\uD83C\uDFAF \u4E3B\u306A\u554F\u984C\u306E\u7D50\u8AD6',
    analyzing: 'AI\u304C\u5FC3\u7406\u30D1\u30BF\u30FC\u30F3\u3092\u5206\u6790\u4E2D\u2026',
    error_prefix: '\u30A8\u30E9\u30FC:',
    file_loaded: '\u2713 \u8AAD\u307F\u8FBC\u307F\u5B8C\u4E86:',
    limit_reached: '2\u56DE\u306E\u7121\u6599\u30C7\u30E2\u5206\u6790\u3092\u4F7F\u7528\u3057\u307E\u3057\u305F\u3002\u7121\u5236\u9650\u306E\u30A2\u30AF\u30BB\u30B9\u306F\u30A2\u30D7\u30EA\u3092\u30C0\u30A6\u30F3\u30ED\u30FC\u30C9\uFF01',
  },
  ko: {
    try_it_title: '\uc2dc\ub3c4\ud574\ubcf4\uae30',
    try_it_subtitle: '\ud14d\uc2a4\ud2b8 \ub300\ud654 \ud30c\uc77c\uc744 \uc5c5\ub85c\ub4dc\ud558\uc138\uc694. \ubd84\uc11d\ud560 \uba54\ud2b8\ub9ad \uc218\ub97c \uc120\ud0dd\ud558\uc138\uc694. \uac80\uc5f4\ub418\uc9c0 \uc54a\uc740 \ubcf4\uace0\uc11c\ub97c \ubc1b\uc73c\uc138\uc694.',
    load_conversation: '1. \ub300\ud654 \ub85c\ub4dc',
    load_conversation_desc: '\ub300\ud654\uac00 \ud3ec\ud568\ub41c .txt \ub610\ub294 .csv \ud30c\uc77c \uc5c5\ub85c\ub4dc(SMS \ub0b4\ubcf4\ub0b4\uae30, \ucc44\ud305 \ub85c\uadf8, WhatsApp \ub0b4\ubcf4\ub0b4\uae30 \ub4f1)',
    file_drop_text: '\ub4dc\ub798\uadf8 \uc564 \ub4dc\ub86d \ub610\ub294 \ud074\ub9ad\ud558\uc5ec \uc120\ud0dd',
    choose_metrics: '2. \ubb34\uc791\uc704 \uba54\ud2b8\ub9ad \uc120\ud0dd',
    choose_metrics_desc: '50\uac1c \uc911 \ubb34\uc791\uc704\ub85c \ubd84\uc11d\ud560 \uba54\ud2b8\ub9ad \uc218\ub97c \uc120\ud0dd\ud558\uc138\uc694.',
    metrics_label: '\ubd84\uc11d\ud560 \uba54\ud2b8\ub9ad:',
    quick_check: '3. \ube60\ub978 \ud655\uc778',
    math_question: '{a} + {b} = ?',
    verified: '\u2713 \ud655\uc778\ub428',
    analyze_btn: '\uD83D\uDD2C \ub300\ud654 \ubd84\uc11d',
    report_title: '\uD83E\uDDE0 AIRTA \ubd84\uc11d \ubcf4\uace0\uc11c',
    btn_print: '\uD83D\uDDA8\uFE0F \uc778\uc1c4',
    btn_save_pdf: '\uD83D\uDCBE PDF\ub85c \uc800\uc7a5',
    btn_share: '\uD83D\uDD17 \uacf5\uc720',
    btn_new_analysis: '\uD83D\uDD04 \uc0c8 \ubd84\uc11d',
    pdf_preview: '\uD83D\uDCC4 PDF \ubbf8\ub9ac\ubcf4\uae30',
    exec_summary: '\uc694\uc57d',
    metric_scores: '\uba54\ud2b8\ub9ad \uc810\uc218',
    evidence_examples: '\uc99d\uac70 \uc608\uc2dc',
    individual_analysis: '\uac1c\ubcc4 \ubd84\uc11d',
    forensic_verdict: '\u2696\uFE0F \ubc95\uc758\ud559\uc801 \ud310\uc815',
    primary_conclusion: '\uD83C\uDFAF \uc8fc\uc694 \ubb38\uc81c \uacb0\ub860',
    analyzing: 'AI\uac00 \uc2ec\ub9ac \ud328\ud134\uc744 \ubd84\uc11d \uc911\u2026',
    error_prefix: '\uc624\ub958:',
    file_loaded: '\u2713 \ub85c\ub4dc\ub428:',
    limit_reached: '2\ud68c\uc758 \ubb34\ub8cc \ub370\ubaa8 \ubd84\uc11d\uc744 \uc0ac\uc6a9\ud588\uc2b5\ub2c8\ub2e4. \ubb34\uc81c\ud55c \uc561\uc138\uc2a4\ub97c \uc704\ud574 \uc571\uc744 \ub2e4\uc6b4\ub85c\ub4dc\ud558\uc138\uc694!',
  },
  zh: {
    try_it_title: '\u8bd5\u8bd5\u770b',
    try_it_subtitle: '\u4e0a\u4f20\u6587\u672c\u5bf9\u8bdd\u6587\u4ef6\u3002\u9009\u62e9\u8981\u5206\u6790\u7684\u6307\u6807\u6570\u91cf\u3002\u83b7\u53d6\u60a8\u7684\u65e0\u5ba1\u67e5\u62a5\u544a\u3002',
    load_conversation: '1. \u52a0\u8f7d\u5bf9\u8bdd',
    load_conversation_desc: '\u4e0a\u4f20\u5305\u542b\u5bf9\u8bdd\u7684 .txt \u6216 .csv \u6587\u4ef6\uff08\u77ed\u4fe1\u5bfc\u51fa\u3001\u804a\u5929\u8bb0\u5f55\u3001WhatsApp \u5bfc\u51fa\u7b49\uff09',
    file_drop_text: '\u62d6\u653e\u6216\u70b9\u51fb\u9009\u62e9',
    choose_metrics: '2. \u9009\u62e9\u968f\u673a\u6307\u6807',
    choose_metrics_desc: '\u4ece 50 \u4e2a\u53ef\u7528\u6307\u6807\u4e2d\u9009\u62e9\u8981\u968f\u673a\u5206\u6790\u7684\u6570\u91cf\u3002',
    metrics_label: '\u8981\u5206\u6790\u7684\u6307\u6807:',
    quick_check: '3. \u5feb\u901f\u9a8c\u8bc1',
    math_question: '{a} + {b} = ?',
    verified: '\u2713 \u5df2\u9a8c\u8bc1',
    analyze_btn: '\uD83D\uDD2C \u5206\u6790\u5bf9\u8bdd',
    report_title: '\uD83E\uDDE0 AIRTA \u5206\u6790\u62a5\u544a',
    btn_print: '\uD83D\uDDA8\uFE0F \u6253\u5370',
    btn_save_pdf: '\uD83D\uDCBE \u53e6\u5b58\u4e3a PDF',
    btn_share: '\uD83D\uDD17 \u5206\u4eab',
    btn_new_analysis: '\uD83D\uDD04 \u65b0\u5206\u6790',
    pdf_preview: '\uD83D\uDCC4 PDF \u9884\u89c8',
    exec_summary: '\u6267\u884c\u6458\u8981',
    metric_scores: '\u6307\u6807\u5206\u6570',
    evidence_examples: '\u8bc1\u636e\u793a\u4f8b',
    individual_analysis: '\u4e2a\u4eba\u5206\u6790',
    forensic_verdict: '\u2696\uFE0F \u53f8\u6cd5\u5224\u51b3',
    primary_conclusion: '\uD83C\uDFAF \u4e3b\u8981\u95ee\u9898\u7ed3\u8bba',
    analyzing: 'AI \u6b63\u5728\u5206\u6790\u5fc3\u7406\u6a21\u5f0f\u2026',
    error_prefix: '\u9519\u8bef:',
    file_loaded: '\u2713 \u5df2\u52a0\u8f7d:',
    limit_reached: '\u60a8\u5df2\u4f7f\u7528\u4e862\u6b21\u514d\u8d39\u6f14\u793a\u5206\u6790\u3002\u4e0b\u8f7d\u5e94\u7528\u4ee5\u83b7\u5f97\u65e0\u9650\u8bbf\u95ee\uff01',
  },
  ar: {
    try_it_title: '\u062c\u0631\u0628\u0647\u0627',
    try_it_subtitle: '\u0642\u0645 \u0628\u062a\u062d\u0645\u064a\u0644 \u0645\u0644\u0641 \u0645\u062d\u0627\u062f\u062b\u0629 \u0646\u0635\u064a\u0629. \u0627\u062e\u062a\u0631 \u0639\u062f\u062f \u0627\u0644\u0645\u0642\u0627\u064a\u064a\u0633. \u0627\u062d\u0635\u0644 \u0639\u0644\u0649 \u062a\u0642\u0631\u064a\u0631\u0643.',
    load_conversation: '1. \u062a\u062d\u0645\u064a\u0644 \u0627\u0644\u0645\u062d\u0627\u062f\u062b\u0629',
    load_conversation_desc: '\u0642\u0645 \u0628\u062a\u062d\u0645\u064a\u0644 \u0645\u0644\u0641 .txt \u0623\u0648 .csv \u064a\u062d\u062a\u0648\u064a \u0639\u0644\u0649 \u0645\u062d\u0627\u062f\u062b\u0629',
    file_drop_text: '\u0627\u0633\u062d\u0628 \u0648\u0623\u0641\u0644\u062a \u0623\u0648 \u0627\u0646\u0642\u0631 \u0644\u0644\u062a\u062d\u062f\u064a\u062f',
    choose_metrics: '2. \u0627\u062e\u062a\u0631 \u0627\u0644\u0645\u0642\u0627\u064a\u064a\u0633 \u0627\u0644\u0639\u0634\u0648\u0627\u0626\u064a\u0629',
    choose_metrics_desc: '\u0627\u062e\u062a\u0631 \u0639\u062f\u062f \u0627\u0644\u0645\u0642\u0627\u064a\u064a\u0633 \u0645\u0646 \u0628\u064a\u0646 50 \u0645\u062a\u0627\u062d\u0627\u064b.',
    metrics_label: '\u0627\u0644\u0645\u0642\u0627\u064a\u064a\u0633 \u0627\u0644\u0645\u0631\u0627\u062f \u062a\u062d\u0644\u064a\u0644\u0647\u0627:',
    quick_check: '3. \u062a\u062d\u0642\u0642 \u0633\u0631\u064a\u0639',
    math_question: '{a} + {b} = ?',
    verified: '\u2713 \u062a\u0645 \u0627\u0644\u062a\u062d\u0642\u0642',
    analyze_btn: '\uD83D\uDD2C \u062a\u062d\u0644\u064a\u0644 \u0627\u0644\u0645\u062d\u0627\u062f\u062b\u0629',
    report_title: '\uD83E\uDDE0 \u062a\u0642\u0631\u064a\u0631 \u062a\u062d\u0644\u064a\u0644 AIRTA',
    btn_print: '\uD83D\uDDA8\uFE0F \u0637\u0628\u0627\u0639\u0629',
    btn_save_pdf: '\uD83D\uDCBE \u062d\u0641\u0638 \u0628\u0635\u064a\u063a\u0629 PDF',
    btn_share: '\uD83D\uDD17 \u0645\u0634\u0627\u0631\u0643\u0629',
    btn_new_analysis: '\uD83D\uDD04 \u062a\u062d\u0644\u064a\u0644 \u062c\u062f\u064a\u062f',
    pdf_preview: '\uD83D\uDCC4 \u0645\u0639\u0627\u064a\u0646\u0629 PDF',
    exec_summary: '\u0627\u0644\u0645\u0644\u062e\u0635 \u0627\u0644\u062a\u0646\u0641\u064a\u0630\u064a',
    metric_scores: '\u062f\u0631\u062c\u0627\u062a \u0627\u0644\u0645\u0642\u0627\u064a\u064a\u0633',
    evidence_examples: '\u0623\u0645\u062b\u0644\u0629 \u0627\u0644\u0623\u062f\u0644\u0629',
    individual_analysis: '\u0627\u0644\u062a\u062d\u0644\u064a\u0644 \u0627\u0644\u0641\u0631\u062f\u064a',
    forensic_verdict: '\u2696\uFE0F \u0627\u0644\u062d\u0643\u0645 \u0627\u0644\u062c\u0646\u0627\u0626\u064a',
    primary_conclusion: '\uD83C\uDFAF \u0627\u0633\u062a\u0646\u062a\u0627\u062c \u0627\u0644\u0645\u0634\u0643\u0644\u0629 \u0627\u0644\u0631\u0626\u064a\u0633\u064a\u0629',
    analyzing: '\u0627\u0644\u0630\u0643\u0627\u0621 \u0627\u0644\u0627\u0635\u0637\u0646\u0627\u0639\u064a \u064a\u062d\u0644\u0644 \u0627\u0644\u0623\u0646\u0645\u0627\u0637\u2026',
    error_prefix: '\u062e\u0637\u0623:',
    file_loaded: '\u2713 \u062a\u0645 \u0627\u0644\u062a\u062d\u0645\u064a\u0644:',
    limit_reached: '\u0644\u0642\u062f \u0627\u0633\u062a\u062e\u062f\u0645\u062a \u062a\u062d\u0644\u064a\u0644\u064a\u0646 \u062a\u062c\u0631\u064a\u0628\u064a\u064a\u0646 \u0645\u062c\u0627\u0646\u064a\u064a\u0646. \u062d\u0645\u0644 \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0644\u0644\u0648\u0635\u0648\u0644 \u063a\u064a\u0631 \u0627\u0644\u0645\u062d\u062f\u0648\u062f!',
  },
  hi: {
    try_it_title: '\u0907\u0938\u0947 \u0906\u091c\u092e\u093e\u090f\u0902',
    try_it_subtitle: '\u090f\u0915 \u092a\u093e\u0920 \u092c\u093e\u0924\u091a\u0940\u0924 \u092b\u093c\u093e\u0907\u0932 \u0905\u092a\u0932\u094b\u0921 \u0915\u0930\u0947\u0902\u0964 \u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923 \u0915\u0947 \u0932\u093f\u090f \u092e\u0947\u091f\u094d\u0930\u093f\u0915\u094d\u0938 \u091a\u0941\u0928\u0947\u0902\u0964 \u0905\u092a\u0928\u0940 \u0930\u093f\u092a\u094b\u0930\u094d\u091f \u092a\u093e\u090f\u0902\u0964',
    load_conversation: '1. \u092c\u093e\u0924\u091a\u0940\u0924 \u0932\u094b\u0921 \u0915\u0930\u0947\u0902',
    load_conversation_desc: '\u092c\u093e\u0924\u091a\u0940\u0924 \u0935\u093e\u0932\u0940 .txt \u092f\u093e .csv \u092b\u093c\u093e\u0907\u0932 \u0905\u092a\u0932\u094b\u0921 \u0915\u0930\u0947\u0902',
    file_drop_text: '\u0916\u0940\u0902\u091a\u0947\u0902 \u0914\u0930 \u091b\u094b\u0921\u093c\u0947\u0902 \u092f\u093e \u091a\u0941\u0928\u0928\u0947 \u0915\u0947 \u0932\u093f\u090f \u0915\u094d\u0932\u093f\u0915 \u0915\u0930\u0947\u0902',
    choose_metrics: '2. \u092f\u093e\u0926\u0943\u091a\u094d\u091b\u093f\u0915 \u092e\u0947\u091f\u094d\u0930\u093f\u0915\u094d\u0938 \u091a\u0941\u0928\u0947\u0902',
    choose_metrics_desc: '50 \u0909\u092a\u0932\u092c\u094d\u0927 \u092e\u0947\u091f\u094d\u0930\u093f\u0915\u094d\u0938 \u092e\u0947\u0902 \u0938\u0947 \u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923 \u0915\u0947 \u0932\u093f\u090f \u0938\u0902\u0916\u094d\u092f\u093e \u091a\u0941\u0928\u0947\u0902\u0964',
    metrics_label: '\u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923 \u0915\u0947 \u0932\u093f\u090f \u092e\u0947\u091f\u094d\u0930\u093f\u0915\u094d\u0938:',
    quick_check: '3. \u0924\u094d\u0935\u0930\u093f\u0924 \u091c\u093e\u0902\u091a',
    math_question: '{a} + {b} = ?',
    verified: '\u2713 \u0938\u0924\u094d\u092f\u093e\u092a\u093f\u0924',
    analyze_btn: '\uD83D\uDD2C \u092c\u093e\u0924\u091a\u0940\u0924 \u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923',
    report_title: '\uD83E\uDDE0 AIRTA \u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923 \u0930\u093f\u092a\u094b\u0930\u094d\u091f',
    btn_print: '\uD83D\uDDA8\uFE0F \u092a\u094d\u0930\u093f\u0902\u091f',
    btn_save_pdf: '\uD83D\uDCBE PDF \u0938\u0939\u0947\u091c\u0947\u0902',
    btn_share: '\uD83D\uDD17 \u0938\u093e\u091d\u093e \u0915\u0930\u0947\u0902',
    btn_new_analysis: '\uD83D\uDD04 \u0928\u092f\u093e \u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923',
    pdf_preview: '\uD83D\uDCC4 PDF \u092a\u0942\u0930\u094d\u0935\u0627\u0935\u0932\u094b\u0915\u0928',
    exec_summary: '\u0915\u093e\u0930\u094d\u092f\u0915\u093e\u0930\u0940 \u0938\u093e\u0930\u093e\u0902\u0936',
    metric_scores: '\u092e\u0947\u091f\u094d\u0930\u093f\u0915\u094d\u0938 \u0938\u094d\u0915\u094b\u0930',
    evidence_examples: '\u0938\u093e\u0915\u094d\u0937\u094d\u092f \u0909\u0926\u093e\u0939\u0930\u0923',
    individual_analysis: '\u0935\u094d\u092f\u0915\u094d\u0924\u093f\u0917\u0924 \u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923',
    forensic_verdict: '\u2696\uFE0F \u092b\u094b\u0930\u0947\u0902\u0938\u093f\u0915 \u0928\u093f\u0930\u094d\u0923\u092f',
    primary_conclusion: '\uD83C\uDFAF \u092e\u0941\u0916\u094d\u092f \u0938\u092e\u0938\u094d\u092f\u093e \u0928\u093f\u0937\u094d\u0915\u0930\u094d\u0937',
    analyzing: 'AI \u092e\u0928\u094b\u0935\u0948\u091c\u094d\u091e\u093e\u0928\u093f\u0915 \u092a\u0948\u091f\u0930\u094d\u0928 \u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923 \u0915\u0930 \u0930\u0939\u093e \u0939\u0948\u2026',
    error_prefix: '\u0924\u094d\u0930\u0941\u091f\u093f:',
    file_loaded: '\u2713 \u0932\u094b\u0921 \u0939\u094b \u0917\u092f\u093e:',
    limit_reached: '\u0906\u092a\u0928\u0947 \u0905\u092a\u0928\u0947 2 \u092e\u0941\u092b\u094d\u0924 \u0921\u0947\u092e\u094b \u0935\u093f\u0936\u094d\u0932\u0947\u0937\u0923 \u0909\u092a\u092f\u094b\u0917 \u0915\u093f\u090f\u0964 \u0905\u0938\u0940\u092e\u093f\u0924 \u092a\u0939\u0941\u0902\u091a \u0915\u0947 \u0932\u093f\u090f \u0910\u092a \u0921\u093e\u0909\u0928\u0932\u094b\u0921 \u0915\u0930\u0947\u0902!',
  },
  ru: {
    try_it_title: '\u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435',
    try_it_subtitle: '\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u0435 \u0444\u0430\u0439\u043b \u0442\u0435\u043a\u0441\u0442\u043e\u0432\u043e\u0439 \u0431\u0435\u0441\u0435\u0434\u044b. \u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043c\u0435\u0442\u0440\u0438\u043a. \u041f\u043e\u043b\u0443\u0447\u0438\u0442\u0435 \u043d\u0435\u0446\u0435\u043d\u0437\u0443\u0440\u0438\u0440\u043e\u0432\u0430\u043d\u043d\u044b\u0439 \u043e\u0442\u0447\u0451\u0442.',
    load_conversation: '1. \u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0411\u0435\u0441\u0435\u0434\u0443',
    load_conversation_desc: '\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u0435 .txt \u0438\u043b\u0438 .csv \u0444\u0430\u0439\u043b \u0441 \u0431\u0435\u0441\u0435\u0434\u043e\u0439',
    file_drop_text: '\u041f\u0435\u0440\u0435\u0442\u0430\u0449\u0438\u0442\u0435 \u0438\u043b\u0438 \u043d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u043b\u044f \u0432\u044b\u0431\u043e\u0440\u0430',
    choose_metrics: '2. \u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0421\u043b\u0443\u0447\u0430\u0439\u043d\u044b\u0435 \u041c\u0435\u0442\u0440\u0438\u043a\u0438',
    choose_metrics_desc: '\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435, \u0441\u043a\u043e\u043b\u044c\u043a\u043e \u0438\u0437 50 \u043c\u0435\u0442\u0440\u0438\u043a \u0430\u043d\u0430\u043b\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u0442\u044c.',
    metrics_label: '\u041c\u0435\u0442\u0440\u0438\u043a\u0438 \u0434\u043b\u044f \u0430\u043d\u0430\u043b\u0438\u0437\u0430:',
    quick_check: '3. \u0411\u044b\u0441\u0442\u0440\u0430\u044f \u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430',
    math_question: '{a} + {b} = ?',
    verified: '\u2713 \u041f\u0440\u043e\u0432\u0435\u0440\u0435\u043d\u043e',
    analyze_btn: '\uD83D\uDD2C \u0410\u043d\u0430\u043b\u0438\u0437\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0411\u0435\u0441\u0435\u0434\u0443',
    report_title: '\uD83E\uDDE0 \u041e\u0442\u0447\u0451\u0442 \u0410\u043d\u0430\u043b\u0438\u0437\u0430 AIRTA',
    btn_print: '\uD83D\uDDA8\uFE0F \u041f\u0435\u0447\u0430\u0442\u044c',
    btn_save_pdf: '\uD83D\uDCBE \u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u043a\u0430\u043a PDF',
    btn_share: '\uD83D\uDD17 \u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f',
    btn_new_analysis: '\uD83D\uDD04 \u041d\u043e\u0432\u044b\u0439 \u0410\u043d\u0430\u043b\u0438\u0437',
    pdf_preview: '\uD83D\uDCC4 \u041f\u0440\u0435\u0434\u043f\u0440\u043e\u0441\u043c\u043e\u0442\u0440 PDF',
    exec_summary: '\u0420\u0435\u0437\u044e\u043c\u0435',
    metric_scores: '\u041e\u0446\u0435\u043d\u043a\u0438 \u043c\u0435\u0442\u0440\u0438\u043a',
    evidence_examples: '\u041f\u0440\u0438\u043c\u0435\u0440\u044b \u0434\u043e\u043a\u0430\u0437\u0430\u0442\u0435\u043b\u044c\u0441\u0442\u0432',
    individual_analysis: '\u0418\u043d\u0434\u0438\u0432\u0438\u0434\u0443\u0430\u043b\u044c\u043d\u044b\u0439 \u0410\u043d\u0430\u043b\u0438\u0437',
    forensic_verdict: '\u2696\uFE0F \u0421\u0443\u0434\u0435\u0431\u043d\u043e\u0435 \u0417\u0430\u043a\u043b\u044e\u0447\u0435\u043d\u0438\u0435',
    primary_conclusion: '\uD83C\uDFAF \u0412\u044b\u0432\u043e\u0434 \u043e \u0413\u043b\u0430\u0432\u043d\u043e\u0439 \u041f\u0440\u043e\u0431\u043b\u0435\u043c\u0435',
    analyzing: 'ИИ анализирует психологические паттерны…',
    error_prefix: '\u041e\u0448\u0438\u0431\u043a\u0430:',
    file_loaded: '\u2713 \u0417\u0430\u0433\u0440\u0443\u0436\u0435\u043d\u043e:',
    limit_reached: '\u0412\u044b \u0438\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u043b\u0438 2 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u044b\u0445 \u0434\u0435\u043c\u043e-\u0430\u043d\u0430\u043b\u0438\u0437\u0430. \u0421\u043a\u0430\u0447\u0430\u0439\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0434\u043b\u044f \u043d\u0435\u043e\u0433\u0440\u0430\u043d\u0438\u0447\u0435\u043d\u043d\u043e\u0433\u043e \u0434\u043e\u0441\u0442\u0443\u043f\u0430!',
  },
  nl: {
    try_it_title: 'Probeer het',
    try_it_subtitle: 'Upload een tekstconversatiebestand. Selecteer hoeveel metriek u wilt analyseren. Ontvang uw ongecensureerde rapport.',
    load_conversation: '1. Gesprek Laden',
    load_conversation_desc: 'Upload een .txt- of .csv-bestand met een gesprek',
    file_drop_text: 'Sleep of klik om te selecteren',
    choose_metrics: '2. Willekeurige Metingen Kiezen',
    choose_metrics_desc: 'Selecteer hoeveel van de 50 beschikbare metingen u willekeurig wilt analyseren.',
    metrics_label: 'Metingen om te analyseren:',
    quick_check: '3. Snelle Controle',
    math_question: 'Wat is {a} + {b} =',
    verified: '\u2713 Geverifieerd',
    analyze_btn: '\uD83D\uDD2C Gesprek Analyseren',
    report_title: '\uD83E\uDDE0 AIRTA Analyserapport',
    btn_print: '\uD83D\uDDA8\uFE0F Afdrukken',
    btn_save_pdf: '\uD83D\uDCBE Opslaan als PDF',
    btn_share: '\uD83D\uDD17 Delen',
    btn_new_analysis: '\uD83D\uDD04 Nieuwe Analyse',
    pdf_preview: '\uD83D\uDCC4 PDF-voorbeeld',
    exec_summary: 'Samenvatting voor Directie',
    metric_scores: 'Metriekscores',
    evidence_examples: 'Bewijsvoorbeelden',
    individual_analysis: 'Individuele Analyse',
    forensic_verdict: '\u2696\uFE0F Gerechtelijk Oordeel',
    primary_conclusion: '\uD83C\uDFAF Conclusie Hoofdprobleem',
    analyzing: 'AI analyseert psychologische patronen\u2026',
    error_prefix: 'Fout:',
    file_loaded: '\u2713 Geladen:',
    limit_reached: 'U heeft uw 2 gratis demo-analyses gebruikt. Download de app voor onbeperkte toegang!',
  },
  tr: {
    try_it_title: 'Deneyin',
    try_it_subtitle: 'Bir metin konuşma dosyası yükleyin. Analiz edilecek metrik sayısını seçin. Sansürsüz raporunuzu alın.',
    load_conversation: '1. Konuşmayı Yükle',
    load_conversation_desc: 'Konuşma içeren bir .txt veya .csv dosyası yükleyin',
    file_drop_text: 'Sürükle ve bırak veya seçmek için tıkla',
    choose_metrics: '2. Rastgele Metrikleri Seç',
    choose_metrics_desc: 'Mevcut 50 metrikten rastgele analiz edilecek metrik sayısını seçin.',
    metrics_label: 'Analiz edilecek metrikler:',
    quick_check: '3. Hızlı Kontrol',
    math_question: '{a} + {b} = ?',
    verified: '\u2713 Doğrulandı',
    analyze_btn: '\uD83D\uDD2C Konuşmayı Analiz Et',
    report_title: '\uD83E\uDDE0 AIRTA Analiz Raporu',
    btn_print: '\uD83D\uDDA8\uFE0F Yazdır',
    btn_save_pdf: '\uD83D\uDCBE PDF Olarak Kaydet',
    btn_share: '\uD83D\uDD17 Paylaş',
    btn_new_analysis: '\uD83D\uDD04 Yeni Analiz',
    pdf_preview: '\uD83D\uDCC4 PDF Önizlemesi',
    exec_summary: 'Yönetici Özeti',
    metric_scores: 'Metrik Puanları',
    evidence_examples: 'Kanıt Örnekleri',
    individual_analysis: 'Bireysel Analiz',
    forensic_verdict: '\u2696\uFE0F Adli Karar',
    primary_conclusion: '\uD83C\uDFAF Ana Problem Sonucu',
    analyzing: 'Yapay zeka psikolojik desenleri analiz ediyor\u2026',
    error_prefix: 'Hata:',
    file_loaded: '\u2713 Yüklendi:',
    limit_reached: '2 ücretsiz demo analizinizi kullandınız. Sınırsız erişim için uygulamayı indirin!',
  },
  pl: {
    try_it_title: 'Spróbuj',
    try_it_subtitle: 'Prześlij plik rozmowy tekstowej. Wybierz, ile metryk analizować. Uzyskaj nieocenzurowany raport.',
    load_conversation: '1. Załaduj Rozmowę',
    load_conversation_desc: 'Prześlij plik .txt lub .csv zawierający rozmowę',
    file_drop_text: 'Przeciągnij i upuść lub kliknij, aby wybrać',
    choose_metrics: '2. Wybierz Losowe Metryki',
    choose_metrics_desc: 'Wybierz, ile z 50 dostępnych metryk analizować losowo.',
    metrics_label: 'Metryki do analizy:',
    quick_check: '3. Szybka Weryfikacja',
    math_question: 'Ile wynosi {a} + {b} =',
    verified: '\u2713 Zweryfikowano',
    analyze_btn: '\uD83D\uDD2C Analizuj Rozmowę',
    report_title: '\uD83E\uDDE0 Raport Analizy AIRTA',
    btn_print: '\uD83D\uDDA8\uFE0F Drukuj',
    btn_save_pdf: '\uD83D\uDCBE Zapisz jako PDF',
    btn_share: '\uD83D\uDD17 Udostępnij',
    btn_new_analysis: '\uD83D\uDD04 Nowa Analiza',
    pdf_preview: '\uD83D\uDCC4 Podgląd PDF',
    exec_summary: 'Streszczenie Wykonawcze',
    metric_scores: 'Wyniki Metryk',
    evidence_examples: 'Przykłady Dowodów',
    individual_analysis: 'Analiza Indywidualna',
    forensic_verdict: '\u2696\uFE0F Werdykt Sądowy',
    primary_conclusion: '\uD83C\uDFAF Wniosek Głównego Problemu',
    analyzing: 'AI analizuje wzorce psychologiczne\u2026',
    error_prefix: 'Błąd:',
    file_loaded: '\u2713 Załadowano:',
    limit_reached: 'Wykorzystałeś 2 bezpłatne analizy demonstracyjne. Pobierz aplikację, aby uzyskać nieograniczony dostęp!',
  },
  uk: {
    try_it_title: '\u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435',
    try_it_subtitle: '\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0444\u0430\u0439\u043b \u0442\u0435\u043a\u0441\u0442\u043e\u0432\u043e\u0457 \u0440\u043e\u0437\u043c\u043e\u0432\u0438. \u0412\u0438\u0431\u0435\u0440\u0456\u0442\u044c \u043a\u0456\u043b\u044c\u043a\u0456\u0441\u0442\u044c \u043c\u0435\u0442\u0440\u0438\u043a. \u041e\u0442\u0440\u0438\u043c\u0430\u0439\u0442\u0435 \u0437\u0432\u0456\u0442 \u0431\u0435\u0437 \u0446\u0435\u043d\u0437\u0443\u0440\u0438.',
    load_conversation: '1. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u0420\u043e\u0437\u043c\u043e\u0432\u0443',
    load_conversation_desc: '\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0444\u0430\u0439\u043b .txt \u0430\u0431\u043e .csv \u0437 \u0440\u043e\u0437\u043c\u043e\u0432\u043e\u044e',
    file_drop_text: '\u041f\u0435\u0440\u0435\u0442\u044f\u0433\u043d\u0456\u0442\u044c \u0430\u0431\u043e \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u0434\u043b\u044f \u0432\u0438\u0431\u043e\u0440\u0443',
    choose_metrics: '2. \u0412\u0438\u0431\u0435\u0440\u0456\u0442\u044c \u0412\u0438\u043f\u0430\u0434\u043a\u043e\u0432\u0456 \u041c\u0435\u0442\u0440\u0438\u043a\u0438',
    choose_metrics_desc: '\u0412\u0438\u0431\u0435\u0440\u0456\u0442\u044c, \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0437 50 \u043c\u0435\u0442\u0440\u0438\u043a \u0430\u043d\u0430\u043b\u0456\u0437\u0443\u0432\u0430\u0442\u0438.',
    metrics_label: '\u041c\u0435\u0442\u0440\u0438\u043a\u0438 \u0434\u043b\u044f \u0430\u043d\u0430\u043b\u0456\u0437\u0443:',
    quick_check: '3. \u0428\u0432\u0438\u0434\u043a\u0430 \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0430',
    math_question: '{a} + {b} = ?',
    verified: '\u2713 \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0435\u043d\u043e',
    analyze_btn: '\uD83D\uDD2C \u0410\u043d\u0430\u043b\u0456\u0437\u0443\u0432\u0430\u0442\u0438 \u0420\u043e\u0437\u043c\u043e\u0432\u0443',
    report_title: '\uD83E\uDDE0 \u0417\u0432\u0456\u0442 \u0410\u043d\u0430\u043b\u0456\u0437\u0443 AIRTA',
    btn_print: '\uD83D\uDDA8\uFE0F \u0414\u0440\u0443\u043a\u0443\u0432\u0430\u0442\u0438',
    btn_save_pdf: '\uD83D\uDCBE \u0417\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u044f\u043a PDF',
    btn_share: '\uD83D\uDD17 \u041f\u043e\u0434\u0456\u043b\u0438\u0442\u0438\u0441\u044f',
    btn_new_analysis: '\uD83D\uDD04 \u041d\u043e\u0432\u0438\u0439 \u0410\u043d\u0430\u043b\u0456\u0437',
    pdf_preview: '\uD83D\uDCC4 \u041f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u0456\u0439 \u043f\u0435\u0440\u0435\u0433\u043b\u044f\u0434 PDF',
    exec_summary: '\u0420\u0435\u0437\u044e\u043c\u0435',
    metric_scores: '\u041e\u0446\u0456\u043d\u043a\u0438 \u043c\u0435\u0442\u0440\u0438\u043a',
    evidence_examples: '\u041f\u0440\u0438\u043a\u043b\u0430\u0434\u0438 \u0434\u043e\u043a\u0430\u0437\u0456\u0432',
    individual_analysis: '\u0406\u043d\u0434\u0438\u0432\u0456\u0434\u0443\u0430\u043b\u044c\u043d\u0438\u0439 \u0410\u043d\u0430\u043b\u0456\u0437',
    forensic_verdict: '\u2696\uFE0F \u0421\u0443\u0434\u043e\u0432\u0438\u0439 \u0412\u0435\u0440\u0434\u0438\u043a\u0442',
    primary_conclusion: '\uD83C\uDFAF \u0412\u0438\u0441\u043d\u043e\u0432\u043e\u043a \u043f\u0440\u043e \u041e\u0441\u043d\u043e\u0432\u043d\u0443 \u041f\u0440\u043e\u0431\u043b\u0435\u043c\u0443',
    analyzing: 'ШІ аналізує психологічні патерни…',
    error_prefix: '\u041f\u043e\u043c\u0438\u043b\u043a\u0430:',
    file_loaded: '\u2713 \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e:',
    limit_reached: '\u0412\u0438 \u0432\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u0430\u043b\u0438 2 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0438\u0445 \u0434\u0435\u043c\u043e-\u0430\u043d\u0430\u043b\u0456\u0437\u0438. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u0434\u043e\u0434\u0430\u0442\u043e\u043a \u0434\u043b\u044f \u043d\u0435\u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043e\u0433\u043e \u0434\u043e\u0441\u0442\u0443\u043f\u0443!',
  },
};

// RTL languages
const RTL_LANGS = new Set(['ar']);

let currentLang = 'en';

function t(key) {
  const lang = TRANSLATIONS[currentLang] || TRANSLATIONS['en'];
  return lang[key] || TRANSLATIONS['en'][key] || key;
}

function setLang(lang) {
  currentLang = lang;

  // Update html dir for RTL
  document.documentElement.lang = lang;
  document.documentElement.dir = RTL_LANGS.has(lang) ? 'rtl' : 'ltr';

  // Update active button
  document.querySelectorAll('.lang-btn').forEach(btn => {
    btn.classList.toggle('active', btn.getAttribute('onclick') === `setLang('${lang}')`);
  });

  // Apply translations to all data-i18n elements
  document.querySelectorAll('[data-i18n]').forEach(el => {
    const key = el.getAttribute('data-i18n');
    el.textContent = t(key);
  });

  // Regenerate math question in the new language
  generateMathQuestion();

  // Re-send the language code to DeepSeek via the prompt
  window._selectedLang = lang;
}

function generateMathQuestion() {
  const a = Math.floor(Math.random() * 9) + 1;
  const b = Math.floor(Math.random() * 9) + 1;
  mathCorrectAnswer = a + b;
  const qTemplate = t('math_question');
  document.getElementById('mathQuestion').textContent =
    qTemplate.replace('{a}', a).replace('{b}', b);
  document.getElementById('mathAnswer').value = '';
  captchaPassed = false;
  updateAnalyzeButton();
}

function checkMath() {
  const val = parseInt(document.getElementById('mathAnswer').value);
  const statusEl = document.getElementById('captchaStatus');
  if (val === mathCorrectAnswer) {
    captchaPassed = true;
    statusEl.textContent = t('verified');
    statusEl.style.color = '#60ff60';
  } else {
    captchaPassed = false;
    statusEl.textContent = '';
  }
  updateAnalyzeButton();
}

// Auto-detect browser language on load
(function() {
  const nav = navigator.language || 'en';
  const code = nav.split('-')[0].toLowerCase();
  const supported = Object.keys(TRANSLATIONS);
  const detected = supported.includes(code) ? code : 'en';
  setLang(detected);
})();
"""

# ─────────────────────────────────────────────────────────────────────────────
# 5.  Splice in i18n JS:
#     - Remove the old generateMathQuestion + checkMath blocks (already defined above in i18n_js)
#     - Insert TRANSLATIONS + setLang before the closing </script>
# ─────────────────────────────────────────────────────────────────────────────

# Remove the old standalone generateMathQuestion / checkMath / generateMathQuestion() call
content = re.sub(
    r'// Simple math CAPTCHA\s*\n'
    r'let captchaPassed = false;\s*\n'
    r'let mathCorrectAnswer = 0;\s*\n'
    r'\s*\nfunction generateMathQuestion\(\).*?'
    r'// Generate question on page load\s*\ngenerateMathQuestion\(\);\s*\n',
    '// Simple math CAPTCHA\nlet captchaPassed = false;\nlet mathCorrectAnswer = 0;\n\n',
    content,
    flags=re.DOTALL
)

# Also remove the old standalone checkMath() function if still present
content = re.sub(
    r'function checkMath\(\) \{.*?\}\s*\n',
    '',
    content,
    flags=re.DOTALL
)

# Insert i18n_js before closing </script>
content = content.replace('</script>\n</body>', i18n_js + '\n</script>\n</body>')

# ─────────────────────────────────────────────────────────────────────────────
# 6.  Patch the "analyzing" status message to use t()
# ─────────────────────────────────────────────────────────────────────────────
content = content.replace(
    "status.innerHTML = '<span class=\"spinner\"></span> AI is analyzing psychological patterns...'",
    "status.innerHTML = '<span class=\"spinner\"></span> ' + t('analyzing')"
)

# 7.  Also pass the selected language to DeepSeek prompt
content = content.replace(
    'const count = parseInt(metricSlider.value);',
    'const count = parseInt(metricSlider.value);\n  const langCode = window._selectedLang || \'en\';'
)
# Pass langCode in the prompt language instruction
content = content.replace(
    "Analyze this conversation for the following psychological metrics: ${metricNames}",
    "Analyze this conversation for the following psychological metrics: ${metricNames}\n\nLANGUAGE: You MUST write ALL output — summaries, analysis, verdicts, conclusions — in the language with code: ${langCode}. If langCode is 'en', write in English."
)

open(path, 'w', encoding='utf-8') .write(content)
print('Localization applied successfully.')
print('generateMathQuestion present:', 'generateMathQuestion' in content)
print('TRANSLATIONS present:', 'TRANSLATIONS' in content)
print('setLang present:', 'setLang' in content)
print('lang-selector present:', 'lang-selector' in content)
print('data-i18n present:', 'data-i18n' in content)
