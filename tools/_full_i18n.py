import sys, re
sys.stdout.reconfigure(encoding='utf-8')

path = r'C:\My Projects\AIRTA\docs\index.html'
with open(path, encoding='utf-8') as f:
    content = f.read()

# ============================================================
# 1. Replace 16 lang buttons with a styled <select> dropdown
# ============================================================
OLD_LANG_SELECTOR = '''  <div class="lang-selector" id="langSelector">
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
  </div>'''

NEW_LANG_SELECTOR = '''  <div class="lang-selector" id="langSelector">
    <select id="langDropdown" onchange="setLang(this.value)" aria-label="Language">
      <option value="en">🌐 English</option>
      <option value="es">🌐 Español</option>
      <option value="fr">🌐 Français</option>
      <option value="de">🌐 Deutsch</option>
      <option value="pt">🌐 Português</option>
      <option value="it">🌐 Italiano</option>
      <option value="ja">🌐 日本語</option>
      <option value="ko">🌐 한국어</option>
      <option value="zh">🌐 中文</option>
      <option value="ar">🌐 العربية</option>
      <option value="hi">🌐 हिन्दी</option>
      <option value="ru">🌐 Русский</option>
      <option value="nl">🌐 Nederlands</option>
      <option value="tr">🌐 Türkçe</option>
      <option value="pl">🌐 Polski</option>
      <option value="uk">🌐 Українська</option>
    </select>
  </div>'''

if OLD_LANG_SELECTOR in content:
    content = content.replace(OLD_LANG_SELECTOR, NEW_LANG_SELECTOR, 1)
    print('Lang selector replaced OK')
else:
    print('ERROR: lang selector not found')

# ============================================================
# 2. Replace old lang-selector CSS + add dropdown styles
# ============================================================
OLD_CSS = '''    .lang-selector { display: flex; justify-content: center; align-items: center; gap: 8px; margin-top: 16px; flex-wrap: wrap; }
    .lang-btn { background: #1a1a3a; border: 1px solid #3a3a6a; border-radius: 6px; color: #a0a0c0; font-size: 0.78rem; padding: 5px 10px; cursor: pointer; transition: all 0.15s; white-space: nowrap; }
    .lang-btn:hover { background: #2a2a5a; color: #d0d0ff; }
    .lang-btn.active { background: #3030aa; border-color: #6060ff; color: #ffffff; font-weight: 600; }'''

NEW_CSS = '''    .lang-selector { display: flex; justify-content: center; align-items: center; margin-top: 16px; }
    #langDropdown { background: #1a1a3a; border: 1px solid #4040aa; border-radius: 8px; color: #d0d0ff; font-size: 0.95rem; padding: 7px 14px; cursor: pointer; outline: none; appearance: none; -webkit-appearance: none; background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='8' viewBox='0 0 12 8'%3E%3Cpath d='M1 1l5 5 5-5' stroke='%236060ff' stroke-width='2' fill='none' stroke-linecap='round'/%3E%3C/svg%3E"); background-repeat: no-repeat; background-position: right 10px center; padding-right: 30px; min-width: 160px; }
    #langDropdown:hover { border-color: #6060ff; background-color: #2a2a5a; }
    #langDropdown option { background: #1a1a3a; color: #d0d0ff; }'''

if OLD_CSS in content:
    content = content.replace(OLD_CSS, NEW_CSS, 1)
    print('CSS replaced OK')
else:
    print('ERROR: CSS not found - trying partial match')
    # Try to find what's there
    idx = content.find('.lang-selector')
    print(repr(content[idx:idx+300]))

# ============================================================
# 3. Tag all untranslated static HTML with data-i18n
# ============================================================

# Header tagline
content = content.replace(
    '  <p>AI-powered analysis of your relationship conversations. Know the truth.</p>',
    '  <p data-i18n="header_tagline">AI-powered analysis of your relationship conversations. Know the truth.</p>'
)

# Badge links
content = content.replace(
    '<a class="badge" href="#try-it">',
    '<a class="badge" href="#try-it" data-i18n="badge_demo">'
).replace(
    '>� Try Web Demo — Free</a>',
    '>Try Web Demo — Free</a>'
)
# simpler: replace the full badge text spans
content = content.replace(
    '<a class="badge" href="#try-it" data-i18n="badge_demo">Try Web Demo — Free</a>',
    '<a class="badge" href="#try-it"><span data-i18n="badge_demo">🌐 Try Web Demo — Free</span></a>'
)
content = content.replace(
    '<a class="badge" href="demo.html">📱 Download Android APK</a>',
    '<a class="badge" href="demo.html"><span data-i18n="badge_apk">📱 Download Android APK</span></a>'
)
content = content.replace(
    '<a class="badge" href="#">📱 Google Play — Coming Soon</a>',
    '<a class="badge" href="#"><span data-i18n="badge_gplay">📱 Google Play — Coming Soon</span></a>'
)
content = content.replace(
    '<a class="badge" href="#">🍎 App Store — Coming Soon</a>',
    '<a class="badge" href="#"><span data-i18n="badge_appstore">🍎 App Store — Coming Soon</span></a>'
)

# Disclaimer
content = content.replace(
    '    ⚠️ For entertainment and informational purposes only. Not a substitute for professional mental health care.\n    <a href="disclaimer.html" style="color:#e0c060; margin-left:8px;">Full Disclaimer →</a>',
    '    <span data-i18n="disclaimer_text">⚠️ For entertainment and informational purposes only. Not a substitute for professional mental health care.</span>\n    <a href="disclaimer.html" style="color:#e0c060; margin-left:8px;" data-i18n="disclaimer_link">Full Disclaimer →</a>'
)

# What AIRTA Does section
content = content.replace(
    '  <h2>What AIRTA Does</h2>',
    '  <h2 data-i18n="what_airta_does">What AIRTA Does</h2>'
)
content = content.replace(
    '      <h3>Deep Conversation Analysis</h3>\n      <p>Import SMS, RCS, or chat screenshots and let AI analyze the psychological patterns within.</p>',
    '      <h3 data-i18n="feat1_title">Deep Conversation Analysis</h3>\n      <p data-i18n="feat1_desc">Import SMS, RCS, or chat screenshots and let AI analyze the psychological patterns within.</p>'
)
content = content.replace(
    '      <h3>Psychological Metrics</h3>\n      <p>Choose from dozens of metrics — gaslighting, stonewalling, manipulation, emotional balance, and more.</p>',
    '      <h3 data-i18n="feat2_title">Psychological Metrics</h3>\n      <p data-i18n="feat2_desc">Choose from dozens of metrics — gaslighting, stonewalling, manipulation, emotional balance, and more.</p>'
)
content = content.replace(
    '      <h3>Forensic-Style Reports</h3>\n      <p>Receive a full PDF report with executive summary, metric scores, evidence examples, and a final verdict.</p>',
    '      <h3 data-i18n="feat3_title">Forensic-Style Reports</h3>\n      <p data-i18n="feat3_desc">Receive a full PDF report with executive summary, metric scores, evidence examples, and a final verdict.</p>'
)
content = content.replace(
    '      <h3>Privacy First</h3>\n      <p>Your conversations are never stored on our servers. Processed in real time and discarded immediately.</p>',
    '      <h3 data-i18n="feat4_title">Privacy First</h3>\n      <p data-i18n="feat4_desc">Your conversations are never stored on our servers. Processed in real time and discarded immediately.</p>'
)
content = content.replace(
    '      <h3>16 Languages</h3>\n      <p>Available in English, Spanish, French, Portuguese, German, Italian, Japanese, Korean, and more.</p>',
    '      <h3 data-i18n="feat5_title">16 Languages</h3>\n      <p data-i18n="feat5_desc">Available in English, Spanish, French, Portuguese, German, Italian, Japanese, Korean, and more.</p>'
)
content = content.replace(
    '      <h3>Powered by DeepSeek AI</h3>\n      <p>State-of-the-art AI model analyzes nuance, tone, and behavioral patterns across your entire conversation.</p>',
    '      <h3 data-i18n="feat6_title">Powered by DeepSeek AI</h3>\n      <p data-i18n="feat6_desc">State-of-the-art AI model analyzes nuance, tone, and behavioral patterns across your entire conversation.</p>'
)

# Videos section
content = content.replace(
    '  <h2>See AIRTA in Action</h2>',
    '  <h2 data-i18n="videos_title">See AIRTA in Action</h2>'
)
content = content.replace(
    '    <p style="color:#8888aa; text-align:center; font-size:0.95rem; margin-bottom:30px;">Watch demo videos showcasing AIRTA\'s key features</p>',
    '    <p style="color:#8888aa; text-align:center; font-size:0.95rem; margin-bottom:30px;" data-i18n="videos_subtitle">Watch demo videos showcasing AIRTA\'s key features</p>'
)
content = content.replace(
    '    <p style="color:#6666aa; text-align:center; font-size:0.85rem; margin-top:20px;">Videos are created automatically by AIRTA Video Studio</p>',
    '    <p style="color:#6666aa; text-align:center; font-size:0.85rem; margin-top:20px;" data-i18n="videos_footer">Videos are created automatically by AIRTA Video Studio</p>'
)

# Download sample
content = content.replace(
    '      <a href="Sample.txt" download>📥 Download Sample Conversation (Sample.txt)</a>',
    '      <a href="Sample.txt" download><span data-i18n="download_sample">📥 Download Sample Conversation (Sample.txt)</span></a>'
)

# "Use Your Own Conversation" panel
content = content.replace(
    '      <h3 style="color:#60ff60;">Use Your Own Conversation</h3>',
    '      <h3 style="color:#60ff60;" data-i18n="use_own_title">Use Your Own Conversation</h3>'
)
content = content.replace(
    "      <p style=\"color:#a0a0c0; margin-bottom:8px;\">The Sample.txt file is just an example. You can edit it or replace its contents with any real conversation you've exported from your phone or messaging app. Just keep it in plain text format.</p>",
    '      <p style="color:#a0a0c0; margin-bottom:8px;" data-i18n="use_own_desc">The Sample.txt file is just an example. You can edit it or replace its contents with any real conversation you\'ve exported from your phone or messaging app. Just keep it in plain text format.</p>'
)
content = content.replace(
    '      <p style="color:#8888aa; font-size:0.82rem; margin-bottom:12px;">The AI analyzes the raw text — it works with any conversation format as long as it\'s readable.</p>',
    '      <p style="color:#8888aa; font-size:0.82rem; margin-bottom:12px;" data-i18n="use_own_tip2">The AI analyzes the raw text — it works with any conversation format as long as it\'s readable.</p>'
)
content = content.replace(
    '      <p style="color:#a0a0c0; font-size:0.85rem; font-weight:600; margin-bottom:6px;">Supported file types:</p>',
    '      <p style="color:#a0a0c0; font-size:0.85rem; font-weight:600; margin-bottom:6px;" data-i18n="supported_types">Supported file types:</p>'
)
content = content.replace(
    '      <p style="color:#6666aa; font-size:0.78rem; margin-top:10px;">Tip: On Android, export your SMS thread from the Messages app. On iPhone, use an iMessage export tool or simply copy-paste a conversation into a .txt file.</p>',
    '      <p style="color:#6666aa; font-size:0.78rem; margin-top:10px;" data-i18n="use_own_tip3">Tip: On Android, export your SMS thread from the Messages app. On iPhone, use an iMessage export tool or simply copy-paste a conversation into a .txt file.</p>'
)

# Metric Scores heading (in report)
content = content.replace(
    '      <h3 style="color:#a0a0c0; font-size:0.95rem; margin-bottom:12px;">Metric Scores</h3>',
    '      <h3 style="color:#a0a0c0; font-size:0.95rem; margin-bottom:12px;" data-i18n="metric_scores">Metric Scores</h3>'
)

# Legal section
content = content.replace(
    '  <h2>Legal</h2>',
    '  <h2 data-i18n="legal_title">Legal</h2>'
)
content = content.replace(
    '    <a href="privacy.html">🔐 Privacy Policy</a>',
    '    <a href="privacy.html" data-i18n="privacy_policy">🔐 Privacy Policy</a>'
)
content = content.replace(
    '    <a href="disclaimer.html">⚠️ Medical Disclaimer</a>',
    '    <a href="disclaimer.html" data-i18n="medical_disclaimer">⚠️ Medical Disclaimer</a>'
)

# Footer
content = content.replace(
    '  <p>© 2025 AIRTA Corp · Lady Lake, Florida · <a href="mailto:privacy@airta.net" style="color:#5a5a8a;">privacy@airta.net</a></p>',
    '  <p><span data-i18n="footer_text">© 2025 AIRTA Corp · Lady Lake, Florida</span> · <a href="mailto:privacy@airta.net" style="color:#5a5a8a;">privacy@airta.net</a></p>'
)

print('HTML tags applied')

# ============================================================
# 4. Fix setLang() to update the dropdown instead of buttons
# ============================================================
OLD_SETLANG_BTN = '''  // Update active button
  document.querySelectorAll('.lang-btn').forEach(btn => {
    btn.classList.toggle('active', btn.getAttribute('onclick') === `setLang('${lang}')`);
  });'''

NEW_SETLANG_BTN = '''  // Update dropdown selection
  const dd = document.getElementById('langDropdown');
  if (dd) dd.value = lang;'''

if OLD_SETLANG_BTN in content:
    content = content.replace(OLD_SETLANG_BTN, NEW_SETLANG_BTN, 1)
    print('setLang() updated OK')
else:
    print('ERROR: setLang btn block not found')

# ============================================================
# 5. Add all new translation keys to TRANSLATIONS object
# ============================================================
# Find the EN section and append the new keys before its closing }
NEW_EN_KEYS = '''    // Page-wide i18n
    header_tagline: 'AI-powered analysis of your relationship conversations. Know the truth.',
    badge_demo: '🌐 Try Web Demo — Free',
    badge_apk: '📱 Download Android APK',
    badge_gplay: '📱 Google Play — Coming Soon',
    badge_appstore: '🍎 App Store — Coming Soon',
    disclaimer_text: '⚠️ For entertainment and informational purposes only. Not a substitute for professional mental health care.',
    disclaimer_link: 'Full Disclaimer →',
    what_airta_does: 'What AIRTA Does',
    feat1_title: 'Deep Conversation Analysis',
    feat1_desc: 'Import SMS, RCS, or chat screenshots and let AI analyze the psychological patterns within.',
    feat2_title: 'Psychological Metrics',
    feat2_desc: 'Choose from dozens of metrics — gaslighting, stonewalling, manipulation, emotional balance, and more.',
    feat3_title: 'Forensic-Style Reports',
    feat3_desc: 'Receive a full PDF report with executive summary, metric scores, evidence examples, and a final verdict.',
    feat4_title: 'Privacy First',
    feat4_desc: 'Your conversations are never stored on our servers. Processed in real time and discarded immediately.',
    feat5_title: '16 Languages',
    feat5_desc: 'Available in English, Spanish, French, Portuguese, German, Italian, Japanese, Korean, and more.',
    feat6_title: 'Powered by DeepSeek AI',
    feat6_desc: 'State-of-the-art AI model analyzes nuance, tone, and behavioral patterns across your entire conversation.',
    videos_title: 'See AIRTA in Action',
    videos_subtitle: "Watch demo videos showcasing AIRTA's key features",
    videos_footer: 'Videos are created automatically by AIRTA Video Studio',
    download_sample: '📥 Download Sample Conversation (Sample.txt)',
    use_own_title: 'Use Your Own Conversation',
    use_own_desc: "The Sample.txt file is just an example. You can edit it or replace its contents with any real conversation you've exported from your phone or messaging app. Just keep it in plain text format.",
    use_own_tip2: "The AI analyzes the raw text — it works with any conversation format as long as it's readable.",
    supported_types: 'Supported file types:',
    use_own_tip3: 'Tip: On Android, export your SMS thread from the Messages app. On iPhone, use an iMessage export tool or simply copy-paste a conversation into a .txt file.',
    legal_title: 'Legal',
    privacy_policy: '🔐 Privacy Policy',
    medical_disclaimer: '⚠️ Medical Disclaimer',
    footer_text: '© 2025 AIRTA Corp · Lady Lake, Florida',
    individual_analysis_label: 'Individual Analysis','''

# Insert new EN keys before the closing }, of EN section
EN_CLOSE = '''    individual_analysis_label: 'Individual Analysis',
  },
  es:'''

if EN_CLOSE in content:
    # Keys already there partially — replace with full set
    content = content.replace(
        "    individual_analysis_label: 'Individual Analysis',\n  },\n  es:",
        NEW_EN_KEYS + "\n  },\n  es:"
    )
    print('EN keys inserted OK')
else:
    # Try finding end of EN section differently
    EN_CLOSE2 = "    individual_analysis_label: 'Individual Analysis',\n  },"
    idx = content.find(EN_CLOSE2)
    if idx != -1:
        content = content[:idx] + NEW_EN_KEYS + "\n  }," + content[idx + len(EN_CLOSE2):]
        print('EN keys inserted (variant) OK')
    else:
        print('ERROR: EN close not found')
        idx2 = content.find('individual_analysis_label')
        print(repr(content[idx2-20:idx2+80]))

# Now add translations for all other languages
# We'll use a dict of all translations
OTHER_LANGS = {
  'es': {
    'header_tagline': 'Análisis con IA de tus conversaciones de pareja. Conoce la verdad.',
    'badge_demo': '🌐 Probar Demo — Gratis',
    'badge_apk': '📱 Descargar APK Android',
    'badge_gplay': '📱 Google Play — Próximamente',
    'badge_appstore': '🍎 App Store — Próximamente',
    'disclaimer_text': '⚠️ Solo para entretenimiento e información. No sustituye la atención de salud mental profesional.',
    'disclaimer_link': 'Aviso Legal Completo →',
    'what_airta_does': 'Qué Hace AIRTA',
    'feat1_title': 'Análisis Profundo de Conversaciones',
    'feat1_desc': 'Importa SMS, RCS o capturas de chat y deja que la IA analice los patrones psicológicos.',
    'feat2_title': 'Métricas Psicológicas',
    'feat2_desc': 'Elige entre docenas de métricas — gaslighting, bloqueo emocional, manipulación, y más.',
    'feat3_title': 'Informes Forenses',
    'feat3_desc': 'Recibe un informe PDF completo con resumen ejecutivo, puntuaciones y veredicto final.',
    'feat4_title': 'Privacidad Primero',
    'feat4_desc': 'Tus conversaciones nunca se almacenan en nuestros servidores. Procesadas en tiempo real.',
    'feat5_title': '16 Idiomas',
    'feat5_desc': 'Disponible en inglés, español, francés, portugués, alemán, italiano, japonés, coreano y más.',
    'feat6_title': 'Impulsado por DeepSeek AI',
    'feat6_desc': 'Modelo de IA de última generación que analiza matices, tono y patrones de comportamiento.',
    'videos_title': 'AIRTA en Acción',
    'videos_subtitle': 'Mira videos demostrativos de las funciones clave de AIRTA',
    'videos_footer': 'Los videos se crean automáticamente por AIRTA Video Studio',
    'download_sample': '📥 Descargar Conversación de Muestra (Sample.txt)',
    'use_own_title': 'Usa Tu Propia Conversación',
    'use_own_desc': 'El archivo Sample.txt es solo un ejemplo. Puedes editarlo o reemplazar su contenido con cualquier conversación real que hayas exportado de tu teléfono.',
    'use_own_tip2': 'La IA analiza el texto sin formato — funciona con cualquier formato de conversación legible.',
    'supported_types': 'Tipos de archivo admitidos:',
    'use_own_tip3': 'Consejo: En Android, exporta tu hilo de SMS. En iPhone, usa una herramienta de exportación de iMessage.',
    'legal_title': 'Legal',
    'privacy_policy': '🔐 Política de Privacidad',
    'medical_disclaimer': '⚠️ Aviso Médico',
    'footer_text': '© 2025 AIRTA Corp · Lady Lake, Florida',
    'individual_analysis_label': 'Análisis Individual',
  },
  'fr': {
    'header_tagline': "Analyse IA de vos conversations de couple. Découvrez la vérité.",
    'badge_demo': '🌐 Essayer la Démo — Gratuit',
    'badge_apk': '📱 Télécharger l\'APK Android',
    'badge_gplay': '📱 Google Play — Bientôt',
    'badge_appstore': '🍎 App Store — Bientôt',
    'disclaimer_text': '⚠️ À des fins de divertissement et d\'information uniquement. Ne remplace pas une aide professionnelle en santé mentale.',
    'disclaimer_link': 'Avis Complet →',
    'what_airta_does': 'Ce que fait AIRTA',
    'feat1_title': 'Analyse Approfondie des Conversations',
    'feat1_desc': 'Importez des SMS, RCS ou captures d\'écran de chat et laissez l\'IA analyser les schémas psychologiques.',
    'feat2_title': 'Métriques Psychologiques',
    'feat2_desc': 'Choisissez parmi des dizaines de métriques — gaslighting, stonewalling, manipulation, et plus.',
    'feat3_title': 'Rapports Médico-Légaux',
    'feat3_desc': 'Recevez un rapport PDF complet avec résumé, scores et verdict final.',
    'feat4_title': 'La Vie Privée d\'Abord',
    'feat4_desc': 'Vos conversations ne sont jamais stockées sur nos serveurs. Traitées en temps réel.',
    'feat5_title': '16 Langues',
    'feat5_desc': 'Disponible en anglais, espagnol, français, portugais, allemand, italien, japonais, coréen et plus.',
    'feat6_title': 'Propulsé par DeepSeek AI',
    'feat6_desc': 'Modèle IA de pointe qui analyse les nuances, le ton et les schémas comportementaux.',
    'videos_title': 'AIRTA en Action',
    'videos_subtitle': 'Regardez des vidéos de démonstration des fonctionnalités clés d\'AIRTA',
    'videos_footer': 'Les vidéos sont créées automatiquement par AIRTA Video Studio',
    'download_sample': '📥 Télécharger la Conversation Exemple (Sample.txt)',
    'use_own_title': 'Utilisez Votre Propre Conversation',
    'use_own_desc': 'Le fichier Sample.txt est juste un exemple. Vous pouvez le modifier ou remplacer son contenu par une vraie conversation exportée de votre téléphone.',
    'use_own_tip2': "L'IA analyse le texte brut — fonctionne avec n'importe quel format lisible.",
    'supported_types': 'Types de fichiers acceptés :',
    'use_own_tip3': 'Conseil : Sur Android, exportez votre fil SMS. Sur iPhone, utilisez un outil d\'exportation iMessage.',
    'legal_title': 'Mentions Légales',
    'privacy_policy': '🔐 Politique de Confidentialité',
    'medical_disclaimer': '⚠️ Avertissement Médical',
    'footer_text': '© 2025 AIRTA Corp · Lady Lake, Floride',
    'individual_analysis_label': 'Analyse Individuelle',
  },
  'de': {
    'header_tagline': 'KI-gestützte Analyse Ihrer Beziehungsgespräche. Erfahren Sie die Wahrheit.',
    'badge_demo': '🌐 Demo ausprobieren — Kostenlos',
    'badge_apk': '📱 Android APK herunterladen',
    'badge_gplay': '📱 Google Play — Demnächst',
    'badge_appstore': '🍎 App Store — Demnächst',
    'disclaimer_text': '⚠️ Nur zu Unterhaltungs- und Informationszwecken. Kein Ersatz für professionelle psychische Gesundheitsversorgung.',
    'disclaimer_link': 'Vollständiger Haftungsausschluss →',
    'what_airta_does': 'Was AIRTA macht',
    'feat1_title': 'Tiefgehende Gesprächsanalyse',
    'feat1_desc': 'Importieren Sie SMS, RCS oder Chat-Screenshots und lassen Sie die KI psychologische Muster analysieren.',
    'feat2_title': 'Psychologische Metriken',
    'feat2_desc': 'Wählen Sie aus Dutzenden von Metriken — Gaslighting, Stonewalling, Manipulation und mehr.',
    'feat3_title': 'Forensische Berichte',
    'feat3_desc': 'Erhalten Sie einen vollständigen PDF-Bericht mit Zusammenfassung, Scores und finalem Urteil.',
    'feat4_title': 'Datenschutz zuerst',
    'feat4_desc': 'Ihre Gespräche werden niemals auf unseren Servern gespeichert. Echtzeit-Verarbeitung.',
    'feat5_title': '16 Sprachen',
    'feat5_desc': 'Verfügbar auf Englisch, Spanisch, Französisch, Portugiesisch, Deutsch, Italienisch, Japanisch, Koreanisch und mehr.',
    'feat6_title': 'Angetrieben von DeepSeek KI',
    'feat6_desc': 'Modernster KI-Modell analysiert Nuancen, Ton und Verhaltensmuster.',
    'videos_title': 'AIRTA in Aktion',
    'videos_subtitle': 'Sehen Sie Demo-Videos der wichtigsten AIRTA-Funktionen',
    'videos_footer': 'Videos werden automatisch von AIRTA Video Studio erstellt',
    'download_sample': '📥 Beispielgespräch herunterladen (Sample.txt)',
    'use_own_title': 'Eigenes Gespräch verwenden',
    'use_own_desc': 'Die Sample.txt-Datei ist nur ein Beispiel. Sie können sie bearbeiten oder durch ein echtes exportiertes Gespräch ersetzen.',
    'use_own_tip2': 'Die KI analysiert den Rohtext — funktioniert mit jedem lesbaren Format.',
    'supported_types': 'Unterstützte Dateitypen:',
    'use_own_tip3': 'Tipp: Exportieren Sie auf Android Ihren SMS-Thread. Auf iPhone verwenden Sie ein iMessage-Exporttool.',
    'legal_title': 'Rechtliches',
    'privacy_policy': '🔐 Datenschutzrichtlinie',
    'medical_disclaimer': '⚠️ Medizinischer Haftungsausschluss',
    'footer_text': '© 2025 AIRTA Corp · Lady Lake, Florida',
    'individual_analysis_label': 'Individuelle Analyse',
  },
  'pt': {
    'header_tagline': 'Análise com IA das suas conversas de relacionamento. Descubra a verdade.',
    'badge_demo': '🌐 Experimentar Demo — Grátis',
    'badge_apk': '📱 Baixar APK Android',
    'badge_gplay': '📱 Google Play — Em Breve',
    'badge_appstore': '🍎 App Store — Em Breve',
    'disclaimer_text': '⚠️ Apenas para entretenimento e informação. Não substitui cuidados profissionais de saúde mental.',
    'disclaimer_link': 'Aviso Completo →',
    'what_airta_does': 'O que o AIRTA faz',
    'feat1_title': 'Análise Profunda de Conversas',
    'feat1_desc': 'Importe SMS, RCS ou capturas de ecrã de chat e deixe a IA analisar os padrões psicológicos.',
    'feat2_title': 'Métricas Psicológicas',
    'feat2_desc': 'Escolha entre dezenas de métricas — gaslighting, stonewalling, manipulação e mais.',
    'feat3_title': 'Relatórios Forenses',
    'feat3_desc': 'Receba um relatório PDF completo com resumo executivo, pontuações e veredicto final.',
    'feat4_title': 'Privacidade em Primeiro Lugar',
    'feat4_desc': 'As suas conversas nunca são armazenadas nos nossos servidores. Processadas em tempo real.',
    'feat5_title': '16 Idiomas',
    'feat5_desc': 'Disponível em inglês, espanhol, francês, português, alemão, italiano, japonês, coreano e mais.',
    'feat6_title': 'Powered by DeepSeek AI',
    'feat6_desc': 'Modelo de IA de última geração que analisa nuances, tom e padrões de comportamento.',
    'videos_title': 'AIRTA em Ação',
    'videos_subtitle': 'Veja vídeos de demonstração das principais funcionalidades do AIRTA',
    'videos_footer': 'Vídeos criados automaticamente pelo AIRTA Video Studio',
    'download_sample': '📥 Baixar Conversa de Exemplo (Sample.txt)',
    'use_own_title': 'Use a Sua Própria Conversa',
    'use_own_desc': 'O ficheiro Sample.txt é apenas um exemplo. Pode editá-lo ou substituir o seu conteúdo por uma conversa real exportada do seu telemóvel.',
    'use_own_tip2': 'A IA analisa o texto em bruto — funciona com qualquer formato legível.',
    'supported_types': 'Tipos de ficheiro suportados:',
    'use_own_tip3': 'Dica: No Android, exporte o seu SMS. No iPhone, use uma ferramenta de exportação iMessage.',
    'legal_title': 'Legal',
    'privacy_policy': '🔐 Política de Privacidade',
    'medical_disclaimer': '⚠️ Aviso Médico',
    'footer_text': '© 2025 AIRTA Corp · Lady Lake, Florida',
    'individual_analysis_label': 'Análise Individual',
  },
  'it': {
    'header_tagline': "Analisi IA delle tue conversazioni di coppia. Scopri la verità.",
    'badge_demo': '🌐 Prova la Demo — Gratis',
    'badge_apk': '📱 Scarica APK Android',
    'badge_gplay': '📱 Google Play — Prossimamente',
    'badge_appstore': '🍎 App Store — Prossimamente',
    'disclaimer_text': '⚠️ Solo a scopo di intrattenimento e informazione. Non sostituisce cure professionali per la salute mentale.',
    'disclaimer_link': 'Disclaimer Completo →',
    'what_airta_does': 'Cosa fa AIRTA',
    'feat1_title': 'Analisi Approfondita delle Conversazioni',
    'feat1_desc': "Importa SMS, RCS o screenshot di chat e lascia che l'IA analizzi i modelli psicologici.",
    'feat2_title': 'Metriche Psicologiche',
    'feat2_desc': 'Scegli tra decine di metriche — gaslighting, stonewalling, manipolazione e altro.',
    'feat3_title': 'Rapporti Forensi',
    'feat3_desc': 'Ricevi un report PDF completo con sommario esecutivo, punteggi e verdetto finale.',
    'feat4_title': 'Privacy Prima di Tutto',
    'feat4_desc': 'Le tue conversazioni non vengono mai memorizzate sui nostri server. Elaborate in tempo reale.',
    'feat5_title': '16 Lingue',
    'feat5_desc': 'Disponibile in inglese, spagnolo, francese, portoghese, tedesco, italiano, giapponese, coreano e altro.',
    'feat6_title': 'Powered by DeepSeek AI',
    'feat6_desc': "Modello IA all'avanguardia che analizza sfumature, tono e modelli comportamentali.",
    'videos_title': 'AIRTA in Azione',
    'videos_subtitle': "Guarda i video dimostrativi delle funzionalità chiave di AIRTA",
    'videos_footer': 'I video sono creati automaticamente da AIRTA Video Studio',
    'download_sample': '📥 Scarica Conversazione di Esempio (Sample.txt)',
    'use_own_title': 'Usa la Tua Conversazione',
    'use_own_desc': 'Il file Sample.txt è solo un esempio. Puoi modificarlo o sostituirne il contenuto con una conversazione reale esportata dal tuo telefono.',
    'use_own_tip2': "L'IA analizza il testo grezzo — funziona con qualsiasi formato leggibile.",
    'supported_types': 'Tipi di file supportati:',
    'use_own_tip3': 'Suggerimento: Su Android, esporta il thread SMS. Su iPhone, usa uno strumento di esportazione iMessage.',
    'legal_title': 'Legale',
    'privacy_policy': '🔐 Privacy Policy',
    'medical_disclaimer': '⚠️ Avviso Medico',
    'footer_text': '© 2025 AIRTA Corp · Lady Lake, Florida',
    'individual_analysis_label': 'Analisi Individuale',
  },
  'ja': {
    'header_tagline': 'AIによる関係の会話分析。真実を知ろう。',
    'badge_demo': '🌐 無料デモを試す',
    'badge_apk': '📱 Android APKダウンロード',
    'badge_gplay': '📱 Google Play — 近日公開',
    'badge_appstore': '🍎 App Store — 近日公開',
    'disclaimer_text': '⚠️ 娯楽・情報提供のみを目的としています。専門的なメンタルヘルスケアの代替ではありません。',
    'disclaimer_link': '免責事項全文 →',
    'what_airta_does': 'AIRTAができること',
    'feat1_title': '会話の深層分析',
    'feat1_desc': 'SMS、RCS、チャットのスクリーンショットをインポートし、AIが心理パターンを分析します。',
    'feat2_title': '心理指標',
    'feat2_desc': 'ガスライティング、ストーンウォーリング、操作など多数の指標から選択できます。',
    'feat3_title': '法科学的レポート',
    'feat3_desc': 'エグゼクティブサマリー、スコア、証拠例、最終評決を含む完全なPDFレポートを受け取ります。',
    'feat4_title': 'プライバシー最優先',
    'feat4_desc': '会話はサーバーに保存されません。リアルタイムで処理され、即座に破棄されます。',
    'feat5_title': '16言語対応',
    'feat5_desc': '英語、スペイン語、フランス語、ポルトガル語、ドイツ語、イタリア語、日本語、韓国語などで利用可能。',
    'feat6_title': 'DeepSeek AIを搭載',
    'feat6_desc': '最先端のAIモデルが会話全体のニュアンス、トーン、行動パターンを分析します。',
    'videos_title': 'AIRTAの動作を見る',
    'videos_subtitle': 'AIRTAの主要機能のデモ動画をご覧ください',
    'videos_footer': '動画はAIRTA Video Studioで自動的に作成されます',
    'download_sample': '📥 サンプル会話をダウンロード (Sample.txt)',
    'use_own_title': '自分の会話を使う',
    'use_own_desc': 'Sample.txtはあくまでサンプルです。実際の会話ファイルに置き換えてください。',
    'use_own_tip2': 'AIはテキストを分析します — 読めるフォーマットなら何でも動作します。',
    'supported_types': '対応ファイル形式：',
    'use_own_tip3': 'ヒント：AndroidでSMSスレッドをエクスポート。iPhoneはiMessageエクスポートツールを使用。',
    'legal_title': '法的情報',
    'privacy_policy': '🔐 プライバシーポリシー',
    'medical_disclaimer': '⚠️ 医療上の免責事項',
    'footer_text': '© 2025 AIRTA Corp · レディーレイク、フロリダ',
    'individual_analysis_label': '個別分析',
  },
  'ko': {
    'header_tagline': 'AI 기반 관계 대화 분석. 진실을 알아보세요.',
    'badge_demo': '🌐 무료 데모 체험',
    'badge_apk': '📱 Android APK 다운로드',
    'badge_gplay': '📱 Google Play — 출시 예정',
    'badge_appstore': '🍎 App Store — 출시 예정',
    'disclaimer_text': '⚠️ 오락 및 정보 제공 목적으로만 사용됩니다. 전문 정신 건강 치료의 대체가 아닙니다.',
    'disclaimer_link': '전체 면책 조항 →',
    'what_airta_does': 'AIRTA가 하는 일',
    'feat1_title': '심층 대화 분석',
    'feat1_desc': 'SMS, RCS 또는 채팅 스크린샷을 가져와 AI가 심리적 패턴을 분석합니다.',
    'feat2_title': '심리 지표',
    'feat2_desc': '가스라이팅, 스톤월링, 조작 등 수십 가지 지표 중 선택하세요.',
    'feat3_title': '포렌식 보고서',
    'feat3_desc': '요약, 점수, 증거 예시, 최종 판결이 포함된 전체 PDF 보고서를 받습니다.',
    'feat4_title': '프라이버시 우선',
    'feat4_desc': '대화는 서버에 저장되지 않습니다. 실시간으로 처리되고 즉시 삭제됩니다.',
    'feat5_title': '16개 언어',
    'feat5_desc': '영어, 스페인어, 프랑스어, 포르투갈어, 독일어, 이탈리아어, 일본어, 한국어 등 지원.',
    'feat6_title': 'DeepSeek AI 기반',
    'feat6_desc': '최첨단 AI 모델이 전체 대화의 뉘앙스, 톤, 행동 패턴을 분석합니다.',
    'videos_title': 'AIRTA 실제 사용',
    'videos_subtitle': 'AIRTA 주요 기능 데모 영상 시청',
    'videos_footer': '영상은 AIRTA Video Studio에 의해 자동으로 생성됩니다',
    'download_sample': '📥 샘플 대화 다운로드 (Sample.txt)',
    'use_own_title': '내 대화 사용하기',
    'use_own_desc': 'Sample.txt는 예시일 뿐입니다. 실제 대화 파일로 교체하세요.',
    'use_own_tip2': 'AI는 원시 텍스트를 분석합니다 — 읽을 수 있는 형식이면 작동합니다.',
    'supported_types': '지원 파일 형식:',
    'use_own_tip3': '팁: Android에서 SMS 스레드 내보내기. iPhone은 iMessage 내보내기 도구 사용.',
    'legal_title': '법적 정보',
    'privacy_policy': '🔐 개인정보 처리방침',
    'medical_disclaimer': '⚠️ 의료 면책 조항',
    'footer_text': '© 2025 AIRTA Corp · 레이디 레이크, 플로리다',
    'individual_analysis_label': '개별 분석',
  },
  'zh': {
    'header_tagline': '基于AI的关系对话分析。了解真相。',
    'badge_demo': '🌐 免费体验演示',
    'badge_apk': '📱 下载Android APK',
    'badge_gplay': '📱 Google Play — 即将推出',
    'badge_appstore': '🍎 App Store — 即将推出',
    'disclaimer_text': '⚠️ 仅供娱乐和信息参考。不能替代专业心理健康护理。',
    'disclaimer_link': '完整免责声明 →',
    'what_airta_does': 'AIRTA能做什么',
    'feat1_title': '深度对话分析',
    'feat1_desc': '导入短信、RCS或聊天截图，让AI分析心理模式。',
    'feat2_title': '心理指标',
    'feat2_desc': '从数十种指标中选择——煤气灯效应、冷暴力、操控等。',
    'feat3_title': '法证式报告',
    'feat3_desc': '获取包含执行摘要、指标评分、证据示例和最终裁决的完整PDF报告。',
    'feat4_title': '隐私优先',
    'feat4_desc': '您的对话从不存储在我们的服务器上。实时处理，立即丢弃。',
    'feat5_title': '16种语言',
    'feat5_desc': '支持英语、西班牙语、法语、葡萄牙语、德语、意大利语、日语、韩语等。',
    'feat6_title': 'DeepSeek AI驱动',
    'feat6_desc': '最先进的AI模型分析整个对话的细微差别、语气和行为模式。',
    'videos_title': 'AIRTA实战演示',
    'videos_subtitle': '观看AIRTA主要功能演示视频',
    'videos_footer': '视频由AIRTA Video Studio自动创建',
    'download_sample': '📥 下载示例对话 (Sample.txt)',
    'use_own_title': '使用您自己的对话',
    'use_own_desc': 'Sample.txt文件只是一个示例。您可以用从手机导出的真实对话替换它。',
    'use_own_tip2': 'AI分析原始文本——任何可读格式都适用。',
    'supported_types': '支持的文件类型：',
    'use_own_tip3': '提示：在Android上导出短信线程。iPhone上使用iMessage导出工具。',
    'legal_title': '法律信息',
    'privacy_policy': '🔐 隐私政策',
    'medical_disclaimer': '⚠️ 医疗免责声明',
    'footer_text': '© 2025 AIRTA Corp · 弗洛里达州莱迪莱克',
    'individual_analysis_label': '个人分析',
  },
  'ar': {
    'header_tagline': 'تحليل محادثات العلاقات بالذكاء الاصطناعي. اعرف الحقيقة.',
    'badge_demo': '🌐 جرب العرض التجريبي — مجاناً',
    'badge_apk': '📱 تحميل APK أندرويد',
    'badge_gplay': '📱 Google Play — قريباً',
    'badge_appstore': '🍎 App Store — قريباً',
    'disclaimer_text': '⚠️ للترفيه والمعلومات فقط. لا يغني عن الرعاية الصحية النفسية المتخصصة.',
    'disclaimer_link': 'إخلاء المسؤولية الكامل →',
    'what_airta_does': 'ما يفعله AIRTA',
    'feat1_title': 'تحليل عميق للمحادثات',
    'feat1_desc': 'استورد الرسائل أو لقطات الشاشة ودع الذكاء الاصطناعي يحلل الأنماط النفسية.',
    'feat2_title': 'مقاييس نفسية',
    'feat2_desc': 'اختر من عشرات المقاييس — الغاز لايتنغ والتجاهل والتلاعب والمزيد.',
    'feat3_title': 'تقارير جنائية',
    'feat3_desc': 'احصل على تقرير PDF كامل بملخص تنفيذي ودرجات ونماذج أدلة وحكم نهائي.',
    'feat4_title': 'الخصوصية أولاً',
    'feat4_desc': 'لا يتم تخزين محادثاتك على خوادمنا. معالجة فورية وحذف فوري.',
    'feat5_title': '16 لغة',
    'feat5_desc': 'متاح بالإنجليزية والإسبانية والفرنسية والبرتغالية والألمانية والإيطالية واليابانية والكورية وغيرها.',
    'feat6_title': 'مدعوم بـ DeepSeek AI',
    'feat6_desc': 'نموذج ذكاء اصطناعي متطور يحلل الفروق الدقيقة والنبرة وأنماط السلوك.',
    'videos_title': 'AIRTA في العمل',
    'videos_subtitle': 'شاهد مقاطع فيديو توضيحية لأبرز مميزات AIRTA',
    'videos_footer': 'تُنشأ مقاطع الفيديو تلقائياً بواسطة AIRTA Video Studio',
    'download_sample': '📥 تحميل محادثة نموذجية (Sample.txt)',
    'use_own_title': 'استخدم محادثتك الخاصة',
    'use_own_desc': 'ملف Sample.txt مجرد مثال. يمكنك تعديله أو استبداله بأي محادثة حقيقية.',
    'use_own_tip2': 'يحلل الذكاء الاصطناعي النص الخام — يعمل مع أي صيغة قابلة للقراءة.',
    'supported_types': 'أنواع الملفات المدعومة:',
    'use_own_tip3': 'نصيحة: صدّر خيط الرسائل على Android. استخدم أداة تصدير iMessage على iPhone.',
    'legal_title': 'قانوني',
    'privacy_policy': '🔐 سياسة الخصوصية',
    'medical_disclaimer': '⚠️ إخلاء مسؤولية طبية',
    'footer_text': '© 2025 AIRTA Corp · ليدي ليك، فلوريدا',
    'individual_analysis_label': 'تحليل فردي',
  },
  'hi': {
    'header_tagline': 'रिश्ते की बातचीत का AI-आधारित विश्लेषण। सच्चाई जानें।',
    'badge_demo': '🌐 मुफ़्त डेमो आज़माएं',
    'badge_apk': '📱 Android APK डाउनलोड करें',
    'badge_gplay': '📱 Google Play — जल्द आ रहा है',
    'badge_appstore': '🍎 App Store — जल्द आ रहा है',
    'disclaimer_text': '⚠️ केवल मनोरंजन और सूचना के लिए। पेशेवर मानसिक स्वास्थ्य देखभाल का विकल्प नहीं है।',
    'disclaimer_link': 'पूर्ण अस्वीकरण →',
    'what_airta_does': 'AIRTA क्या करता है',
    'feat1_title': 'गहन बातचीत विश्लेषण',
    'feat1_desc': 'SMS, RCS या चैट स्क्रीनशॉट आयात करें और AI को मनोवैज्ञानिक पैटर्न का विश्लेषण करने दें।',
    'feat2_title': 'मनोवैज्ञानिक मेट्रिक्स',
    'feat2_desc': 'दर्जनों मेट्रिक्स में से चुनें — गैसलाइटिंग, स्टोनवॉलिंग, हेरफेर और अधिक।',
    'feat3_title': 'फोरेंसिक रिपोर्ट',
    'feat3_desc': 'कार्यकारी सारांश, स्कोर, साक्ष्य उदाहरण और अंतिम निर्णय के साथ पूर्ण PDF रिपोर्ट प्राप्त करें।',
    'feat4_title': 'गोपनीयता पहले',
    'feat4_desc': 'आपकी बातचीत हमारे सर्वर पर कभी संग्रहीत नहीं होती। रीयल-टाइम में प्रोसेस की जाती है।',
    'feat5_title': '16 भाषाएं',
    'feat5_desc': 'अंग्रेजी, स्पेनिश, फ्रेंच, पुर्तगाली, जर्मन, इतालवी, जापानी, कोरियाई और अधिक में उपलब्ध।',
    'feat6_title': 'DeepSeek AI द्वारा संचालित',
    'feat6_desc': 'अत्याधुनिक AI मॉडल पूरी बातचीत में बारीकियों, स्वर और व्यवहार पैटर्न का विश्लेषण करता है।',
    'videos_title': 'AIRTA को एक्शन में देखें',
    'videos_subtitle': 'AIRTA की प्रमुख विशेषताओं के डेमो वीडियो देखें',
    'videos_footer': 'वीडियो AIRTA Video Studio द्वारा स्वचालित रूप से बनाए जाते हैं',
    'download_sample': '📥 नमूना बातचीत डाउनलोड करें (Sample.txt)',
    'use_own_title': 'अपनी बातचीत उपयोग करें',
    'use_own_desc': 'Sample.txt फ़ाइल केवल एक उदाहरण है। इसे अपने फोन से निर्यात की गई वास्तविक बातचीत से बदलें।',
    'use_own_tip2': 'AI कच्चे टेक्स्ट का विश्लेषण करता है — किसी भी पठनीय प्रारूप के साथ काम करता है।',
    'supported_types': 'समर्थित फ़ाइल प्रकार:',
    'use_own_tip3': 'सुझाव: Android पर SMS थ्रेड निर्यात करें। iPhone पर iMessage निर्यात टूल का उपयोग करें।',
    'legal_title': 'कानूनी',
    'privacy_policy': '🔐 गोपनीयता नीति',
    'medical_disclaimer': '⚠️ चिकित्सा अस्वीकरण',
    'footer_text': '© 2025 AIRTA Corp · लेडी लेक, फ्लोरिडा',
    'individual_analysis_label': 'व्यक्तिगत विश्लेषण',
  },
  'ru': {
    'header_tagline': 'ИИ-анализ переписки в отношениях. Узнайте правду.',
    'badge_demo': '🌐 Попробовать демо — Бесплатно',
    'badge_apk': '📱 Скачать Android APK',
    'badge_gplay': '📱 Google Play — Скоро',
    'badge_appstore': '🍎 App Store — Скоро',
    'disclaimer_text': '⚠️ Только для развлечения и информации. Не заменяет профессиональную помощь психолога.',
    'disclaimer_link': 'Полный отказ от ответственности →',
    'what_airta_does': 'Что делает AIRTA',
    'feat1_title': 'Глубокий анализ переписки',
    'feat1_desc': 'Импортируйте SMS, RCS или скриншоты чатов — ИИ проанализирует психологические паттерны.',
    'feat2_title': 'Психологические метрики',
    'feat2_desc': 'Выбирайте из десятков метрик — газлайтинг, игнорирование, манипуляции и многое другое.',
    'feat3_title': 'Криминалистические отчёты',
    'feat3_desc': 'Получите полный PDF-отчёт с резюме, оценками, примерами доказательств и вердиктом.',
    'feat4_title': 'Приватность прежде всего',
    'feat4_desc': 'Ваши разговоры никогда не хранятся на наших серверах. Обрабатываются в реальном времени.',
    'feat5_title': '16 языков',
    'feat5_desc': 'Доступно на английском, испанском, французском, португальском, немецком, итальянском, японском, корейском и других языках.',
    'feat6_title': 'На основе DeepSeek AI',
    'feat6_desc': 'Передовая модель ИИ анализирует нюансы, тон и поведенческие паттерны всей переписки.',
    'videos_title': 'AIRTA в действии',
    'videos_subtitle': 'Смотрите демонстрационные видео ключевых функций AIRTA',
    'videos_footer': 'Видео создаются автоматически с помощью AIRTA Video Studio',
    'download_sample': '📥 Скачать образец разговора (Sample.txt)',
    'use_own_title': 'Используйте свой разговор',
    'use_own_desc': 'Файл Sample.txt — лишь пример. Замените его реальным разговором, экспортированным с телефона.',
    'use_own_tip2': 'ИИ анализирует необработанный текст — подходит любой читаемый формат.',
    'supported_types': 'Поддерживаемые форматы файлов:',
    'use_own_tip3': 'Совет: На Android экспортируйте цепочку SMS. На iPhone используйте инструмент экспорта iMessage.',
    'legal_title': 'Юридическая информация',
    'privacy_policy': '🔐 Политика конфиденциальности',
    'medical_disclaimer': '⚠️ Медицинский отказ от ответственности',
    'footer_text': '© 2025 AIRTA Corp · Лейди-Лейк, Флорида',
    'individual_analysis_label': 'Индивидуальный анализ',
  },
  'nl': {
    'header_tagline': 'AI-analyse van uw relatiegesprekken. Ken de waarheid.',
    'badge_demo': '🌐 Probeer Demo — Gratis',
    'badge_apk': '📱 Android APK Downloaden',
    'badge_gplay': '📱 Google Play — Binnenkort',
    'badge_appstore': '🍎 App Store — Binnenkort',
    'disclaimer_text': '⚠️ Alleen voor vermaak en informatie. Geen vervanging voor professionele geestelijke gezondheidszorg.',
    'disclaimer_link': 'Volledige Disclaimer →',
    'what_airta_does': 'Wat AIRTA doet',
    'feat1_title': 'Diepgaande Gespreksanalyse',
    'feat1_desc': 'Importeer SMS, RCS of chatschermafbeeldingen en laat AI de psychologische patronen analyseren.',
    'feat2_title': 'Psychologische Statistieken',
    'feat2_desc': 'Kies uit tientallen statistieken — gaslighting, stonewalling, manipulatie en meer.',
    'feat3_title': 'Forensische Rapporten',
    'feat3_desc': 'Ontvang een volledig PDF-rapport met samenvatting, scores, bewijsvoorbeelden en einduitspraak.',
    'feat4_title': 'Privacy Eerst',
    'feat4_desc': 'Uw gesprekken worden nooit opgeslagen op onze servers. Realtime verwerkt en onmiddellijk verwijderd.',
    'feat5_title': '16 Talen',
    'feat5_desc': 'Beschikbaar in Engels, Spaans, Frans, Portugees, Duits, Italiaans, Japans, Koreaans en meer.',
    'feat6_title': 'Aangedreven door DeepSeek AI',
    'feat6_desc': 'Geavanceerd AI-model analyseert nuances, toon en gedragspatronen in uw volledige gesprek.',
    'videos_title': 'AIRTA in Actie',
    'videos_subtitle': "Bekijk demovideo's van AIRTA's belangrijkste functies",
    'videos_footer': "Video's worden automatisch gemaakt door AIRTA Video Studio",
    'download_sample': '📥 Voorbeeldgesprek Downloaden (Sample.txt)',
    'use_own_title': 'Gebruik Uw Eigen Gesprek',
    'use_own_desc': 'Het Sample.txt-bestand is slechts een voorbeeld. Vervang de inhoud door een echt geëxporteerd gesprek.',
    'use_own_tip2': 'De AI analyseert de onbewerkte tekst — werkt met elk leesbaar formaat.',
    'supported_types': 'Ondersteunde bestandstypen:',
    'use_own_tip3': 'Tip: Exporteer uw SMS-thread op Android. Gebruik een iMessage-exporttool op iPhone.',
    'legal_title': 'Juridisch',
    'privacy_policy': '🔐 Privacybeleid',
    'medical_disclaimer': '⚠️ Medische Disclaimer',
    'footer_text': '© 2025 AIRTA Corp · Lady Lake, Florida',
    'individual_analysis_label': 'Individuele Analyse',
  },
  'tr': {
    'header_tagline': 'İlişki konuşmalarınızın yapay zeka analizi. Gerçeği öğrenin.',
    'badge_demo': '🌐 Ücretsiz Demo Dene',
    'badge_apk': '📱 Android APK İndir',
    'badge_gplay': '📱 Google Play — Yakında',
    'badge_appstore': '🍎 App Store — Yakında',
    'disclaimer_text': '⚠️ Yalnızca eğlence ve bilgi amaçlıdır. Profesyonel ruh sağlığı bakımının yerini tutmaz.',
    'disclaimer_link': 'Tam Sorumluluk Reddi →',
    'what_airta_does': "AIRTA Ne Yapıyor",
    'feat1_title': 'Derin Konuşma Analizi',
    'feat1_desc': 'SMS, RCS veya sohbet ekran görüntülerini içe aktarın ve yapay zekanın psikolojik kalıpları analiz etmesine izin verin.',
    'feat2_title': 'Psikolojik Metrikler',
    'feat2_desc': 'Onlarca metrik arasından seçin — gaslighting, stonewalling, manipülasyon ve daha fazlası.',
    'feat3_title': 'Adli Raporlar',
    'feat3_desc': 'Yönetici özeti, puanlar, kanıt örnekleri ve nihai kararı içeren tam PDF raporu alın.',
    'feat4_title': 'Önce Gizlilik',
    'feat4_desc': 'Konuşmalarınız sunucularımızda asla saklanmaz. Gerçek zamanlı işlenir ve hemen silinir.',
    'feat5_title': '16 Dil',
    'feat5_desc': "İngilizce, İspanyolca, Fransızca, Portekizce, Almanca, İtalyanca, Japonca, Korece ve daha fazlasında mevcut.",
    'feat6_title': 'DeepSeek AI ile Güçlendirilmiş',
    'feat6_desc': 'Son teknoloji yapay zeka modeli tüm konuşmadaki nüansları, tonu ve davranış kalıplarını analiz eder.',
    'videos_title': "AIRTA'yı Eylemde Görün",
    'videos_subtitle': "AIRTA'nın temel özelliklerini sergileyen demo videolarını izleyin",
    'videos_footer': 'Videolar AIRTA Video Studio tarafından otomatik olarak oluşturulur',
    'download_sample': '📥 Örnek Konuşmayı İndir (Sample.txt)',
    'use_own_title': 'Kendi Konuşmanızı Kullanın',
    'use_own_desc': 'Sample.txt dosyası yalnızca bir örnektir. Telefonunuzdan dışa aktardığınız gerçek bir konuşmayla değiştirin.',
    'use_own_tip2': 'Yapay zeka ham metni analiz eder — okunabilir her formatta çalışır.',
    'supported_types': 'Desteklenen dosya türleri:',
    'use_own_tip3': "İpucu: Android'de SMS dizinizi dışa aktarın. iPhone'da iMessage dışa aktarma aracı kullanın.",
    'legal_title': 'Hukuki',
    'privacy_policy': '🔐 Gizlilik Politikası',
    'medical_disclaimer': '⚠️ Tıbbi Sorumluluk Reddi',
    'footer_text': '© 2025 AIRTA Corp · Lady Lake, Florida',
    'individual_analysis_label': 'Bireysel Analiz',
  },
  'pl': {
    'header_tagline': 'Analiza rozmów związkowych za pomocą AI. Poznaj prawdę.',
    'badge_demo': '🌐 Wypróbuj Demo — Za darmo',
    'badge_apk': '📱 Pobierz APK Android',
    'badge_gplay': '📱 Google Play — Wkrótce',
    'badge_appstore': '🍎 App Store — Wkrótce',
    'disclaimer_text': '⚠️ Wyłącznie do celów rozrywkowych i informacyjnych. Nie zastępuje profesjonalnej opieki zdrowia psychicznego.',
    'disclaimer_link': 'Pełne Zastrzeżenie →',
    'what_airta_does': 'Co robi AIRTA',
    'feat1_title': 'Dogłębna Analiza Rozmów',
    'feat1_desc': 'Importuj SMS-y, RCS lub zrzuty ekranu czatu i pozwól AI analizować wzorce psychologiczne.',
    'feat2_title': 'Metryki Psychologiczne',
    'feat2_desc': 'Wybierz spośród dziesiątek metryk — gaslighting, stonewalling, manipulacja i więcej.',
    'feat3_title': 'Raporty Sądowe',
    'feat3_desc': 'Otrzymaj pełny raport PDF z podsumowaniem, wynikami, przykładami dowodów i finalnym werdyktem.',
    'feat4_title': 'Prywatność Przede Wszystkim',
    'feat4_desc': 'Twoje rozmowy nigdy nie są przechowywane na naszych serwerach. Przetwarzane w czasie rzeczywistym.',
    'feat5_title': '16 Języków',
    'feat5_desc': 'Dostępny w języku angielskim, hiszpańskim, francuskim, portugalskim, niemieckim, włoskim, japońskim, koreańskim i więcej.',
    'feat6_title': 'Zasilany przez DeepSeek AI',
    'feat6_desc': 'Najnowocześniejszy model AI analizuje niuanse, ton i wzorce zachowań w całej rozmowie.',
    'videos_title': 'AIRTA w Akcji',
    'videos_subtitle': 'Oglądaj filmy demonstracyjne kluczowych funkcji AIRTA',
    'videos_footer': 'Filmy są tworzone automatycznie przez AIRTA Video Studio',
    'download_sample': '📥 Pobierz Przykładową Rozmowę (Sample.txt)',
    'use_own_title': 'Użyj Własnej Rozmowy',
    'use_own_desc': 'Plik Sample.txt to tylko przykład. Zastąp go prawdziwą rozmową wyeksportowaną z telefonu.',
    'use_own_tip2': 'AI analizuje surowy tekst — działa z każdym czytelnym formatem.',
    'supported_types': 'Obsługiwane typy plików:',
    'use_own_tip3': 'Wskazówka: Na Androidzie wyeksportuj wątek SMS. Na iPhonie użyj narzędzia do eksportu iMessage.',
    'legal_title': 'Prawne',
    'privacy_policy': '🔐 Polityka Prywatności',
    'medical_disclaimer': '⚠️ Zastrzeżenie Medyczne',
    'footer_text': '© 2025 AIRTA Corp · Lady Lake, Floryda',
    'individual_analysis_label': 'Analiza Indywidualna',
  },
  'uk': {
    'header_tagline': 'ШІ-аналіз розмов у відносинах. Дізнайтесь правду.',
    'badge_demo': '🌐 Спробувати демо — Безкоштовно',
    'badge_apk': '📱 Завантажити Android APK',
    'badge_gplay': '📱 Google Play — Незабаром',
    'badge_appstore': '🍎 App Store — Незабаром',
    'disclaimer_text': '⚠️ Лише для розваг та інформації. Не замінює професійну психологічну допомогу.',
    'disclaimer_link': 'Повна відмова від відповідальності →',
    'what_airta_does': 'Що робить AIRTA',
    'feat1_title': 'Глибокий аналіз розмов',
    'feat1_desc': 'Імпортуйте SMS, RCS або скріншоти чатів — ШІ проаналізує психологічні патерни.',
    'feat2_title': 'Психологічні метрики',
    'feat2_desc': 'Обирайте з десятків метрик — газлайтинг, ігнорування, маніпуляції та інше.',
    'feat3_title': 'Криміналістичні звіти',
    'feat3_desc': 'Отримайте повний PDF-звіт із резюме, оцінками, прикладами доказів і вердиктом.',
    'feat4_title': 'Конфіденційність перш за все',
    'feat4_desc': 'Ваші розмови ніколи не зберігаються на наших серверах. Обробляються в реальному часі.',
    'feat5_title': '16 мов',
    'feat5_desc': 'Доступно англійською, іспанською, французькою, португальською, німецькою, італійською, японською, корейською та іншими.',
    'feat6_title': 'На базі DeepSeek AI',
    'feat6_desc': 'Передова модель ШІ аналізує нюанси, тон і поведінкові патерни всієї переписки.',
    'videos_title': 'AIRTA в дії',
    'videos_subtitle': 'Дивіться демонстраційні відео ключових функцій AIRTA',
    'videos_footer': 'Відео створюються автоматично за допомогою AIRTA Video Studio',
    'download_sample': '📥 Завантажити зразок розмови (Sample.txt)',
    'use_own_title': 'Використайте свою розмову',
    'use_own_desc': 'Файл Sample.txt — лише приклад. Замініть його реальною розмовою, експортованою з телефону.',
    'use_own_tip2': 'ШІ аналізує необроблений текст — підходить будь-який читабельний формат.',
    'supported_types': 'Підтримувані формати файлів:',
    'use_own_tip3': 'Порада: На Android експортуйте ланцюжок SMS. На iPhone використовуйте інструмент експорту iMessage.',
    'legal_title': 'Юридична інформація',
    'privacy_policy': '🔐 Політика конфіденційності',
    'medical_disclaimer': '⚠️ Медична відмова від відповідальності',
    'footer_text': '© 2025 AIRTA Corp · Лейді-Лейк, Флорида',
    'individual_analysis_label': 'Індивідуальний аналіз',
  },
}

# For each language, inject the new keys into their section
for lang_code, translations in OTHER_LANGS.items():
    # Find the closing of this language section: '  },\n  XX:' or '  },\n};'
    # Find the lang's individual_analysis_label key (existing) and add after it
    lang_marker = f"    individual_analysis_label: '"
    # Find the occurrence inside this lang's block
    # First find where this lang starts
    # Pattern: '\n  LANGCODE: {'
    lang_start_pattern = f'\n  {lang_code}: {{'
    lang_start = content.find(lang_start_pattern)
    if lang_start == -1:
        print(f'ERROR: lang {lang_code} not found')
        continue
    # Find end of this lang (next lang opening or end of TRANSLATIONS)
    next_lang = content.find('\n  ', lang_start + len(lang_start_pattern) + 10)
    lang_section = content[lang_start:next_lang]

    # Check if new keys already injected
    if 'header_tagline' in lang_section:
        print(f'{lang_code}: already has new keys, skipping')
        continue

    # Find the existing individual_analysis_label in this lang
    ia_key = "    individual_analysis_label: '"
    ia_pos = content.find(ia_key, lang_start)
    if ia_pos == -1 or ia_pos > next_lang + 500:
        print(f'ERROR: {lang_code} individual_analysis_label not found at expected position')
        continue

    # Find the end of the individual_analysis_label line
    ia_line_end = content.find('\n', ia_pos) + 1

    # Build the new keys string
    new_keys_str = ''
    for k, v in translations.items():
        if k == 'individual_analysis_label':
            continue  # already exists
        # Escape single quotes in value
        v_escaped = v.replace("'", "\\'")
        new_keys_str += f"    {k}: '{v_escaped}',\n"

    # Insert after the individual_analysis_label line
    content = content[:ia_line_end] + new_keys_str + content[ia_line_end:]
    print(f'{lang_code}: {len(translations)-1} new keys injected')

with open(path, 'w', encoding='utf-8') as f:
    f.write(content)
print('\nSaved.')
