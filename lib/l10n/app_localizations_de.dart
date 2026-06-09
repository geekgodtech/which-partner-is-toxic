// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'KI-Beziehungstoxizitäts-Analysator';

  @override
  String get psychologicalMetrics => 'Psychologische Metriken';

  @override
  String get metricsDescription =>
      'Weniger ausgewählte Metriken erzeugen eine tiefere, konzentriertere Analyse dieser Verhaltensweisen. Mehr ausgewählte Metriken erzeugen einen breiteren Bericht mit weniger Details pro Metrik.';

  @override
  String get selectSMS => 'SMS / RCS Chat auswählen';

  @override
  String get selectDiscordChannel => 'Discord-Kanal auswählen';

  @override
  String get lightMode => 'Hell';

  @override
  String get darkMode => 'Dunkel';

  @override
  String get discordSetupTitle => 'Discord Einrichten';

  @override
  String get discordSetupDescription =>
      'Befolgen Sie diese Schritte, um die Discord-Kanalanalyse in der App zu aktivieren:';

  @override
  String get discordStep1Title => 'Discord-Bot Erstellen';

  @override
  String get discordStep1Description =>
      'Gehen Sie zu discord.com/developers, erstellen Sie eine neue Anwendung und fügen Sie einen Bot hinzu. Kopieren Sie den Bot-Token.';

  @override
  String get discordStep2Title => 'Bot-Berechtigungen Aktivieren';

  @override
  String get discordStep2Description =>
      'Aktivieren Sie in den Bot-Einstellungen \'Message Content Intent\' und \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Bot zum Server Einladen';

  @override
  String get discordStep3Description =>
      'Verwenden Sie den OAuth2-URL-Generator, um den Bot mit den erforderlichen Berechtigungen zu Ihrem Discord-Server einzuladen.';

  @override
  String get discordStep4Title => 'In der App Konfigurieren';

  @override
  String get discordStep4Description =>
      'Geben Sie Ihren Bot-Token in den App-Einstellungen ein (kontaktieren Sie den Support, wenn Sie Hilfe benötigen).';

  @override
  String get discordStep5Title => 'Kanal Auswählen';

  @override
  String get discordStep5Description =>
      'Tippen Sie auf \'Discord-Kanal Auswählen\', wählen Sie Ihren Server und dann den zu analysierenden Kanal.';

  @override
  String get gotIt => 'Verstanden';

  @override
  String get selectFile => 'Datei auswählen';

  @override
  String get analyzeSelectedMetrics => 'Ausgewählte Metriken analysieren';

  @override
  String get analyze20RandomMetrics => '20 zufällige Metriken analysieren';

  @override
  String get membershipOptions => 'Mitgliedschaftsoptionen';

  @override
  String get free => 'Kostenlos';

  @override
  String get oneTimeUnlock => 'Einmalige Berichtsfreischaltung';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Discord-Erweiterung';

  @override
  String get analyze => 'Analysieren';

  @override
  String get report => 'Bericht';

  @override
  String get pdfReport => 'PDF-Bericht';

  @override
  String get openPdf => 'PDF öffnen';

  @override
  String get sharePdf => 'PDF teilen';

  @override
  String get printPdf => 'PDF drucken';

  @override
  String get closePdfPreview => 'PDF-Vorschaufenster schließen';

  @override
  String get openPdfPreview => 'PDF-Vorschaufenster öffnen';

  @override
  String get pdfPreviewDescription =>
      'Das eingebettete PDF-Fenster startet geschlossen, um den Bericht kompakt zu halten.';

  @override
  String get notNow => 'Jetzt nicht';

  @override
  String get unlockThisReport => 'Diesen Bericht freischalten - \$20';

  @override
  String get joinStandard => 'Standard beitreten - \$9.99/Mon.';

  @override
  String get instantUnlockTitle => 'Sofortige Berichtsfreischaltung - \$20';

  @override
  String get instantUnlockDescription =>
      'Dies ist ein einmaliger Kauf, um nur den aktuellen Bericht freizuschalten. Kein Abonnement erforderlich. Zukünftige Berichte erfordern separate Freischaltungen oder eine Mitgliedschaft.\n\nMit der Zahlung fortfahren?';

  @override
  String get purchaseFor20 => 'Für \$20 kaufen';

  @override
  String get share => 'Teilen';

  @override
  String get print => 'Drucken';

  @override
  String get save => 'Speichern';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fehler';

  @override
  String get success => 'Erfolg';

  @override
  String get conversations => 'Konversationen';

  @override
  String get messages => 'Nachrichten';

  @override
  String get selectConversation => 'Konversation auswählen';

  @override
  String get selectSmsConversation => 'SMS / RCS Chat auswählen';

  @override
  String get searchConversations => 'Konversationen suchen...';

  @override
  String get loadingConversations => 'Konversationen werden geladen...';

  @override
  String get errorLoadingConversations =>
      'Fehler beim Laden der Konversationen';

  @override
  String get selectConversationToAnalyze => 'Gespräch zur Analyse auswählen';

  @override
  String get analyzeWithSelectedMetrics =>
      'Mit ausgewählten Metriken analysieren';

  @override
  String get loadConversationAndSelectMetric =>
      'Laden Sie eine Konversation und wählen Sie mindestens eine Metrik';

  @override
  String get selectAtLeastOneMetric =>
      'Es muss mindestens eine Metrik ausgewählt werden, um den Bericht auszuführen.';

  @override
  String get spinningMetricWheel => 'Dreht das Metrik-Rad...';

  @override
  String get loadConversationToAnalyze =>
      'Laden Sie eine Konversation zum Analysieren';

  @override
  String get noConversationsFound => 'Keine Konversationen gefunden';

  @override
  String get permissionsRequired => 'Berechtigungen erforderlich';

  @override
  String get smsPermission => 'Textnachrichten';

  @override
  String get contactsPermission => 'Kontakte';

  @override
  String get smsPermissionDescription =>
      'Um Ihre SMS-Konversationen auf Beziehungsmuster zu analysieren';

  @override
  String get contactsPermissionDescription =>
      'Um Kontaktnamen anstelle von Telefonnummern anzuzeigen';

  @override
  String get analyzingMessage =>
      'Bitte warten Sie, während Ihre psychologische Analyse von KI generiert wird...';

  @override
  String get analyzingStatus => 'Konversation wird analysiert...';

  @override
  String get analyzingSubMessage =>
      'Bitte haben Sie Geduld, dieser Prozess kann je nach Verbindungsgeschwindigkeit und Anzahl der ausgewählten Metriken bis zu einer Minute dauern';

  @override
  String get unlockFullReport => 'Gesamten Bericht freischalten und anzeigen';

  @override
  String get fullReportLocked => 'Vollständiger Bericht gesperrt';

  @override
  String get upgradeToUnlock =>
      'Aktualisieren Sie Ihre Mitgliedschaft, um den vollständigen psychologischen Analysebericht mit allen Metriken und detaillierten Erkenntnissen freizuschalten.';

  @override
  String get language => 'Sprache';

  @override
  String get english => 'Englisch';

  @override
  String get spanish => 'Spanisch';

  @override
  String get french => 'Französisch';

  @override
  String get german => 'Deutsch';

  @override
  String get italian => 'Italienisch';

  @override
  String get portuguese => 'Portugiesisch';

  @override
  String get dutch => 'Niederländisch';

  @override
  String get russian => 'Russisch';

  @override
  String get chinese => 'Chinesisch';

  @override
  String get japanese => 'Japanisch';

  @override
  String get korean => 'Koreanisch';

  @override
  String get arabic => 'Arabisch';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Türkisch';

  @override
  String get polish => 'Polnisch';

  @override
  String get ukrainian => 'Ukrainisch';

  @override
  String get runAnotherAnalysis => 'Eine weitere Analyse durchführen?';

  @override
  String get becomeMemberTitle =>
      'Werden Sie Mitglied, um den vollständigen Analysebericht zu erhalten';

  @override
  String get becomeMemberSubtitle =>
      'Wählen Sie die Zugriffsstufe, die zu den Konversationen und Berichten passt, die Sie analysieren müssen.';

  @override
  String get benefitAnalyzeSms => 'SMS-Textnachrichten analysieren';

  @override
  String get benefitReportPreview => 'Eine Berichtsvorschau ausführen';

  @override
  String get benefitViewPartialReport => 'Etwa 25 % des Berichts anzeigen';

  @override
  String get benefitLockedDetails => 'Vollständige Berichtsdetails gesperrt';

  @override
  String get currentFreeAccess => 'Aktueller kostenloser Zugang';

  @override
  String get benefitUnlockCurrentReport =>
      'Diesen vollständigen Bericht freischalten';

  @override
  String get benefitNoSubscription => 'Kein Abonnement';

  @override
  String get benefitSavePrintShareThis =>
      'Diesen Bericht speichern, drucken und teilen';

  @override
  String get benefitBestSingleAnalysis =>
      'Ideal, wenn Sie nur eine Analyse benötigen';

  @override
  String get unlockThisReportShort => 'Diesen Bericht freischalten';

  @override
  String get benefitFullSmsReport => 'Vollständiger SMS-Analysebericht';

  @override
  String get benefitSavePrintSharePdf =>
      'PDF-Berichte speichern, drucken und teilen';

  @override
  String get benefitTenReports => '10 Berichte pro 24-Stunden-Zeitraum';

  @override
  String get benefitBestTextReview =>
      'Ideal für die Überprüfung von Beziehungen per SMS';

  @override
  String get benefitDateRangeFilter => 'Analyse nach Datumsbereich filtern';

  @override
  String get signUpStandard => 'Für Standard-Mitgliedschaft anmelden';

  @override
  String get benefitAddToStandard => 'Zur Standard-Mitgliedschaft hinzufügen';

  @override
  String get benefitAnalyzeDiscord => 'Discord-Server-Chats analysieren';

  @override
  String get benefitRequiresBot => 'Erfordert Bot-Installation';

  @override
  String get benefitBestGamers => 'Ideal für Gamer und Discord-Communities';

  @override
  String get addDiscordAnalysis => 'Discord-Analyse hinzufügen';

  @override
  String get requiresStandardMembership => 'Erfordert Standard-Mitgliedschaft';

  @override
  String get comingSoon => 'Demnächst';

  @override
  String get comingSoonWithNextUpdate => 'Demnächst mit dem nächsten Update:';

  @override
  String get proMembershipTier => 'Pro-Mitgliedschaftsstufe - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus-Mitgliedschaftsstufe - \$24.99';

  @override
  String get proGetsLabel => 'Pro umfasst:';

  @override
  String get proGetsDescription =>
      'Analysieren Sie Chat-Verläufe von allen anderen beliebten Messaging- und Social-Media-Plattformen wie:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), E-Mail und Kalender';

  @override
  String get proPlusGetsLabel => 'Pro-Plus umfasst:';

  @override
  String get proPlusGetsDescription =>
      'Alles aus Pro, plus das Discord-Add-on zu einem reduzierten Preis.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Kauf erfolgreich! Bericht freigeschaltet.';

  @override
  String get purchaseFailed =>
      'Kauf fehlgeschlagen. Bitte versuchen Sie es erneut.';

  @override
  String get membershipActivated => 'Mitgliedschaft aktiviert!';

  @override
  String get dateRangeFilter => 'Datumsbereich-Filter';

  @override
  String get dateRangeOptional => '(optional)';

  @override
  String get startDate => 'Startdatum';

  @override
  String get endDate => 'Enddatum';

  @override
  String get clear => 'Löschen';

  @override
  String get dateRangeRequiresMembership =>
      'Erfordert Standard-Mitgliedschaft oder höher';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Bis zu $max auswählen. Aktuell: $current';
  }

  @override
  String get clearSelections => 'Auswahl löschen';

  @override
  String analyzeRandomMetrics(Object count) {
    return '$count zufällige Metriken analysieren';
  }

  @override
  String get saveSelections => 'Auswahl Speichern';

  @override
  String get loadSelections => 'Auswählen Laden';

  @override
  String get saveMetricListName => 'Metrik-Liste Speichern';

  @override
  String get enterListName =>
      'Geben Sie einen Namen für diese Metrik-Liste ein:';

  @override
  String get chooseSavedMetrics => 'Wählen Sie die gespeicherte Metrik-Liste:';

  @override
  String get noSavedLists =>
      'Keine gespeicherten Metrik-Listen zum Laden vorhanden.';

  @override
  String get metricListSaved => 'Metrik-Liste erfolgreich gespeichert.';

  @override
  String get metricListLoaded => 'Metrik-Liste erfolgreich geladen.';

  @override
  String get filters => 'Filter';

  @override
  String get sortBy => 'Sortieren nach:';

  @override
  String get recent => 'Kürzlich';

  @override
  String get name => 'Name';

  @override
  String get count => 'Anzahl';

  @override
  String get namedOnly => 'Nur benannte';

  @override
  String get minMessages => 'Min. Nachrichten:';

  @override
  String get minimumMessages => 'Minimum an Nachrichten:';

  @override
  String get executiveSummary => 'Zusammenfassung';

  @override
  String get metricScores => 'Metrik-Werte';

  @override
  String get contextualEvidenceExamples => 'Kontextuelle Beispiele';

  @override
  String get neutralSynthesis => 'Neutrale Synthese';

  @override
  String analysisOfSender(Object sender) {
    return 'Analyse von $sender (Absender)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analyse von $receiver (Empfänger)';
  }

  @override
  String get finalConclusion => 'Abschlussfolgerung';

  @override
  String get metric_1_name => 'Verachtung';

  @override
  String get metric_1_description =>
      'Sucht nach Überlegenheit, Ekel, Spott, Augenrollen-Sprache oder Beleidigungen, die einen Partner unter den anderen stellen.';

  @override
  String get metric_2_name => 'Defensivität';

  @override
  String get metric_2_description =>
      'Verfolgt reflexiven Selbstschutz, Gegenangriffe, Ausreden und die Weigerung, die Beschwerde der anderen Person zu berücksichtigen.';

  @override
  String get metric_3_name => 'Verweigerung';

  @override
  String get metric_3_description =>
      'Identifiziert Abschaltung, Rückzug, Ignorieren, Weigerung zu antworten oder Beendigung von Gesprächen, um Engagement zu vermeiden.';

  @override
  String get metric_4_name => 'Kritik';

  @override
  String get metric_4_description =>
      'Erkennt Angriffe auf Charakter oder Persönlichkeit statt auf spezifische Verhaltensweisen, Bedürfnisse oder Vorfälle.';

  @override
  String get metric_5_name => 'Gaslighting-Indikatoren';

  @override
  String get metric_5_description =>
      'Markiert Versuche, jemanden an seinem Gedächtnis, seiner Wahrnehmung, seiner geistigen Gesundheit oder der Legitimität seiner Erfahrung zweifeln zu lassen.';

  @override
  String get metric_6_name => 'Schuldverschiebung';

  @override
  String get metric_6_description =>
      'Misst, ob Verantwortung auf den anderen Partner umgeleitet wird, statt direkt anerkannt zu werden.';

  @override
  String get metric_7_name => 'Eskalationsmuster';

  @override
  String get metric_7_description =>
      'Bewertet, ob Ton, Vorwürfe, Intensität oder Drohungen zunehmen, statt auf eine Lösung zuzugehen.';

  @override
  String get metric_8_name => 'Erkennung von Reparaturversuchen';

  @override
  String get metric_8_description =>
      'Prüft, ob Entschuldigungen, Humor, Pausen, Beruhigung oder Friedensangebote bemerkt und angenommen werden.';

  @override
  String get metric_9_name => 'Verantwortungssprache';

  @override
  String get metric_9_description =>
      'Sucht nach klarem Eingeständnis von Schaden, spezifischer Verantwortung und Bereitschaft, das Verhalten zu ändern.';

  @override
  String get metric_10_name => 'Grenzenrespekt';

  @override
  String get metric_10_description =>
      'Bewertet, ob festgelegte Grenzen bezüglich Zeit, Privatsphäre, Körper, Emotionen oder Kontakt eingehalten werden.';

  @override
  String get metric_11_name => 'Indikatoren für Zwangskontrolle';

  @override
  String get metric_11_description =>
      'Markiert Muster von Einschüchterung, Einschränkung, Überwachung, Abhängigkeit oder Kontrolle über Entscheidungen und Bewegungen.';

  @override
  String get metric_12_name => 'Drohsprache';

  @override
  String get metric_12_description =>
      'Identifiziert explizite oder implizite Drohungen, die Sicherheit, Verlassen, Enthüllung, Vergeltung oder Bestrafung betreffen.';

  @override
  String get metric_13_name => 'Abweisung';

  @override
  String get metric_13_description =>
      'Erkennt das Abwischen von Bedenken, die Behandlung von Bedürfnissen als unwichtig oder die Weigerung, Not ernst zu nehmen.';

  @override
  String get metric_14_name => 'Invalidierung';

  @override
  String get metric_14_description =>
      'Misst Leugnung, Spott oder Korrektur der Emotionen einer anderen Person, statt sie anzuerkennen.';

  @override
  String get metric_15_name => 'Empathieausdruck';

  @override
  String get metric_15_description =>
      'Sucht nach Perspektivübernahme, Fürsorge, emotionaler Anerkennung und Sorge um die Erfahrung der anderen Person.';

  @override
  String get metric_16_name => 'Reziprozität';

  @override
  String get metric_16_description =>
      'Bewertet, ob Aufmerksamkeit, Einsatz, Entschuldigung, Kompromiss und emotionale Unterstützung in beide Richtungen fließen.';

  @override
  String get metric_17_name => 'Emotionale Regulation';

  @override
  String get metric_17_description =>
      'Bewertet die Fähigkeit, geerdet zu bleiben, zu pausieren, sich selbst zu beruhigen und ohne explosive Reaktivität zu kommunizieren.';

  @override
  String get metric_18_name => 'Sarkasmus als Schaden eingesetzt';

  @override
  String get metric_18_description =>
      'Markiert Sarkasmus, der verwendet wird, um herabzusetzen, zu bestrafen, zu demütigen oder Feindseligkeit als Humor zu tarnen.';

  @override
  String get metric_19_name => 'Beleidigungen';

  @override
  String get metric_19_description =>
      'Identifiziert abwertende Bezeichnungen, Beleidigungen, Schimpfwörter, die auf die Person gerichtet sind, oder identitätsbasierte Angriffe.';

  @override
  String get metric_20_name => 'Muster des Schweigens';

  @override
  String get metric_20_description =>
      'Verfolgt Schweigen, das als Bestrafung, Kontrolle, Vermeidung oder Rückzug von Verbindung verwendet wird.';

  @override
  String get metric_21_name => 'Eifersuchtsrahmung';

  @override
  String get metric_21_description =>
      'Bewertet Verdacht, Besitzansprüche, Vorwürfe oder Eifersucht, die als Beweis für Fürsorge dargestellt werden.';

  @override
  String get metric_22_name => 'Isolationsdruck';

  @override
  String get metric_22_description =>
      'Markiert Bemühungen, einen Partner von Freunden, Familie, Unterstützungssystemen oder externen Perspektiven zu trennen.';

  @override
  String get metric_23_name => 'Indikatoren für finanzielle Kontrolle';

  @override
  String get metric_23_description =>
      'Sucht nach Kontrolle von Geld, Ausgaben, Beschäftigung, Zugang zu Konten oder finanzieller Unabhängigkeit.';

  @override
  String get metric_24_name => 'Indikatoren für Privatsphäreverletzung';

  @override
  String get metric_24_description =>
      'Erkennt Schnüffelei, Passwortforderungen, Geräteüberprüfungen, Standortverfolgung oder Privatsphäreverletzungen.';

  @override
  String get metric_25_name => 'Spezifität der Entschuldigung';

  @override
  String get metric_25_description =>
      'Misst, ob Entschuldigungen den genauen Schaden, die Auswirkung und die zukünftige Korrektur benennen, statt vage zu bleiben.';

  @override
  String get metric_26_name => 'Vergebungsdruck';

  @override
  String get metric_26_description =>
      'Markiert Forderungen, weiterzumachen, schnell zu vergeben oder aufzuhören, über Schaden zu diskutieren, bevor Reparatur erfolgt.';

  @override
  String get metric_27_name => 'Minimierung';

  @override
  String get metric_27_description =>
      'Erkennt das Herunterspielen von Schaden, das Bezeichnen ernster Bedenken als dramatisch oder die Verringerung der Auswirkungen, um Verantwortung zu vermeiden.';

  @override
  String get metric_28_name => 'Projektion';

  @override
  String get metric_28_description =>
      'Sucht nach Vorwürfen, die das eigene Verhalten, die Motive oder die ungeklärten Gefühle des Sprechers widerspiegeln.';

  @override
  String get metric_29_name => 'Unterbrechungsmuster';

  @override
  String get metric_29_description =>
      'Verfolgt Abbrechen, Übertönen, Weigerung zu vollenden oder Kontrolle der Gesprächsrunden.';

  @override
  String get metric_30_name => 'Themenablenkung';

  @override
  String get metric_30_description =>
      'Identifiziert das Ändern des Themas, das Aufbringen nicht verwandter Probleme oder das Vermeiden der zentralen Sorge.';

  @override
  String get metric_31_name => 'Lösungsorientierung';

  @override
  String get metric_31_description =>
      'Misst, ob Nachrichten auf Lösungen, Klarheit, Vereinbarungen und nächste Schritte abzielen.';

  @override
  String get metric_32_name => 'Gemeinsame Problemlösung';

  @override
  String get metric_32_description =>
      'Bewertet kooperative Sprache, geteilte Verantwortung, Brainstorming und Bereitschaft, praktikable Kompromisse zu finden.';

  @override
  String get metric_33_name => 'Emotionale Überflutung';

  @override
  String get metric_33_description =>
      'Erkennt Überwältigung, Panik, Abschaltung, Spiralen oder Unfähigkeit, während eines Konflikts zu verarbeiten.';

  @override
  String get metric_34_name => 'Angstreaktionshinweise';

  @override
  String get metric_34_description =>
      'Sucht nach Beschwichtigung, vorsichtiger Wortwahl, Angst, Sicherheitsbedenken oder Angst vor der Reaktion des Partners.';

  @override
  String get metric_35_name => 'Konsistenz der Behauptungen';

  @override
  String get metric_35_description =>
      'Bewertet, ob Berichte über Nachrichten und Zeit hinweg intern konsistent bleiben.';

  @override
  String get metric_36_name => 'Evidenzbasierte Erinnerung';

  @override
  String get metric_36_description =>
      'Prüft, ob Behauptungen auf konkrete Ereignisse, Zitate, Zeitleisten oder beobachtbares Verhalten verweisen.';

  @override
  String get metric_37_name => 'Nachfrage-Rückzug-Muster';

  @override
  String get metric_37_description =>
      'Verfolgt einen Partner, der Antworten oder Veränderungen sucht, während der andere ausweicht, sich abschaltet oder geht.';

  @override
  String get metric_38_name => 'Indikatoren für Machtungleichgewicht';

  @override
  String get metric_38_description =>
      'Markiert ungleiche Entscheidungsmacht, Angst vor Konsequenzen, Abhängigkeit, Einschüchterung oder einseitige Kontrolle.';

  @override
  String get metric_39_name => 'Respektvoller Dissens';

  @override
  String get metric_39_description =>
      'Misst, ob der Konflikt Würde, Neugier und Dissens ohne Erniedrigung bewahrt.';

  @override
  String get metric_40_name => 'Bruch- und Reparaturzyklus';

  @override
  String get metric_40_description =>
      'Bewertet, ob der Konflikt von Anerkennung, Wiederverbindung und tatsächlicher Reparatur gefolgt wird.';

  @override
  String get metric_41_name => 'Zuneigungsentzug';

  @override
  String get metric_41_description =>
      'Erkennt Liebe, Wärme, Sex, Aufmerksamkeit oder Beruhigung, die als Bestrafung oder Druckmittel zurückgehalten werden.';

  @override
  String get metric_42_name => 'Referenzen zu öffentlicher Demütigung';

  @override
  String get metric_42_description =>
      'Markiert Drohungen, Witze oder Handlungen, die den Partner vor anderen demütigen.';

  @override
  String get metric_43_name => 'Substanzbezogene Konflikthinweise';

  @override
  String get metric_43_description =>
      'Sucht nach Alkohol- oder Drogenkonsum, der mit Aggression, Unzuverlässigkeit, Konflikt oder Schaden verbunden ist.';

  @override
  String get metric_44_name => 'Erziehungskonfliktdruck';

  @override
  String get metric_44_description =>
      'Identifiziert Kinder, Sorgerecht, Erziehungsrollen oder elterliche Schuld, die im Konflikt oder als Druckmittel verwendet werden.';

  @override
  String get metric_45_name => 'Respekt für sexuelle Grenzen';

  @override
  String get metric_45_description =>
      'Bewertet den Respekt vor Zustimmung, Druck, Weigerung, Komfort, Timing und sexueller Autonomie.';

  @override
  String get metric_46_name => 'Indikatoren für digitale Belästigung';

  @override
  String get metric_46_description =>
      'Verfolgt wiederholte unerwünschte Nachrichten, Spam-Anrufe, Online-Druck, Überwachung oder plattformbasierte Einschüchterung.';

  @override
  String get metric_47_name => 'Überwachungs- oder Kontrollsprache';

  @override
  String get metric_47_description =>
      'Markiert das Überprüfen des Aufenthaltsorts, das Fordern von Beweisen, das Verfolgen des Verhaltens oder die ständige Verifizierung.';

  @override
  String get metric_48_name => 'Zukunftsorientierung';

  @override
  String get metric_48_description =>
      'Misst, ob Partner über zukünftige Verbesserung, Verpflichtungen, Pläne oder konstruktive Richtung sprechen.';

  @override
  String get metric_49_name => 'Signale für Sicherheitsplanung';

  @override
  String get metric_49_description =>
      'Sucht nach Versuchen, Hilfe zu suchen, Distanz zu schaffen, Schaden zu dokumentieren oder physische/emotionale Sicherheit zu planen.';

  @override
  String get metric_50_name => 'Gegenseitige Deeskalationsversuche';

  @override
  String get metric_50_description =>
      'Verfolgt Pausen, beruhigende Sprache, weicheren Ton, Timeouts und Versuche beider Partner, die Intensität zu reduzieren.';

  @override
  String get metric_51_name => 'Hinweise auf sichere Bindung';

  @override
  String get metric_51_description =>
      'Identifiziert Vertrauen, direkte Beruhigung, emotionale Verfügbarkeit und Komfort mit Nähe und Unabhängigkeit.';

  @override
  String get metric_52_name => 'Aktivierung ängstlicher Bindung';

  @override
  String get metric_52_description =>
      'Markiert Protestverhalten, dringende Beruhigungsbedürfnisse, Verlassensangst und erhöhte Empfindlichkeit für Distanz.';

  @override
  String get metric_53_name => 'Vermeidende Bindungsdistanzierung';

  @override
  String get metric_53_description =>
      'Erkennt emotionale Minimierung, Unabhängigkeitsverteidigungen, Rückzug aus Verletzlichkeit oder Unbehagen mit Bedürfnissen.';

  @override
  String get metric_54_name => 'Signale desorganisierter Bindung';

  @override
  String get metric_54_description =>
      'Sucht nach Annäherungs-Vermeidungs-Zyklen, Angst gemischt mit Bedürfnis, chaotischen Reaktionen oder verwirrenden Intimitätsmustern.';

  @override
  String get metric_55_name => 'Emotionale Angebote und Antworten';

  @override
  String get metric_55_description =>
      'Misst Einladungen für Aufmerksamkeit, Komfort oder Verbindung und ob sie angenommen oder verpasst werden.';

  @override
  String get metric_56_name => 'Abwendung von Verbindung';

  @override
  String get metric_56_description =>
      'Markiert Ignorieren, Abweisen oder Versäumnis, auf Angebote für Nähe oder Unterstützung zu reagieren.';

  @override
  String get metric_57_name => 'Wendung gegen Verbindung';

  @override
  String get metric_57_description =>
      'Erkennt feindselige oder bestrafende Reaktionen auf Versuche von Zuneigung, Verletzlichkeit oder Reparatur.';

  @override
  String get metric_58_name => 'Positive Sentiment-Überschreibung';

  @override
  String get metric_58_description =>
      'Sucht nach Großzügigkeit, Wohlwollen, Zuneigung und Interpretation von Konflikt durch Fürsorge.';

  @override
  String get metric_59_name => 'Negative Sentiment-Überschreibung';

  @override
  String get metric_59_description =>
      'Markiert die Annahme böser Absichten, negative Interpretation neutraler Nachrichten und anhaltende feindselige Rahmung.';

  @override
  String get metric_60_name => 'Harter Start-Muster';

  @override
  String get metric_60_description =>
      'Identifiziert Gespräche, die mit Vorwurf, Angriff, Verachtung oder Schuld beginnen, statt mit einer Bitte.';

  @override
  String get metric_61_name => 'Sanfter Start-Muster';

  @override
  String get metric_61_description =>
      'Sucht nach sanften Eröffnungen unter Verwendung von Gefühlen, Bedürfnissen, spezifischen Bitten und nicht-anklagender Sprache.';

  @override
  String get metric_62_name => 'Physiologische Selbstberuhigung';

  @override
  String get metric_62_description =>
      'Bewertet Versuche zu pausieren, zu atmen, Raum zu nehmen oder den Körper zu regulieren, bevor der Konflikt fortgesetzt wird.';

  @override
  String get metric_63_name => 'Konfliktvermeidungsmuster';

  @override
  String get metric_63_description =>
      'Verfolgt wiederholte Vermeidung notwendiger Themen, Unbehagen, Dissens oder emotionale Ehrlichkeit.';

  @override
  String get metric_64_name => 'Volatile Konfliktstil';

  @override
  String get metric_64_description =>
      'Erkennt hochintensiven Konflikt mit direktem Ausdruck, der noch Engagement und Reparatur umfassen kann.';

  @override
  String get metric_65_name => 'Validierender Konfliktstil';

  @override
  String get metric_65_description =>
      'Misst, ob Partner die Perspektive des anderen anerkennen, während sie uneinig sind.';

  @override
  String get metric_66_name => 'Feindseliger Konfliktstil';

  @override
  String get metric_66_description =>
      'Markiert häufige Kritik, Verachtung, Defensivität, Angriffe und gegnerische Rahmung.';

  @override
  String get metric_67_name => 'Feindselig-Detachiertes Muster';

  @override
  String get metric_67_description =>
      'Identifiziert kalte Feindseligkeit, emotionale Disengagement, Verachtung und geringe Reparaturmotivation.';

  @override
  String get metric_68_name => 'Kompromissbereitschaft';

  @override
  String get metric_68_description =>
      'Sucht nach Flexibilität, Verhandlung, Mittelweg-Vorschlägen und Opfern, die beide Bedürfnisse respektieren.';

  @override
  String get metric_69_name => 'Einflussakzeptanz';

  @override
  String get metric_69_description =>
      'Misst Offenheit, von den Gefühlen, Bedürfnissen oder der Perspektive des Partners beeinflusst zu werden.';

  @override
  String get metric_70_name => 'Signale blockierter Konflikte';

  @override
  String get metric_70_description =>
      'Markiert wiederholte ungelöste Probleme, die mit Werten, Träumen, Identität oder chronischer Inkompatibilität verbunden sind.';

  @override
  String get metric_71_name => 'Rahmung lösbarer Probleme';

  @override
  String get metric_71_description =>
      'Erkennt praktische, konkrete Problembeschreibungen, die zu spezifischen Vereinbarungen führen können.';

  @override
  String get metric_72_name => 'Referenzen für gemeinsame Bedeutung';

  @override
  String get metric_72_description =>
      'Sucht nach Werten, Ritualen, Zielen, Erinnerungen oder Identitätssprache, die eine gemeinsame Beziehungsgeschichte schafft.';

  @override
  String get metric_73_name => 'Liebeskarten-Bewusstsein';

  @override
  String get metric_73_description =>
      'Bewertet Wissen über die innere Welt, Stressoren, Vorlieben, Ängste und das tägliche Leben des Partners.';

  @override
  String get metric_74_name => 'Zuneigung und Bewunderung';

  @override
  String get metric_74_description =>
      'Identifiziert Wertschätzung, Respekt, Wärme, Komplimente, Dankbarkeit und positive Haltung.';

  @override
  String get metric_75_name => 'Ungleichgewicht emotionaler Arbeit';

  @override
  String get metric_75_description =>
      'Markiert einen Partner, der unverhältnismäßige Planung, Beruhigung, Erinnerung, Erklärung oder Beziehungspflege trägt.';

  @override
  String get metric_76_name => 'Ablehnung mentaler Last';

  @override
  String get metric_76_description =>
      'Erkennt Minimierung unsichtbarer Planungsarbeit, Haushaltskoordination, Terminplanung oder Verantwortungsverfolgung.';

  @override
  String get metric_77_name => 'Hinweise auf bewaffnete Inkompetenz';

  @override
  String get metric_77_description =>
      'Sucht nach Behauptung von Unfähigkeit, Verwirrung oder Hilflosigkeit, um faire Verantwortung zu vermeiden.';

  @override
  String get metric_78_name => 'Sensibilität für Trauma-Auslöser';

  @override
  String get metric_78_description =>
      'Misst Bewusstsein für Auslöser, Traumareaktionen und vorsichtigen Umgang mit vulnerablen Themen.';

  @override
  String get metric_79_name => 'Hinweise auf Hypervigilanz';

  @override
  String get metric_79_description =>
      'Markiert das Scannen nach Gefahr, übermäßige Überwachung des Tons, Angst vor Fehlern oder ständige emotionale Wachsamkeit.';

  @override
  String get metric_80_name => 'Sprache der Verlassensangst';

  @override
  String get metric_80_description =>
      'Erkennt Angst, verlassen, ersetzt, ignoriert, verworfen oder emotional verlassen zu werden.';

  @override
  String get metric_81_name => 'Muster der Beruhigungssuche';

  @override
  String get metric_81_description =>
      'Verfolgt wiederholte Bitten um Beweis von Liebe, Verpflichtung, Sicherheit oder anhaltendem Interesse.';

  @override
  String get metric_82_name => 'Verfolger-Distanzierer-Zyklus';

  @override
  String get metric_82_description =>
      'Identifiziert einen Partner, der die Suche nach Nähe eskaliert, während der andere die Distanz erhöht.';

  @override
  String get metric_83_name => 'Akkumulation von Groll';

  @override
  String get metric_83_description =>
      'Sucht nach gespeicherten Grollen, wiederholten Vergangenheitsreferenzen, Bitterkeit und ungelöster emotionaler Schuld.';

  @override
  String get metric_84_name => 'Punkte-Zähl-Verhalten';

  @override
  String get metric_84_description =>
      'Markiert transaktionales Zählen von Fehlern, Gefallen, Opfern oder Fehlern, um Hebelwirkung zu gewinnen.';

  @override
  String get metric_85_name => 'Bedingte Zuneigung';

  @override
  String get metric_85_description =>
      'Erkennt Liebe, Zustimmung, Zugang oder Wärme, die nur angeboten werden, wenn Compliance erreicht ist.';

  @override
  String get metric_86_name => 'Indikatoren für Love Bombing';

  @override
  String get metric_86_description =>
      'Markiert intensive Zuneigung, Versprechen, Druck oder Idealisierung, um Bindung oder Kontrolle zu beschleunigen.';

  @override
  String get metric_87_name => 'Hoovering-Versuche';

  @override
  String get metric_87_description =>
      'Identifiziert Versuche, jemanden durch Schuld, Nostalgie, Versprechen, Krisen oder plötzliche Zuneigung zurückzuziehen.';

  @override
  String get metric_88_name => 'DARVO-Muster';

  @override
  String get metric_88_description =>
      'Erkennt Leugnen, Angreifen und Umkehren von Opfer-Täter-Reaktionen, wenn mit Schaden konfrontiert wird.';

  @override
  String get metric_89_name => 'Opferhaltungs-Muster';

  @override
  String get metric_89_description =>
      'Markiert wiederkehrende Selbstviktimisierung, die Verantwortung vermeidet oder Aufmerksamkeit vom verursachten Schaden ablenkt.';

  @override
  String get metric_90_name => 'Rahmung moralischer Überlegenheit';

  @override
  String get metric_90_description =>
      'Sucht nach Rechtschaffenheit, Reinheitsansprüchen oder ethischer Überlegenheit, um Konflikt zu dominieren.';

  @override
  String get metric_91_name => 'Charakterermordung';

  @override
  String get metric_91_description =>
      'Erkennt breite Angriffe auf Identität, Integrität, psychische Gesundheit oder Wert statt auf spezifisches Verhalten.';

  @override
  String get metric_92_name => 'Indikatoren für Triangulation';

  @override
  String get metric_92_description =>
      'Markiert das Einbeziehen Dritter in Konflikte, um zu drängen, zu vergleichen, zu validieren oder den Partner zu destabilisieren.';

  @override
  String get metric_93_name => 'Druck durch sozialen Vergleich';

  @override
  String get metric_93_description =>
      'Sucht nach Vergleichen mit Ex-Partnern, Freunden, anderen Paaren oder Idealen, die zur Scham oder Nötigung verwendet werden.';

  @override
  String get metric_94_name => 'Autonomie-Unterstützung';

  @override
  String get metric_94_description =>
      'Misst Respekt für unabhängige Entscheidungen, Freundschaften, Ziele, Grenzen und persönliche Handlungsfähigkeit.';

  @override
  String get metric_95_name => 'Respekt für Zustimmung und Wahl';

  @override
  String get metric_95_description =>
      'Bewertet, ob Entscheidungen frei ohne Druck, Schuld, Drohungen oder Manipulation getroffen werden.';

  @override
  String get metric_96_name => 'Kollaborative Planung';

  @override
  String get metric_96_description =>
      'Sucht nach gemeinsamer Terminplanung, gemeinsamen Entscheidungen, koordinierten Verantwortlichkeiten und praktischer Umsetzung.';

  @override
  String get metric_97_name => 'Reparatur-Nachverfolgung';

  @override
  String get metric_97_description =>
      'Misst, ob versprochene Änderungen später im Verhalten widergespiegelt werden, nicht nur in Worten.';

  @override
  String get metric_98_name => 'Beweis für geändertes Verhalten';

  @override
  String get metric_98_description =>
      'Prüft auf beobachtbare, wiederholte Handlungen, die Lernen, Anpassung oder reduziertes schädliches Verhalten zeigen.';

  @override
  String get metric_99_name => 'Sprache emotionaler Sicherheit';

  @override
  String get metric_99_description =>
      'Identifiziert Sprache, die zur Ehrlichkeit einlädt, Angst reduziert, Würde schützt und sicheren Ausdruck beruhigt.';

  @override
  String get metric_100_name => 'Beziehungsambivalenz';

  @override
  String get metric_100_description =>
      'Erkennt Unsicherheit, gemischte Verpflichtung, Drück-Zieh-Nachrichten oder unklaren Wunsch fortzufahren.';

  @override
  String get unableToOpenConversations =>
      'Gespräche können nicht geöffnet werden';

  @override
  String get unableToOpenConversationsBody =>
      'Beim Laden Ihrer Gespräche ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.';

  @override
  String get unableToLoadConversationsBody =>
      'Gespräche können nicht geladen werden. Bitte überprüfen Sie Ihre Berechtigungen und versuchen Sie es erneut.';

  @override
  String get errorLoadingConversationsBody =>
      'Fehler beim Laden der Gespräche. Bitte versuchen Sie es erneut.';

  @override
  String get smsPermissionRequired => 'SMS-Berechtigung erforderlich';

  @override
  String get smsPermissionRequiredBody =>
      'Um SMS-Gespräche zu analysieren, benötigen wir die Berechtigung, Ihre Nachrichten zu lesen. Ihre Privatsphäre ist wichtig — Nachrichten werden nur lokal analysiert und nie auf unseren Servern gespeichert.';

  @override
  String get grantSmsPermission => 'SMS-Berechtigung erteilen';

  @override
  String get noSmsConversationsFound => 'Keine SMS-Gespräche gefunden';

  @override
  String get noConversationsMatchSearch =>
      'Keine Gespräche entsprechen Ihrer Suche';

  @override
  String get noSmsMessagesOnDevice =>
      'Sie haben keine SMS-Nachrichten auf diesem Gerät';

  @override
  String get tryDifferentSearch => 'Versuchen Sie einen anderen Suchbegriff';

  @override
  String get clearSearch => 'Suche löschen';

  @override
  String selectedFile(String filename) {
    return 'Ausgewählt: $filename';
  }

  @override
  String get invalidFile => 'Ungültige Datei';

  @override
  String get fileImport => 'Datei importieren';

  @override
  String get fileImportNotImplemented =>
      'Die Dateianalyse ist für diesen Dateityp noch nicht implementiert.';

  @override
  String get errorPickingFile =>
      'Die Datei kann nicht geöffnet werden. Bitte versuchen Sie es erneut.';

  @override
  String get readyToCapture => 'Bereit zur Aufnahme';

  @override
  String get readyToCaptureBody =>
      'Wechseln Sie jetzt zur Nachrichten-App und beginnen Sie mit Screenshots.\n\nKehren Sie zu dieser App zurück, wenn Sie fertig sind, und tippen Sie auf \"Fertig & Verarbeiten\".';

  @override
  String get noScreenshotsToProcess => 'Keine Screenshots zu verarbeiten.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Screenshot $current von $total wird verarbeitet...';
  }

  @override
  String get noMessagesFound => 'Keine Nachrichten gefunden';

  @override
  String get noMessagesFoundBody =>
      'Aus den Screenshots konnten keine Nachrichten extrahiert werden.\n\nStellen Sie sicher, dass die Screenshots das Gespräch deutlich zeigen.';

  @override
  String loadedMessages(int count) {
    return '$count Nachrichten aus Screenshots geladen';
  }

  @override
  String get processingError => 'Verarbeitungsfehler';

  @override
  String get processingErrorBody =>
      'Fehler bei der Verarbeitung von Screenshots. Bitte versuchen Sie es erneut.';

  @override
  String metricListSavedAs(String name) {
    return 'Ihre Auswahl wurde als \"$name\" gespeichert.';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Die Auswahl \"$name\" wurde abgerufen und angewendet.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count Nachrichten von $name geladen';
  }

  @override
  String get loadButton => 'Laden';

  @override
  String get photoPermissionRequired =>
      'Fotobibliothek-Berechtigung ist erforderlich, um Screenshots zu erkennen.';

  @override
  String get initializingConnection =>
      'Sichere Verbindung wird initialisiert...';

  @override
  String get configurationRequired => 'Konfiguration erforderlich';

  @override
  String get goBack => 'Zurück';

  @override
  String get enableDateRangeFiltering => 'Datumsbereichsfilterung aktivieren';

  @override
  String get clearSelectedDateRange => 'Ausgewählten Datumsbereich löschen';

  @override
  String get largeThreadNoticeTitle => 'HINWEIS AN DEN BENUTZER';

  @override
  String get largeThreadNoticeBody =>
      'Bei sehr großen Textthreads können einige Ladebildschirme in dieser App manchmal über eine Minute und eine halbe dauern.\n\nDie Anwendung hängt sich nicht auf. Wenn Sie einen sich drehenden Statusindikator sehen, lädt die App noch.\n\nBitte haben Sie in diesen Fällen Geduld, da die Ladezeit im Vergleich zu anderen Anwendungen länger als üblich sein kann, besonders bei einem großen Datensatz wie einem Thread mit 50.000 Nachrichten.';

  @override
  String get neverShowThisAgain => 'Diese Meldung nicht mehr anzeigen';

  @override
  String loadingConversationWith(String name) {
    return 'Gespräch wird geladen\nmit $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Öffnen Sie die Nachrichten-App und wählen Sie die Unterhaltung\n2. Scrollen Sie bis zur ältesten Nachricht, die Sie analysieren möchten\n3. Tippen Sie unten auf \"Aufnahme starten\"\n4. Machen Sie Screenshots, während Sie durch die Unterhaltung scrollen\n5. Wenn Sie fertig sind, tippen Sie auf \"Fertig & Verarbeiten\"';

  @override
  String get howToCaptureIosMessages => 'So erfassen Sie iOS-Nachrichten';

  @override
  String get deepSeekApiKey => 'DeepSeek API-Schlüssel';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Geben Sie Ihren DeepSeek API-Schlüssel ein, um die KI-Analyse zu aktivieren.';

  @override
  String get getYourApiKeyFrom =>
      'Holen Sie Ihren API-Schlüssel von: https://platform.deepseek.com';

  @override
  String get apiKey => 'API-Schlüssel';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Ihr API-Schlüssel wird sicher auf Ihrem Gerät gespeichert und niemals geteilt.';

  @override
  String get pleaseEnterApiKey => 'Bitte geben Sie einen API-Schlüssel ein';

  @override
  String get apiKeySavedSuccessfully =>
      'API-Schlüssel erfolgreich gespeichert!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Bitte haben Sie Geduld, längere Text-Thread-Datensätze dauern ziemlich lange zum Laden';

  @override
  String get almostThereBigOne =>
      'Fast fertig, Wow, das muss ein großer gewesen sein';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Bitte haben Sie Geduld, große Datensätze könnten zu Ladezeiten von mehr als eineinhalb Minuten führen';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Lade weiterhin den massiven Thread mit $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Keine Nachrichten im ausgewählten Datumsbereich gefunden. Bitte wählen Sie andere Daten oder löschen Sie den Datumsfilter.';

  @override
  String get purchaseCustomMetricTileTitle =>
      'Benutzerdefinierte Metrik kaufen';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Für eine einmalige Gebühr von \$4,99 geben Sie einen benutzerdefinierten Metriknamen und eine Definition ein, die dauerhaft neben Ihren anderen Metriken gespeichert wird, um in jeder zukünftigen Analyse verwendet zu werden. Kaufen Sie unbegrenzte benutzerdefinierte Metriken.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Benutzerdefinierte Metrik kaufen';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Ihnen wird \$4,99 (einmalig) berechnet, um einen benutzerdefinierten Metrik-Slot freizuschalten.\n\nIhr benutzerdefinierter Metrikname und Ihre Definition sind dauerhaft und können nach dem Speichern niemals geändert werden, also wählen Sie sorgfältig.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Kaufen — \$4,99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Benutzerdefinierter Metrik-Name';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Geben Sie den Namen für Ihre benutzerdefinierte Metrik ein:';

  @override
  String get purchaseCustomMetricNameHint => 'Metrik-Name';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Metrik-Namen bestätigen';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered =>
      'Sie haben eingegeben:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Dies ist ENDGÜLTIG und kann NIE geändert werden.';

  @override
  String get purchaseCustomMetricReenterName => 'Ups — Neu eingeben';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Metrik-Namen speichern';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definieren: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Geben Sie die Bedeutung Ihrer benutzerdefinierten Metrik ein: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Beschreiben Sie, was diese Metrik bedeutet, welche Verhaltensweisen sie sucht und wie sie auf Beziehungsdynamiken anwendet...';

  @override
  String get purchaseCustomMetricReenter => 'Ups — Neu eingeben';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Bedeutung speichern';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Vorschau Ihrer benutzerdefinierten Metrik';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'So wird Ihre Kachel aussehen:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Dies ist Ihre LETZTE CHANCE, es sich anders zu überlegen.\nSobald festgelegt, sind Name und Definition dauerhaft.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Alles abbrechen';

  @override
  String get purchaseCustomMetricCommit =>
      'Benutzerdefinierte Metrik festlegen';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" zu Ihren Metriken hinzugefügt! Sie können sie jetzt für die Analyse auswählen.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Kauf wird verarbeitet...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Warte auf Bestätigung vom Store.\nBitte schließen Sie die App nicht.';

  @override
  String get next => 'Weiter';

  @override
  String get cancelNotReady => 'Abbrechen — Ich war nicht bereit';

  @override
  String get packGoodLabel => 'Gut';

  @override
  String get packBadLabel => 'Böse';

  @override
  String get packUglyLabel => 'Hässlich';

  @override
  String get metric_good_1_name => 'Active Listening Cues';

  @override
  String get metric_good_1_description =>
      'Detects paraphrasing, clarifying questions, and demonstrated understanding of the partner\'s perspective in text.';

  @override
  String get metric_good_2_name => 'Appreciation Expression';

  @override
  String get metric_good_2_description =>
      'Identifies specific gratitude, recognition of effort, and acknowledgment of partner\'s positive qualities or actions.';

  @override
  String get metric_good_3_name => 'Affirmation Language';

  @override
  String get metric_good_3_description =>
      'Looks for statements that validate the partner\'s feelings, experiences, worth, or right to have needs.';

  @override
  String get metric_good_4_name => 'Collaborative Tone';

  @override
  String get metric_good_4_description =>
      'Measures use of \"we,\" joint problem-solving language, and framing issues as shared challenges to address together.';

  @override
  String get metric_good_5_name => 'Curiosity About Partner';

  @override
  String get metric_good_5_description =>
      'Tracks asking questions about the partner\'s thoughts, feelings, day, preferences, or inner experience.';

  @override
  String get metric_good_6_name => 'Vulnerability Expression';

  @override
  String get metric_good_6_description =>
      'Identifies sharing fears, insecurities, needs, or emotional truths without defensiveness or blame.';

  @override
  String get metric_good_7_name => 'Humor as Connection';

  @override
  String get metric_good_7_description =>
      'Detects playful shared laughter that brings partners together rather than mocking or belittling.';

  @override
  String get metric_good_8_name => 'Reassurance Offering';

  @override
  String get metric_good_8_description =>
      'Looks for proactive statements that provide comfort, security, or confidence to the anxious partner.';

  @override
  String get metric_good_9_name => 'Compliment Frequency';

  @override
  String get metric_good_9_description =>
      'Measures genuine specific praise about appearance, character, abilities, or positive actions.';

  @override
  String get metric_good_10_name => 'Emotional Availability';

  @override
  String get metric_good_10_description =>
      'Assesses responsiveness to the partner\'s emotional needs, presence during distress, and willingness to engage.';

  @override
  String get metric_good_11_name => 'Gratitude Habit';

  @override
  String get metric_good_11_description =>
      'Identifies regular expressions of thanks for small things, effort, presence, or support.';

  @override
  String get metric_good_12_name => 'Supportive Language';

  @override
  String get metric_good_12_description =>
      'Tracks statements offering help, encouragement, belief in the partner\'s abilities, or standing beside them.';

  @override
  String get metric_good_13_name => 'Gentle Disagreement';

  @override
  String get metric_good_13_description =>
      'Measures ability to express different views while preserving respect, curiosity, and the relationship.';

  @override
  String get metric_good_14_name => 'Apology Sincerity';

  @override
  String get metric_good_14_description =>
      'Detects genuine remorse, understanding of impact, and commitment to change without excuses.';

  @override
  String get metric_good_15_name => 'Forgiveness Acceptance';

  @override
  String get metric_good_15_description =>
      'Looks for willingness to let go of past harm, move forward, and rebuild trust after repair.';

  @override
  String get metric_good_16_name => 'Quality Time Initiation';

  @override
  String get metric_good_16_description =>
      'Identifies offers to spend focused time together, plan activities, or create connection moments.';

  @override
  String get metric_good_17_name => 'Physical Affection Cues';

  @override
  String get metric_good_17_description =>
      'Tracks mentions of touch, hugs, kisses, or physical closeness as expressions of care and intimacy.';

  @override
  String get metric_good_18_name => 'Shared Joy Recognition';

  @override
  String get metric_good_18_description =>
      'Measures celebrating partner\'s wins, achievements, happiness, or good news with genuine enthusiasm.';

  @override
  String get metric_good_19_name => 'Conflict Resolution Effort';

  @override
  String get metric_good_19_description =>
      'Identifies attempts to find solutions, compromise, or restore peace after disagreement.';

  @override
  String get metric_good_20_name => 'Patience Demonstration';

  @override
  String get metric_good_20_description =>
      'Detects tolerance for partner\'s pace, struggles, learning curve, or emotional processing needs.';

  @override
  String get metric_good_21_name => 'Perspective-Taking Language';

  @override
  String get metric_good_21_description =>
      'Looks for statements showing understanding of the partner\'s viewpoint, context, or emotional reality.';

  @override
  String get metric_good_22_name => 'Reliability Signals';

  @override
  String get metric_good_22_description =>
      'Tracks following through on promises, showing up consistently, and being dependable.';

  @override
  String get metric_good_23_name => 'Respect for Differences';

  @override
  String get metric_good_23_description =>
      'Measures acceptance of partner\'s unique traits, preferences, opinions, and ways of being.';

  @override
  String get metric_good_24_name => 'Openness to Feedback';

  @override
  String get metric_good_24_description =>
      'Identifies receptiveness to partner\'s concerns, willingness to hear criticism, and desire to improve.';

  @override
  String get metric_good_25_name => 'Validation of Emotions';

  @override
  String get metric_good_25_description =>
      'Detects acknowledgment that the partner\'s feelings are real, understandable, and worthy of attention.';

  @override
  String get metric_good_26_name => 'Encouragement Language';

  @override
  String get metric_good_26_description =>
      'Looks for statements that inspire confidence, motivate action, or support the partner\'s goals.';

  @override
  String get metric_good_27_name => 'Intimate Disclosure';

  @override
  String get metric_good_27_description =>
      'Identifies sharing personal thoughts, dreams, fears, or secrets that deepen emotional connection.';

  @override
  String get metric_good_28_name => 'Attunement Signals';

  @override
  String get metric_good_28_description =>
      'Measures noticing the partner\'s mood, needs, or distress without being told explicitly.';

  @override
  String get metric_good_29_name => 'Positive Reframing';

  @override
  String get metric_good_29_description =>
      'Detects finding silver linings, growth opportunities, or constructive angles in difficult situations.';

  @override
  String get metric_good_30_name => 'Commitment Language';

  @override
  String get metric_good_30_description =>
      'Tracks expressions of dedication, long-term thinking, and investment in the relationship\'s future.';

  @override
  String get metric_good_31_name => 'Flexibility Demonstration';

  @override
  String get metric_good_31_description =>
      'Identifies willingness to adapt plans, adjust expectations, or meet the partner halfway.';

  @override
  String get metric_good_32_name => 'Protective Language';

  @override
  String get metric_good_32_description =>
      'Looks for statements showing the partner\'s safety, wellbeing, and interests matter deeply.';

  @override
  String get metric_good_33_name => 'Celebration of Milestones';

  @override
  String get metric_good_33_description =>
      'Measures acknowledging anniversaries, achievements, or meaningful moments together.';

  @override
  String get metric_good_34_name => 'Constructive Feedback';

  @override
  String get metric_good_34_description =>
      'Detects offering suggestions for improvement that are kind, specific, and growth-focused.';

  @override
  String get metric_good_35_name => 'Presence During Hardship';

  @override
  String get metric_good_35_description =>
      'Identifies staying engaged when the partner is struggling, grieving, or facing challenges.';

  @override
  String get metric_good_36_name => 'Admiration Expression';

  @override
  String get metric_good_36_description =>
      'Tracks genuine respect for the partner\'s character, strength, intelligence, or resilience.';

  @override
  String get metric_good_37_name => 'Playfulness Indicators';

  @override
  String get metric_good_37_description =>
      'Looks for lighthearted teasing, inside jokes, or fun interactions that strengthen bonding.';

  @override
  String get metric_good_38_name => 'Empathic Mirroring';

  @override
  String get metric_good_38_description =>
      'Measures reflecting back the partner\'s emotions to show understanding and validation.';

  @override
  String get metric_good_39_name => 'Acceptance Language';

  @override
  String get metric_good_39_description =>
      'Detects embracing the partner as they are, including flaws, without demanding change.';

  @override
  String get metric_good_40_name => 'Supportive Presence';

  @override
  String get metric_good_40_description =>
      'Identifies being there without fixing, offering comfort through listening and companionship.';

  @override
  String get metric_good_41_name => 'Genuine Interest';

  @override
  String get metric_good_41_description =>
      'Tracks asking follow-up questions and remembering details about the partner\'s life and concerns.';

  @override
  String get metric_good_42_name => 'Reciprocal Effort';

  @override
  String get metric_good_42_description =>
      'Measures both partners contributing equally to emotional work, planning, and relationship maintenance.';

  @override
  String get metric_good_43_name => 'Forgiveness Language';

  @override
  String get metric_good_43_description =>
      'Looks for releasing grudges, offering second chances, and choosing to move past hurt.';

  @override
  String get metric_good_44_name => 'Mutual Respect Signals';

  @override
  String get metric_good_44_description =>
      'Detects treating the partner as an equal, honoring their opinions, and valuing their input.';

  @override
  String get metric_good_45_name => 'Emotional Honesty';

  @override
  String get metric_good_45_description =>
      'Identifies truthful expression of feelings without manipulation, exaggeration, or strategic withholding.';

  @override
  String get metric_good_46_name => 'Supportive Listening';

  @override
  String get metric_good_46_description =>
      'Measures allowing the partner to fully express without interrupting, judging, or immediately problem-solving.';

  @override
  String get metric_good_47_name => 'Affectionate Nicknames';

  @override
  String get metric_good_47_description =>
      'Tracks use of loving terms of endearment that convey warmth and intimate connection.';

  @override
  String get metric_good_48_name => 'Shared Laughter';

  @override
  String get metric_good_48_description =>
      'Identifies moments of mutual humor and joy that create positive bonding experiences.';

  @override
  String get metric_good_49_name => 'Thoughtful Gestures';

  @override
  String get metric_good_49_description =>
      'Looks for small acts of kindness, remembering preferences, or doing things to make partner happy.';

  @override
  String get metric_good_50_name => 'Confidence in Partner';

  @override
  String get metric_good_50_description =>
      'Detects belief in the partner\'s abilities, potential, and capacity to handle challenges.';

  @override
  String get metric_good_51_name => 'Healthy Interdependence';

  @override
  String get metric_good_51_description =>
      'Measures balance between togetherness and independence, supporting each other\'s autonomy.';

  @override
  String get metric_good_52_name => 'Conflict De-escalation';

  @override
  String get metric_good_52_description =>
      'Identifies soft language, breaks, or solution-offering to calm heated discussions.';

  @override
  String get metric_good_53_name => 'Genuine Apology';

  @override
  String get metric_good_53_description =>
      'Tracks full acknowledgment of wrongdoing without minimizing, defending, or shifting blame.';

  @override
  String get metric_good_54_name => 'Emotional Support Offers';

  @override
  String get metric_good_54_description =>
      'Looks for proactive check-ins, asking how the partner is doing, and offering help.';

  @override
  String get metric_good_55_name => 'Respectful Boundaries';

  @override
  String get metric_good_55_description =>
      'Measures honoring the partner\'s stated limits while maintaining own healthy boundaries.';

  @override
  String get metric_good_56_name => 'Positive Anticipation';

  @override
  String get metric_good_56_description =>
      'Detects excitement about the future together, planning ahead, and looking forward to shared experiences.';

  @override
  String get metric_good_57_name => 'Attentiveness Signals';

  @override
  String get metric_good_57_description =>
      'Identifies remembering important dates, preferences, and details that show the partner matters.';

  @override
  String get metric_good_58_name => 'Encouraging Growth';

  @override
  String get metric_good_58_description =>
      'Tracks supporting the partner\'s personal development, learning, and pursuit of goals.';

  @override
  String get metric_good_59_name => 'Tender Language';

  @override
  String get metric_good_59_description =>
      'Looks for soft, caring word choices that convey gentleness and emotional warmth.';

  @override
  String get metric_good_60_name => 'Mutual Accountability';

  @override
  String get metric_good_60_description =>
      'Measures both partners taking responsibility for their actions and their impact.';

  @override
  String get metric_good_61_name => 'Celebration of Partner';

  @override
  String get metric_good_61_description =>
      'Detects publicly or privately expressing pride, joy, or admiration for the partner.';

  @override
  String get metric_good_62_name => 'Consistent Affection';

  @override
  String get metric_good_62_description =>
      'Identifies regular expressions of love that do not fluctuate based on performance or compliance.';

  @override
  String get metric_good_63_name => 'Emotional Attunement';

  @override
  String get metric_good_63_description =>
      'Tracks sensing and responding to subtle shifts in the partner\'s emotional state.';

  @override
  String get metric_good_64_name => 'Collaborative Decision-Making';

  @override
  String get metric_good_64_description =>
      'Measures discussing options together and making choices that consider both partners\' needs.';

  @override
  String get metric_good_65_name => 'Reassurance Without Demand';

  @override
  String get metric_good_65_description =>
      'Looks for offering comfort and security without requiring the partner to earn it.';

  @override
  String get metric_good_66_name => 'Authentic Connection';

  @override
  String get metric_good_66_description =>
      'Detects genuine presence, real sharing, and dropping pretense in interactions.';

  @override
  String get metric_good_67_name => 'Mutual Encouragement';

  @override
  String get metric_good_67_description =>
      'Identifies both partners cheering each other on and celebrating efforts not just outcomes.';

  @override
  String get metric_good_68_name => 'Respectful Questioning';

  @override
  String get metric_good_68_description =>
      'Tracks asking about the partner\'s perspective with genuine curiosity rather than interrogation.';

  @override
  String get metric_good_69_name => 'Loving Consistency';

  @override
  String get metric_good_69_description =>
      'Measures showing up the same way in good times and hard times, reliable in affection.';

  @override
  String get metric_good_70_name => 'Emotional Reciprocity';

  @override
  String get metric_good_70_description =>
      'Looks for both partners sharing feelings, needs, and vulnerabilities in balanced ways.';

  @override
  String get metric_good_71_name => 'Joyful Presence';

  @override
  String get metric_good_71_description =>
      'Detects genuine happiness in the partner\'s company and enthusiasm for time together.';

  @override
  String get metric_good_72_name => 'Constructive Dialogue';

  @override
  String get metric_good_72_description =>
      'Identifies conversations that move toward understanding rather than winning or proving right.';

  @override
  String get metric_good_73_name => 'Protective Advocacy';

  @override
  String get metric_good_73_description =>
      'Tracks standing up for the partner, defending them, and prioritizing their wellbeing.';

  @override
  String get metric_good_74_name => 'Mindful Communication';

  @override
  String get metric_good_74_description =>
      'Measures thoughtful word choice, considering impact before speaking, and intentional messaging.';

  @override
  String get metric_good_75_name => 'Relationship Investment';

  @override
  String get metric_good_75_description =>
      'Looks for time, energy, and resources devoted to nurturing the partnership.';

  @override
  String get metric_good_76_name => 'Secure Base Language';

  @override
  String get metric_good_76_description =>
      'Detects offering stability, safety, and a foundation from which the partner can explore.';

  @override
  String get metric_good_77_name => 'Mutual Admiration';

  @override
  String get metric_good_77_description =>
      'Identifies both partners expressing respect and appreciation for each other\'s qualities.';

  @override
  String get metric_good_78_name => 'Tender Moments';

  @override
  String get metric_good_78_description =>
      'Tracks creating or recognizing intimate quiet moments of connection and closeness.';

  @override
  String get metric_good_79_name => 'Genuine Curiosity';

  @override
  String get metric_good_79_description =>
      'Looks for authentic interest in understanding the partner\'s thoughts, feelings, and experiences.';

  @override
  String get metric_good_80_name => 'Loving Acceptance';

  @override
  String get metric_good_80_description =>
      'Detects embracing the partner\'s whole self, including imperfections and past.';

  @override
  String get metric_good_81_name => 'Mutual Growth Support';

  @override
  String get metric_good_81_description =>
      'Identifies both partners encouraging each other\'s development and celebrating progress.';

  @override
  String get metric_good_82_name => 'Warm Tone Indicators';

  @override
  String get metric_good_82_description =>
      'Tracks use of affectionate language, kind phrasing, and gentle communication style.';

  @override
  String get metric_good_83_name => 'Responsive Engagement';

  @override
  String get metric_good_83_description =>
      'Measures quick, engaged responses to the partner\'s messages and emotional bids.';

  @override
  String get metric_good_84_name => 'Shared Values Alignment';

  @override
  String get metric_good_84_description =>
      'Looks for references to common beliefs, goals, or life philosophies that unite the couple.';

  @override
  String get metric_good_85_name => 'Unconditional Support';

  @override
  String get metric_good_85_description =>
      'Detects standing by the partner through difficulties without making support conditional.';

  @override
  String get metric_good_86_name => 'Intimate Vulnerability';

  @override
  String get metric_good_86_description =>
      'Identifies sharing deep fears, dreams, or insecurities that deepen emotional bonds.';

  @override
  String get metric_good_87_name => 'Mutual Respect Language';

  @override
  String get metric_good_87_description =>
      'Tracks honoring each other\'s perspectives, choices, and autonomy in communication.';

  @override
  String get metric_good_88_name => 'Positive Framing';

  @override
  String get metric_good_88_description =>
      'Measures seeing the best in situations and the partner, focusing on strengths.';

  @override
  String get metric_good_89_name => 'Collaborative Problem Solving';

  @override
  String get metric_good_89_description =>
      'Looks for working together toward solutions that benefit both partners equally.';

  @override
  String get metric_good_90_name => 'Emotional Validation';

  @override
  String get metric_good_90_description =>
      'Detects confirming that the partner\'s feelings make sense and are acceptable.';

  @override
  String get metric_good_91_name => 'Consistent Kindness';

  @override
  String get metric_good_91_description =>
      'Identifies regular small acts of care that show the partner is thought of and valued.';

  @override
  String get metric_good_92_name => 'Mutual Celebration';

  @override
  String get metric_good_92_description =>
      'Tracks both partners genuinely happy about each other\'s successes and joys.';

  @override
  String get metric_good_93_name => 'Secure Attachment Language';

  @override
  String get metric_good_93_description =>
      'Measures expressing trust, comfort with intimacy, and confidence in the relationship.';

  @override
  String get metric_good_94_name => 'Thoughtful Consideration';

  @override
  String get metric_good_94_description =>
      'Looks for making decisions with the partner\'s needs and feelings in mind.';

  @override
  String get metric_good_95_name => 'Loving Presence';

  @override
  String get metric_good_95_description =>
      'Detects being fully present and engaged, showing the partner they matter most.';

  @override
  String get metric_good_96_name => 'Genuine Care Language';

  @override
  String get metric_good_96_description =>
      'Tracks authentic expressions of concern, care, and investment in the partner\'s wellbeing.';

  @override
  String get metric_good_97_name => 'Relationship Commitment';

  @override
  String get metric_good_97_description =>
      'Measures expressing dedication to the partnership and willingness to work through challenges.';

  @override
  String get metric_good_98_name => 'Authentic Love Expression';

  @override
  String get metric_good_98_description =>
      'Looks for genuine consistent expressions of love that feel real and unconditional.';

  @override
  String get metric_good_99_name => 'Mutual Goal Setting';

  @override
  String get metric_good_99_description =>
      'Identifies partners collaboratively defining shared dreams, priorities, and direction for their future together.';

  @override
  String get metric_good_100_name => 'Repair Attempt Recognition';

  @override
  String get metric_good_100_description =>
      'Detects noticing and positively responding to the partner\'s bids to de-escalate conflict and restore connection.';

  @override
  String get metric_bad_1_name => 'Passive Aggression';

  @override
  String get metric_bad_1_description =>
      'Detects indirect hostility through procrastination, forgetfulness, sarcasm, or subtle sabotage instead of direct expression.';

  @override
  String get metric_bad_2_name => 'Guilt Weaponization';

  @override
  String get metric_bad_2_description =>
      'Identifies using guilt, shame, or obligation language to manipulate decisions or prevent boundary-setting.';

  @override
  String get metric_bad_3_name => 'Emotional Blackmail';

  @override
  String get metric_bad_3_description =>
      'Flags threats of self-harm, abandonment, or withdrawal of love to control behavior or prevent discussion.';

  @override
  String get metric_bad_4_name => 'Chronic Complaining';

  @override
  String get metric_bad_4_description =>
      'Tracks persistent negativity, rumination, or complaint without seeking solutions or collaborative change.';

  @override
  String get metric_bad_5_name => 'Comparison Shaming';

  @override
  String get metric_bad_5_description =>
      'Identifies unfavorable comparisons to exes, friends, or family to shame or coerce behavior change.';

  @override
  String get metric_bad_6_name => 'Conditional Listening';

  @override
  String get metric_bad_6_description =>
      'Detects listening only when it benefits the listener or serves their agenda rather than genuine understanding.';

  @override
  String get metric_bad_7_name => 'Selective Memory';

  @override
  String get metric_bad_7_description =>
      'Tracks convenient forgetting of promises, agreements, or past harmful behavior to avoid accountability.';

  @override
  String get metric_bad_8_name => 'Attention Seeking Through Crisis';

  @override
  String get metric_bad_8_description =>
      'Identifies dramatic escalation, crisis creation, or exaggeration to gain focus or sympathy.';

  @override
  String get metric_bad_9_name => 'Boundary Testing';

  @override
  String get metric_bad_9_description =>
      'Detects repeated probing or pushing of stated limits to determine if they will be enforced.';

  @override
  String get metric_bad_10_name => 'Withholding Information';

  @override
  String get metric_bad_10_description =>
      'Identifies deliberate omission of relevant facts, context, or transparency to maintain control.';

  @override
  String get metric_bad_11_name => 'Disproportionate Anger';

  @override
  String get metric_bad_11_description =>
      'Tracks anger responses that are significantly larger than the triggering incident warrants.';

  @override
  String get metric_bad_12_name => 'Reassurance Addiction';

  @override
  String get metric_bad_12_description =>
      'Flags constant need for validation, repeated questions about commitment, or endless proof of love.';

  @override
  String get metric_bad_13_name => 'Conversation Avoidance';

  @override
  String get metric_bad_13_description =>
      'Detects refusal to engage with concerns, avoidance phrases, or shutting down important discussions.';

  @override
  String get metric_bad_14_name => 'Contradiction Pattern';

  @override
  String get metric_bad_14_description =>
      'Identifies contradictory statements, promises, or positions that create confusion or destabilization.';

  @override
  String get metric_bad_15_name => 'Dismissal Through Labeling';

  @override
  String get metric_bad_15_description =>
      'Flags labeling concerns as \"crazy,\" \"dramatic,\" \"paranoid,\" or \"overreacting\" to invalidate them.';

  @override
  String get metric_bad_16_name => 'Selective Empathy';

  @override
  String get metric_bad_16_description =>
      'Detects empathy offered only when convenient or when it serves the speaker\'s interests.';

  @override
  String get metric_bad_17_name => 'Transactional Framing';

  @override
  String get metric_bad_17_description =>
      'Identifies \"you owe me,\" \"after all I\'ve done,\" or viewing relationship acts as creating debt.';

  @override
  String get metric_bad_18_name => 'Grievance Recycling';

  @override
  String get metric_bad_18_description =>
      'Tracks bringing up old grievances repeatedly or using past harm as ammunition in current conflicts.';

  @override
  String get metric_bad_19_name => 'Demand Language';

  @override
  String get metric_bad_19_description =>
      'Flags imperatives, commands, or ultimatums rather than requests or collaborative problem-solving.';

  @override
  String get metric_bad_20_name => 'Emotional Unavailability';

  @override
  String get metric_bad_20_description =>
      'Detects consistent refusal to engage emotionally, share feelings, or provide comfort.';

  @override
  String get metric_bad_21_name => 'Hostile Interpretation';

  @override
  String get metric_bad_21_description =>
      'Identifies taking neutral statements as attacks or interpreting ambiguous messages as hostile.';

  @override
  String get metric_bad_22_name => 'Entitlement Framing';

  @override
  String get metric_bad_22_description =>
      'Flags language suggesting the speaker deserves special treatment, exceptions, or priority.';

  @override
  String get metric_bad_23_name => 'Criticism Disguised as Help';

  @override
  String get metric_bad_23_description =>
      'Detects criticism wrapped in \"I\'m just trying to help\" or \"for your own good\" language.';

  @override
  String get metric_bad_24_name => 'Neglect Patterns';

  @override
  String get metric_bad_24_description =>
      'Identifies consistent failure to meet emotional, physical, or relational needs.';

  @override
  String get metric_bad_25_name => 'Conflict Rumination';

  @override
  String get metric_bad_25_description =>
      'Tracks obsessive rehashing of conflicts without moving toward resolution or closure.';

  @override
  String get metric_bad_26_name => 'Sensitivity Dismissal';

  @override
  String get metric_bad_26_description =>
      'Flags statements like \"you\'re too sensitive\" or \"you\'re overreacting\" to dismiss feelings.';

  @override
  String get metric_bad_27_name => 'Competitive Framing';

  @override
  String get metric_bad_27_description =>
      'Detects framing relationship as a competition where one partner must win or dominate.';

  @override
  String get metric_bad_28_name => 'Double Standards';

  @override
  String get metric_bad_28_description =>
      'Identifies applying different rules to self versus partner or changing expectations arbitrarily.';

  @override
  String get metric_bad_29_name => 'Affection as Punishment';

  @override
  String get metric_bad_29_description =>
      'Flags removing affection, attention, or communication as retaliation for perceived wrongs.';

  @override
  String get metric_bad_30_name => 'Blame Rotation';

  @override
  String get metric_bad_30_description =>
      'Tracks rotating blame between partner, circumstances, and external factors to avoid accountability.';

  @override
  String get metric_bad_31_name => 'Rhetorical Mockery';

  @override
  String get metric_bad_31_description =>
      'Detects rhetorical or sarcastic questions used to mock rather than understand.';

  @override
  String get metric_bad_32_name => 'Sacrifice Reminders';

  @override
  String get metric_bad_32_description =>
      'Identifies reminding partner of sacrifices, favors, or support to create debt and compliance.';

  @override
  String get metric_bad_33_name => 'Deliberate Escalation';

  @override
  String get metric_bad_33_description =>
      'Flags deliberately escalating intensity to overwhelm partner\'s ability to respond rationally.';

  @override
  String get metric_bad_34_name => 'Strategic Vulnerability';

  @override
  String get metric_bad_34_description =>
      'Detects sharing emotions only when it serves manipulation or control purposes.';

  @override
  String get metric_bad_35_name => 'Deflection Through Counterattack';

  @override
  String get metric_bad_35_description =>
      'Identifies turning focus away from partner\'s concerns by raising unrelated issues or countercharges.';

  @override
  String get metric_bad_36_name => 'Superiority Language';

  @override
  String get metric_bad_36_description =>
      'Flags superiority language, condescension, or framing partner as beneath them.';

  @override
  String get metric_bad_37_name => 'Conflict Exit Pattern';

  @override
  String get metric_bad_37_description =>
      'Detects pattern of leaving conversations, refusing to engage, or creating distance during conflict.';

  @override
  String get metric_bad_38_name => 'Negative Bias';

  @override
  String get metric_bad_38_description =>
      'Tracks consistently interpreting neutral or positive actions as negative or suspicious.';

  @override
  String get metric_bad_39_name => 'Agency Denial';

  @override
  String get metric_bad_39_description =>
      'Identifies \"I have to,\" \"you make me,\" or language removing personal agency from the speaker.';

  @override
  String get metric_bad_40_name => 'Silence as Control';

  @override
  String get metric_bad_40_description =>
      'Flags using silence or non-response as a form of punishment or control.';

  @override
  String get metric_bad_41_name => 'Privacy Hypocrisy';

  @override
  String get metric_bad_41_description =>
      'Detects refusing to share information while demanding transparency from the partner.';

  @override
  String get metric_bad_42_name => 'Unsolicited Harsh Feedback';

  @override
  String get metric_bad_42_description =>
      'Identifies harsh feedback presented as \"constructive\" or \"helpful\" without consent.';

  @override
  String get metric_bad_43_name => 'Conditional Care';

  @override
  String get metric_bad_43_description =>
      'Flags support offered only when partner complies with speaker\'s expectations.';

  @override
  String get metric_bad_44_name => 'Impact Denial';

  @override
  String get metric_bad_44_description =>
      'Detects \"I didn\'t mean it that way\" or \"you\'re reading too much into it\" after causing harm.';

  @override
  String get metric_bad_45_name => 'Debt Mentality';

  @override
  String get metric_bad_45_description =>
      'Tracks bringing up past help or support to create debt and control current behavior.';

  @override
  String get metric_bad_46_name => 'Responsibility Evasion';

  @override
  String get metric_bad_46_description =>
      'Flags consistent pattern of not taking responsibility for the impact of actions.';

  @override
  String get metric_bad_47_name => 'Needs Dismissal';

  @override
  String get metric_bad_47_description =>
      'Identifies treating partner\'s needs as inconvenient, unreasonable, or unimportant.';

  @override
  String get metric_bad_48_name => 'Emotional Manipulation';

  @override
  String get metric_bad_48_description =>
      'Flags using emotions strategically to control outcomes or prevent accountability.';

  @override
  String get metric_bad_49_name => 'Intimacy Avoidance';

  @override
  String get metric_bad_49_description =>
      'Tracks consistent withdrawal from emotional or physical closeness without explanation.';

  @override
  String get metric_bad_50_name => 'Veiled Criticism';

  @override
  String get metric_bad_50_description =>
      'Identifies criticism disguised as jokes, observations, or casual comments.';

  @override
  String get metric_bad_51_name => 'Concern Minimization';

  @override
  String get metric_bad_51_description =>
      'Flags reducing partner\'s concerns to insignificance or exaggeration.';

  @override
  String get metric_bad_52_name => 'Guilt Enforcement';

  @override
  String get metric_bad_52_description =>
      'Identifies using guilt or shame to ensure partner complies with expectations.';

  @override
  String get metric_bad_53_name => 'Apology Resistance';

  @override
  String get metric_bad_53_description =>
      'Tracks resistance to apologizing, explaining away harm, or refusing to acknowledge impact.';

  @override
  String get metric_bad_54_name => 'Perspective Rejection';

  @override
  String get metric_bad_54_description =>
      'Flags refusing to consider or validate partner\'s viewpoint or experience.';

  @override
  String get metric_bad_55_name => 'Emotional Rationing';

  @override
  String get metric_bad_55_description =>
      'Detects deliberately limiting emotional expression or connection as a form of control.';

  @override
  String get metric_bad_56_name => 'Obligation Manipulation';

  @override
  String get metric_bad_56_description =>
      'Flags using past support or sacrifice to manipulate current decisions.';

  @override
  String get metric_bad_57_name => 'Resistance to Growth';

  @override
  String get metric_bad_57_description =>
      'Tracks resistance to modifying harmful behavior despite requests or demonstrated impact.';

  @override
  String get metric_bad_58_name => 'Harm Denial';

  @override
  String get metric_bad_58_description =>
      'Detects refusing to acknowledge or take seriously the impact of one\'s own behavior.';

  @override
  String get metric_bad_59_name => 'Loaded Questions';

  @override
  String get metric_bad_59_description =>
      'Flags critical intent disguised as innocent questions or expressions of curiosity.';

  @override
  String get metric_bad_60_name => 'Contemptuous Tone';

  @override
  String get metric_bad_60_description =>
      'Identifies dismissive attitude or disdain conveyed through text patterns and word choice.';

  @override
  String get metric_bad_61_name => 'Guilt Trip Cycling';

  @override
  String get metric_bad_61_description =>
      'Detects repeatedly using guilt about past support or sacrifice to control current behavior.';

  @override
  String get metric_bad_62_name => 'Emotional Guardedness';

  @override
  String get metric_bad_62_description =>
      'Tracks refusing to share emotions, fears, or needs with partner as protective withholding.';

  @override
  String get metric_bad_63_name => 'Boundary Negotiation';

  @override
  String get metric_bad_63_description =>
      'Flags treating stated limits as suggestions or negotiable rather than firm commitments.';

  @override
  String get metric_bad_64_name => 'Emotional Absence';

  @override
  String get metric_bad_64_description =>
      'Detects consistent refusal to provide emotional support or engaged presence.';

  @override
  String get metric_bad_65_name => 'Favor Tracking';

  @override
  String get metric_bad_65_description =>
      'Flags keeping mental score of favors, support, or sacrifices for later leverage.';

  @override
  String get metric_bad_66_name => 'Honesty Avoidance';

  @override
  String get metric_bad_66_description =>
      'Detects pattern of withholding truth, omitting facts, or being deliberately vague.';

  @override
  String get metric_bad_67_name => 'Validity Denial';

  @override
  String get metric_bad_67_description =>
      'Identifies treating partner\'s feelings, needs, or concerns as invalid or illegitimate.';

  @override
  String get metric_bad_68_name => 'Advice Disguised Criticism';

  @override
  String get metric_bad_68_description =>
      'Flags criticism presented as concern, advice, or a helpful observation.';

  @override
  String get metric_bad_69_name => 'Superiority Indicators';

  @override
  String get metric_bad_69_description =>
      'Detects superiority, mockery, or disdain in language or communication style.';

  @override
  String get metric_bad_70_name => 'Repair Resistance';

  @override
  String get metric_bad_70_description =>
      'Tracks resistance to making amends, reconnecting, or rebuilding after conflict.';

  @override
  String get metric_bad_71_name => 'Effort Dismissal';

  @override
  String get metric_bad_71_description =>
      'Flags minimizing or ignoring partner\'s attempts to improve or address issues.';

  @override
  String get metric_bad_72_name => 'Emotional Distance Pattern';

  @override
  String get metric_bad_72_description =>
      'Detects long-term pattern of emotional distance or refusal to engage authentically.';

  @override
  String get metric_bad_73_name => 'Inferiority Framing';

  @override
  String get metric_bad_73_description =>
      'Identifies framing partner as inferior, flawed, or unworthy of full respect.';

  @override
  String get metric_bad_74_name => 'Feedback Resistance';

  @override
  String get metric_bad_74_description =>
      'Detects resistance to hearing criticism, refusing to listen, or shutting down discussion.';

  @override
  String get metric_bad_75_name => 'Worry Dismissal';

  @override
  String get metric_bad_75_description =>
      'Identifies treating partner\'s worries or fears as unfounded or irrational.';

  @override
  String get metric_bad_76_name => 'Fault Finding';

  @override
  String get metric_bad_76_description =>
      'Flags chronic pattern of finding fault, complaining about, or attacking partner\'s character.';

  @override
  String get metric_bad_77_name => 'Sacrifice Guilt Cycling';

  @override
  String get metric_bad_77_description =>
      'Identifies repeatedly bringing up past support to create guilt or control behavior.';

  @override
  String get metric_bad_78_name => 'Commitment Ambiguity';

  @override
  String get metric_bad_78_description =>
      'Tracks unclear or wavering commitment language, mixed signals, or reluctance to commit.';

  @override
  String get metric_bad_79_name => 'Request Dismissal';

  @override
  String get metric_bad_79_description =>
      'Flags ignoring, refusing, or delaying response to partner\'s reasonable requests.';

  @override
  String get metric_bad_80_name => 'Emotional Control Tactics';

  @override
  String get metric_bad_80_description =>
      'Detects strategic use of emotions to control outcomes or prevent accountability.';

  @override
  String get metric_bad_81_name => 'Exchange Mentality';

  @override
  String get metric_bad_81_description =>
      'Flags viewing relationship through lens of debt, obligation, or transactional exchange.';

  @override
  String get metric_bad_82_name => 'Personal Development Resistance';

  @override
  String get metric_bad_82_description =>
      'Detects resistance to personal development, learning, or changing harmful patterns.';

  @override
  String get metric_bad_83_name => 'Improvement Rejection';

  @override
  String get metric_bad_83_description =>
      'Identifies minimizing or rejecting partner\'s efforts to improve or address issues.';

  @override
  String get metric_bad_84_name => 'Chronic Criticism';

  @override
  String get metric_bad_84_description =>
      'Flags chronic pattern of criticism wrapped in concern, helpfulness, or care language.';

  @override
  String get metric_bad_85_name => 'Solution Avoidance';

  @override
  String get metric_bad_85_description =>
      'Detects consistent pattern of avoiding closure, moving forward, or finding workable solutions.';

  @override
  String get metric_bad_86_name => 'Blame Deflection Pattern';

  @override
  String get metric_bad_86_description =>
      'Flags habitual pattern of redirecting responsibility to external factors or the partner.';

  @override
  String get metric_bad_87_name => 'Dismissive Responses';

  @override
  String get metric_bad_87_description =>
      'Identifies pattern of dismissing partner\'s input, ideas, or suggestions without consideration.';

  @override
  String get metric_bad_88_name => 'Resentment Expression';

  @override
  String get metric_bad_88_description =>
      'Detects tone of resentment, bitterness, or long-held frustration in communication.';

  @override
  String get metric_bad_89_name => 'Ambivalent Messaging';

  @override
  String get metric_bad_89_description =>
      'Flags mixed messages about commitment, unclear desire to continue, or push-pull dynamics.';

  @override
  String get metric_bad_90_name => 'Expectation Shifting';

  @override
  String get metric_bad_90_description =>
      'Identifies changing expectations without communication, then blaming partner for not meeting them.';

  @override
  String get metric_bad_91_name => 'Deflection Habit';

  @override
  String get metric_bad_91_description =>
      'Detects habitual avoidance of direct answers or redirection of conversations away from accountability.';

  @override
  String get metric_bad_92_name => 'Manipulation Through Kindness';

  @override
  String get metric_bad_92_description =>
      'Flags exaggerated generosity used strategically to create obligation or lower defenses.';

  @override
  String get metric_bad_93_name => 'Chronic Lateness Pattern';

  @override
  String get metric_bad_93_description =>
      'Identifies consistent disregard for partner\'s time through lateness or broken scheduling commitments.';

  @override
  String get metric_bad_94_name => 'Progress Minimization';

  @override
  String get metric_bad_94_description =>
      'Tracks dismissing or failing to acknowledge the partner\'s genuine personal growth or improvements.';

  @override
  String get metric_bad_95_name => 'Emotional Weaponizing';

  @override
  String get metric_bad_95_description =>
      'Detects using partner\'s disclosed vulnerabilities or fears against them in conflict.';

  @override
  String get metric_bad_96_name => 'Gaslighting-Adjacent Tactics';

  @override
  String get metric_bad_96_description =>
      'Identifies subtle reality-distorting tactics that create self-doubt without full gaslighting.';

  @override
  String get metric_bad_97_name => 'Passive Stonewalling';

  @override
  String get metric_bad_97_description =>
      'Flags subtle disengagement, monosyllabic responses, or checked-out presence as avoidance.';

  @override
  String get metric_bad_98_name => 'Narrative Control';

  @override
  String get metric_bad_98_description =>
      'Detects insisting on being the sole authority on what happened, how it felt, or what was meant.';

  @override
  String get metric_bad_99_name => 'Responsibility Deflection';

  @override
  String get metric_bad_99_description =>
      'Tracks consistently redirecting accountability onto external factors, third parties, or the partner\'s behavior.';

  @override
  String get metric_bad_100_name => 'Emotional Unavailability';

  @override
  String get metric_bad_100_description =>
      'Flags chronic withdrawal from emotional intimacy, vulnerability, or meaningful connection when the partner needs closeness.';

  @override
  String get metric_ugly_1_name => 'Physical Violence Threats';

  @override
  String get metric_ugly_1_description =>
      'Detects explicit or veiled threats of hitting, harming, or physical assault against the partner.';

  @override
  String get metric_ugly_2_name => 'Weapon Possession References';

  @override
  String get metric_ugly_2_description =>
      'Flags mentions of guns, knives, or weapons in the context of anger, control, or capability to harm.';

  @override
  String get metric_ugly_3_name => 'Strangulation Indicators';

  @override
  String get metric_ugly_3_description =>
      'Identifies choking, throat-grabbing, suffocation, or asphyxiation language or references.';

  @override
  String get metric_ugly_4_name => 'Suicide Threat Weaponization';

  @override
  String get metric_ugly_4_description =>
      'Detects threats of self-harm used to control, manipulate, or punish the partner.';

  @override
  String get metric_ugly_5_name => 'Homicide Ideation Language';

  @override
  String get metric_ugly_5_description =>
      'Flags statements expressing intent, planning, or desire to kill the partner.';

  @override
  String get metric_ugly_6_name => 'Lethality Risk Patterns';

  @override
  String get metric_ugly_6_description =>
      'Identifies high-lethality warning signs: weapon access, obsession, escalation, and separation threats combined.';

  @override
  String get metric_ugly_7_name => 'Stalking Obsession Language';

  @override
  String get metric_ugly_7_description =>
      'Detects obsessive location monitoring, following, surprise visits, or persistent unwanted pursuit.';

  @override
  String get metric_ugly_8_name => 'Forced Isolation Enforcement';

  @override
  String get metric_ugly_8_description =>
      'Flags aggressive demands to cut off all family, friends, work, or outside contact.';

  @override
  String get metric_ugly_9_name => 'Economic Sabotage';

  @override
  String get metric_ugly_9_description =>
      'Identifies deliberate destruction of employment, credit, finances, or economic stability.';

  @override
  String get metric_ugly_10_name => 'Reproductive Coercion';

  @override
  String get metric_ugly_10_description =>
      'Detects forced pregnancy, abortion pressure, contraception tampering, or reproductive control.';

  @override
  String get metric_ugly_11_name => 'Sexual Coercion Pressure';

  @override
  String get metric_ugly_11_description =>
      'Flags forced sex, coerced sexual acts, pressure after refusal, or sexual punishment language.';

  @override
  String get metric_ugly_12_name => 'Non-Consensual Sexual Language';

  @override
  String get metric_ugly_12_description =>
      'Identifies explicit or implicit non-consensual sexual assault threats or descriptions.';

  @override
  String get metric_ugly_13_name => 'Child Harm Threats';

  @override
  String get metric_ugly_13_description =>
      'Detects threats to harm, neglect, or abuse children as leverage or punishment against the partner.';

  @override
  String get metric_ugly_14_name => 'Child Custody Weaponization';

  @override
  String get metric_ugly_14_description =>
      'Flags threats to take children, deny access, or use custody as a control mechanism.';

  @override
  String get metric_ugly_15_name => 'Pet Harm Threats';

  @override
  String get metric_ugly_15_description =>
      'Identifies threats to hurt, kill, or abuse pets as punishment or to demonstrate control.';

  @override
  String get metric_ugly_16_name => 'Sleep Deprivation Tactics';

  @override
  String get metric_ugly_16_description =>
      'Flags deliberate prevention of sleep, constant interruption, or exhaustion as a control method.';

  @override
  String get metric_ugly_17_name => 'Confinement Language';

  @override
  String get metric_ugly_17_description =>
      'Flags locking in, preventing departure, or confining the partner to a location.';

  @override
  String get metric_ugly_18_name => 'Predatory Grooming Language';

  @override
  String get metric_ugly_18_description =>
      'Flags systematic manipulation to lower defenses, build false trust, then exploit the partner.';

  @override
  String get metric_ugly_19_name => 'Dehumanization Language';

  @override
  String get metric_ugly_19_description =>
      'Detects describing partner as an animal, object, subhuman, or unworthy of basic rights.';

  @override
  String get metric_ugly_20_name => 'Narcissistic Rage Escalation';

  @override
  String get metric_ugly_20_description =>
      'Detects explosive anger triggered by perceived slights, criticism, or any loss of control.';

  @override
  String get metric_ugly_21_name => 'Obsessive Possession Claims';

  @override
  String get metric_ugly_21_description =>
      'Flags language claiming ownership, property rights, or total control over the partner\'s person.';

  @override
  String get metric_ugly_22_name => 'Pathological Lying Patterns';

  @override
  String get metric_ugly_22_description =>
      'Identifies consistent, elaborate, or unnecessary lies about serious matters without apparent reason.';

  @override
  String get metric_ugly_23_name => 'Revenge Fantasy Language';

  @override
  String get metric_ugly_23_description =>
      'Identifies detailed fantasies about harming, humiliating, or destroying the partner.';

  @override
  String get metric_ugly_24_name => 'Betrayal Obsession Fixation';

  @override
  String get metric_ugly_24_description =>
      'Detects obsessive rumination, accusation, and punishment focused on perceived infidelity.';

  @override
  String get metric_ugly_25_name => 'Abandonment Panic Aggression';

  @override
  String get metric_ugly_25_description =>
      'Flags violent or aggressive responses to perceived abandonment or any separation attempt.';

  @override
  String get metric_ugly_26_name => 'Separation Threat Escalation';

  @override
  String get metric_ugly_26_description =>
      'Identifies extreme threats or dangerous behaviors triggered by breakup or separation attempts.';

  @override
  String get metric_ugly_27_name => 'Post-Separation Harassment Threats';

  @override
  String get metric_ugly_27_description =>
      'Flags threats of stalking, harm, or forced contact after the relationship ends.';

  @override
  String get metric_ugly_28_name => 'Custody Kidnapping Threats';

  @override
  String get metric_ugly_28_description =>
      'Identifies threats to take children and flee or hide them permanently from the other parent.';

  @override
  String get metric_ugly_29_name => 'Parental Alienation Agenda';

  @override
  String get metric_ugly_29_description =>
      'Flags systematic attempts to turn children against the other parent through manipulation.';

  @override
  String get metric_ugly_30_name => 'Child Witness Indifference';

  @override
  String get metric_ugly_30_description =>
      'Identifies disregard for children witnessing abuse, conflict, or emotional harm.';

  @override
  String get metric_ugly_31_name => 'Human Trafficking Language';

  @override
  String get metric_ugly_31_description =>
      'Identifies language suggesting selling, trading, or sexually exploiting the partner.';

  @override
  String get metric_ugly_32_name => 'Slavery Language';

  @override
  String get metric_ugly_32_description =>
      'Identifies language treating partner as property, slave, or wholly owned person without rights.';

  @override
  String get metric_ugly_33_name => 'Debt Bondage Threats';

  @override
  String get metric_ugly_33_description =>
      'Detects threats to trap partner through manufactured debt or financial obligation.';

  @override
  String get metric_ugly_34_name => 'Forced Labor Demands';

  @override
  String get metric_ugly_34_description =>
      'Flags demands for unpaid labor, servitude, or work under threat of harm or punishment.';

  @override
  String get metric_ugly_35_name => 'Exploitation Normalization';

  @override
  String get metric_ugly_35_description =>
      'Identifies framing severe exploitation as normal, deserved, consensual, or even beneficial.';

  @override
  String get metric_ugly_36_name => 'Vulnerability Targeting';

  @override
  String get metric_ugly_36_description =>
      'Identifies deliberate targeting of isolated, economically dependent, or psychologically vulnerable individuals.';

  @override
  String get metric_ugly_37_name => 'Trauma Bonding Engineering';

  @override
  String get metric_ugly_37_description =>
      'Detects deliberate creation of fear-relief cycles designed to create deep emotional dependency.';

  @override
  String get metric_ugly_38_name => 'Intermittent Reinforcement Abuse';

  @override
  String get metric_ugly_38_description =>
      'Flags unpredictable cycles of reward and severe punishment used to create psychological addiction.';

  @override
  String get metric_ugly_39_name => 'Learned Helplessness Induction';

  @override
  String get metric_ugly_39_description =>
      'Identifies systematic removal of agency, resources, and perceived escape options.';

  @override
  String get metric_ugly_40_name => 'Identity Erasure Language';

  @override
  String get metric_ugly_40_description =>
      'Flags demands to abandon personality, interests, appearance, or core sense of identity.';

  @override
  String get metric_ugly_41_name => 'Autonomy Annihilation';

  @override
  String get metric_ugly_41_description =>
      'Detects systematic elimination of independent thought, decision-making, or personal agency.';

  @override
  String get metric_ugly_42_name => 'Thought Control Tactics';

  @override
  String get metric_ugly_42_description =>
      'Flags demands to think, believe, or feel only as the controlling partner dictates.';

  @override
  String get metric_ugly_43_name => 'Emotional Numbness Enforcement';

  @override
  String get metric_ugly_43_description =>
      'Identifies punishment for showing emotions or explicit demands to suppress all feelings.';

  @override
  String get metric_ugly_44_name => 'Complex Trauma Creation';

  @override
  String get metric_ugly_44_description =>
      'Flags systematic patterns creating complex PTSD-level trauma through chronic abuse.';

  @override
  String get metric_ugly_45_name => 'Betrayal Trauma Infliction';

  @override
  String get metric_ugly_45_description =>
      'Identifies deliberate betrayal designed to shatter foundational trust and psychological safety.';

  @override
  String get metric_ugly_46_name => 'Moral Injury Language';

  @override
  String get metric_ugly_46_description =>
      'Detects forcing partner to violate their own deeply held values or commit harmful acts.';

  @override
  String get metric_ugly_47_name => 'Existential Threat Language';

  @override
  String get metric_ugly_47_description =>
      'Flags threats to partner\'s existence, core identity, sanity, or will to live.';

  @override
  String get metric_ugly_48_name => 'Suicide Coercion Language';

  @override
  String get metric_ugly_48_description =>
      'Identifies pushing partner toward suicidal ideation through sustained abuse and manufactured hopelessness.';

  @override
  String get metric_ugly_49_name => 'Justification Mythology';

  @override
  String get metric_ugly_49_description =>
      'Identifies elaborate invented narratives presented to justify abuse as necessary, deserved, or righteous.';

  @override
  String get metric_ugly_50_name => 'Victim Narrative Inversion';

  @override
  String get metric_ugly_50_description =>
      'Detects complete reversal where the abuser claims to be the real victim of their own abuse.';

  @override
  String get metric_ugly_51_name => 'Abuse Normalization Preaching';

  @override
  String get metric_ugly_51_description =>
      'Flags teaching or insisting that abuse is normal, healthy, or beneficial for the partner.';

  @override
  String get metric_ugly_52_name => 'Predatory Ideology';

  @override
  String get metric_ugly_52_description =>
      'Identifies ideological justification for exploitation, dominance, or harm toward the partner.';

  @override
  String get metric_ugly_53_name => 'Cult Leader Messaging';

  @override
  String get metric_ugly_53_description =>
      'Detects messaging claiming special knowledge, divine right, or superior authority over the partner.';

  @override
  String get metric_ugly_54_name => 'Grooming Timeline Language';

  @override
  String get metric_ugly_54_description =>
      'Flags references to a long-term manipulation plan or descriptions of a grooming progression.';

  @override
  String get metric_ugly_55_name => 'Chronic Humiliation Campaign';

  @override
  String get metric_ugly_55_description =>
      'Identifies sustained pattern of public or private humiliation designed to destroy self-worth.';

  @override
  String get metric_ugly_56_name => 'Safety Exit Blocking';

  @override
  String get metric_ugly_56_description =>
      'Detects actively preventing the partner from accessing escape routes, support systems, or safety resources.';

  @override
  String get metric_ugly_57_name => 'Document Confiscation Threats';

  @override
  String get metric_ugly_57_description =>
      'Flags threats or actions to take, hide, or destroy identity documents to prevent escape.';

  @override
  String get metric_ugly_58_name => 'Violent Jealousy Patterns';

  @override
  String get metric_ugly_58_description =>
      'Identifies jealousy that has escalated to explicit threats, surveillance, or violent retaliation.';

  @override
  String get metric_ugly_59_name => 'Rage Explosion Patterns';

  @override
  String get metric_ugly_59_description =>
      'Detects descriptions or patterns of explosive violent outbursts disproportionate to any trigger.';

  @override
  String get metric_ugly_60_name => 'Coercive Control Escalation';

  @override
  String get metric_ugly_60_description =>
      'Tracks increasing severity and breadth of coercive control tactics over time.';

  @override
  String get metric_ugly_61_name => 'Fear-Based Compliance Language';

  @override
  String get metric_ugly_61_description =>
      'Identifies compliance driven entirely by fear of violence or severe punishment rather than choice.';

  @override
  String get metric_ugly_62_name => 'Punishment Ritual Language';

  @override
  String get metric_ugly_62_description =>
      'Detects references to systematic punishment practices used to enforce compliance and control.';

  @override
  String get metric_ugly_63_name => 'Degradation Ritual Indicators';

  @override
  String get metric_ugly_63_description =>
      'Flags systematic degradation or humiliation rituals designed to destroy dignity.';

  @override
  String get metric_ugly_64_name => 'Non-Consensual Exposure Threats';

  @override
  String get metric_ugly_64_description =>
      'Identifies threats to expose intimate images, private information, or secrets without consent.';

  @override
  String get metric_ugly_65_name => 'Image-Based Abuse Threats';

  @override
  String get metric_ugly_65_description =>
      'Detects threats to distribute intimate images as revenge, punishment, or blackmail.';

  @override
  String get metric_ugly_66_name => 'Financial Entrapment Tactics';

  @override
  String get metric_ugly_66_description =>
      'Flags deliberate creation of financial dependency making independent survival impossible.';

  @override
  String get metric_ugly_67_name => 'Housing Threat Language';

  @override
  String get metric_ugly_67_description =>
      'Detects threats to make partner homeless, remove housing access, or destroy shelter security.';

  @override
  String get metric_ugly_68_name => 'Immigration Status Threats';

  @override
  String get metric_ugly_68_description =>
      'Identifies threats to report immigration status or revoke visa sponsorship as control.';

  @override
  String get metric_ugly_69_name => 'Religious or Spiritual Abuse';

  @override
  String get metric_ugly_69_description =>
      'Detects using religious authority, doctrine, or spiritual threat to control, punish, or harm.';

  @override
  String get metric_ugly_70_name => 'Cultural Shame Weaponization';

  @override
  String get metric_ugly_70_description =>
      'Flags threatening to expose behaviors to cultural or family community as punishment.';

  @override
  String get metric_ugly_71_name => 'Family Harm Threats';

  @override
  String get metric_ugly_71_description =>
      'Identifies threats to harm partner\'s family members, children, or loved ones as leverage.';

  @override
  String get metric_ugly_72_name => 'Coordinated Harassment Campaign';

  @override
  String get metric_ugly_72_description =>
      'Detects organizing others to collectively harass, stalk, or intimidate the partner.';

  @override
  String get metric_ugly_73_name => 'False Police Report Threats';

  @override
  String get metric_ugly_73_description =>
      'Flags threatening to make false police reports or legal accusations against the partner.';

  @override
  String get metric_ugly_74_name => 'Legal System Weaponization';

  @override
  String get metric_ugly_74_description =>
      'Identifies using legal processes, courts, or protective orders as weapons of harassment.';

  @override
  String get metric_ugly_75_name => 'Restraining Order Violation';

  @override
  String get metric_ugly_75_description =>
      'Detects references to violating or planning to violate protective or no-contact orders.';

  @override
  String get metric_ugly_76_name => 'Workplace Sabotage Threats';

  @override
  String get metric_ugly_76_description =>
      'Flags threats to contact employer, colleagues, or clients to destroy partner\'s livelihood.';

  @override
  String get metric_ugly_77_name => 'Social Annihilation Threats';

  @override
  String get metric_ugly_77_description =>
      'Detects threats to destroy partner\'s reputation, relationships, and social standing.';

  @override
  String get metric_ugly_78_name => 'Systematic Deception Campaign';

  @override
  String get metric_ugly_78_description =>
      'Identifies long-term elaborate deception designed to exploit the partner financially or emotionally.';

  @override
  String get metric_ugly_79_name => 'Property Destruction as Terror';

  @override
  String get metric_ugly_79_description =>
      'Identifies deliberate destruction of partner\'s property as an intimidation tactic.';

  @override
  String get metric_ugly_80_name => 'Animal Cruelty as Proxy Terror';

  @override
  String get metric_ugly_80_description =>
      'Detects harming or threatening pets to demonstrate capacity for violence to partner.';

  @override
  String get metric_ugly_81_name => 'Child Endangerment Language';

  @override
  String get metric_ugly_81_description =>
      'Flags placing children in dangerous situations or threatening to do so as leverage.';

  @override
  String get metric_ugly_82_name => 'Disability-Based Control';

  @override
  String get metric_ugly_82_description =>
      'Detects exploiting partner\'s disability by controlling access to medication, mobility, or care.';

  @override
  String get metric_ugly_83_name => 'Crisis Manufactured Control';

  @override
  String get metric_ugly_83_description =>
      'Flags deliberately creating emergencies or crises to increase partner dependency or justify monitoring.';

  @override
  String get metric_ugly_84_name => 'Isolation from Emergency Services';

  @override
  String get metric_ugly_84_description =>
      'Identifies actively preventing partner from calling police, ambulance, or crisis services.';

  @override
  String get metric_ugly_85_name => 'Threat Escalation Trajectory';

  @override
  String get metric_ugly_85_description =>
      'Tracks measurable increase in severity, specificity, or frequency of threats over time.';

  @override
  String get metric_ugly_86_name => 'Lethality Assessment Indicators';

  @override
  String get metric_ugly_86_description =>
      'Flags combinations of factors associated with highest risk of intimate partner homicide.';

  @override
  String get metric_ugly_87_name => 'Psychological Torture Tactics';

  @override
  String get metric_ugly_87_description =>
      'Identifies sustained psychological abuse designed to break the partner\'s mental stability.';

  @override
  String get metric_ugly_88_name => 'Captivity Language';

  @override
  String get metric_ugly_88_description =>
      'Detects references to holding partner captive, preventing departure, or controlling all movement.';

  @override
  String get metric_ugly_89_name => 'Targeted Violence Planning';

  @override
  String get metric_ugly_89_description =>
      'Detects any language indicating planning, preparation, or countdown to violence against partner.';

  @override
  String get metric_ugly_90_name => 'Third Party Threat Recruitment';

  @override
  String get metric_ugly_90_description =>
      'Identifies recruiting friends, family, or others to threaten or harm the partner.';

  @override
  String get metric_ugly_91_name => 'Suicidal Ideation Exploitation';

  @override
  String get metric_ugly_91_description =>
      'Flags exploiting partner\'s suicidal crisis as leverage or to prevent them seeking help.';

  @override
  String get metric_ugly_92_name => 'Poisoning or Drugging Threats';

  @override
  String get metric_ugly_92_description =>
      'Detects threats or references to drugging, poisoning, or tampering with partner\'s food or drink.';

  @override
  String get metric_ugly_93_name => 'Non-Suicidal Self-Harm Exploitation';

  @override
  String get metric_ugly_93_description =>
      'Flags exploiting partner\'s self-harm behavior as leverage, mockery, or further control.';

  @override
  String get metric_ugly_94_name => 'Dissociation Induction Language';

  @override
  String get metric_ugly_94_description =>
      'Detects patterns designed to cause dissociation, detachment, or depersonalization in the partner.';

  @override
  String get metric_ugly_95_name => 'Cognitive Distortion Implanting';

  @override
  String get metric_ugly_95_description =>
      'Detects deliberate installation of false beliefs about self, reality, or the partner\'s own sanity.';

  @override
  String get metric_ugly_96_name => 'Medical Care Obstruction';

  @override
  String get metric_ugly_96_description =>
      'Detects preventing access to medication, doctors, hospitals, or health treatment.';

  @override
  String get metric_ugly_97_name => 'Extremist Threat Language';

  @override
  String get metric_ugly_97_description =>
      'Flags language borrowed from extremist or violent ideological frameworks applied toward the partner.';

  @override
  String get metric_ugly_98_name => 'Post-Separation Stalking Signals';

  @override
  String get metric_ugly_98_description =>
      'Detects threats, surveillance language, or intimidation tactics following or anticipating a breakup.';

  @override
  String get metric_ugly_99_name => 'Child Weaponization';

  @override
  String get metric_ugly_99_description =>
      'Identifies using children as pawns, threats regarding custody, or leveraging parental bonds as control mechanisms.';

  @override
  String get metric_ugly_100_name => 'Systematic Dehumanization';

  @override
  String get metric_ugly_100_description =>
      'Detects sustained language that strips the partner of personhood, dignity, or their right to basic humanity.';
}
