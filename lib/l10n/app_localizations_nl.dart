// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'AI-Relatietoxiciteitsanalysator';

  @override
  String get psychologicalMetrics => 'Psychologische Metingen';

  @override
  String get metricsDescription =>
      'Minder geselecteerde metingen leveren een diepere, meer geconcentreerde analyse van dat gedrag op. Meer geselecteerde metingen leveren een breder rapport op met minder detail per meting.';

  @override
  String get selectSMS => 'SMS / RCS Chat selecteren';

  @override
  String get selectDiscordChannel => 'Discord-kanaal selecteren';

  @override
  String get lightMode => 'Licht';

  @override
  String get darkMode => 'Donker';

  @override
  String get discordSetupTitle => 'Discord Instellen';

  @override
  String get discordSetupDescription =>
      'Volg deze stappen om Discord-kanaalanalyse in de app in te schakelen:';

  @override
  String get discordStep1Title => 'Maak een Discord Bot';

  @override
  String get discordStep1Description =>
      'Ga naar discord.com/developers, maak een nieuwe applicatie en voeg een bot toe. Kopieer de bot-token.';

  @override
  String get discordStep2Title => 'Bot-rechten Inschakelen';

  @override
  String get discordStep2Description =>
      'Schakel in de bot-instellingen \'Message Content Intent\' en \'Server Members Intent\' in.';

  @override
  String get discordStep3Title => 'Nodig Bot uit naar Server';

  @override
  String get discordStep3Description =>
      'Gebruik de OAuth2-URL-generator om de bot met de benodigde rechten naar uw Discord-server uit te nodigen.';

  @override
  String get discordStep4Title => 'Configureren in App';

  @override
  String get discordStep4Description =>
      'Voer uw bot-token in de app-instellingen in (neem contact op met support als u hulp nodig heeft).';

  @override
  String get discordStep5Title => 'Kanaal Selecteren';

  @override
  String get discordStep5Description =>
      'Tik op \'Discord-kanaal Selecteren\', kies uw server en selecteer vervolgens het kanaal om te analyseren.';

  @override
  String get gotIt => 'Begrepen';

  @override
  String get selectFile => 'Bestand selecteren';

  @override
  String get analyzeSelectedMetrics => 'Geselecteerde metingen analyseren';

  @override
  String get analyze20RandomMetrics => '20 willekeurige metingen analyseren';

  @override
  String get membershipOptions => 'Lidmaatschapsopties';

  @override
  String get free => 'Gratis';

  @override
  String get oneTimeUnlock => 'Eenmalige rapportontgrendeling';

  @override
  String get standard => 'Standaard';

  @override
  String get discordAddon => 'Discord-add-on';

  @override
  String get analyze => 'Analyseren';

  @override
  String get report => 'Rapport';

  @override
  String get pdfReport => 'PDF-rapport';

  @override
  String get openPdf => 'PDF openen';

  @override
  String get sharePdf => 'PDF delen';

  @override
  String get printPdf => 'PDF afdrukken';

  @override
  String get closePdfPreview => 'PDF-voorbeeldvenster sluiten';

  @override
  String get openPdfPreview => 'PDF-voorbeeldvenster openen';

  @override
  String get pdfPreviewDescription =>
      'Het ingebedde PDF-venster start gesloten om het rapport compact te houden.';

  @override
  String get notNow => 'Niet nu';

  @override
  String get unlockThisReport => 'Dit rapport ontgrendelen - \$20';

  @override
  String get joinStandard => 'Word lid van Standaard - \$9.99/maand';

  @override
  String get instantUnlockTitle => 'Directe rapportontgrendeling - \$20';

  @override
  String get instantUnlockDescription =>
      'Dit is een eenmalige aankoop om alleen het huidige rapport te ontgrendelen. Geen abonnement vereist. Toekomstige rapporten vereisen aparte ontgrendelingen of een lidmaatschap.\n\nDoorgaan met betaling?';

  @override
  String get purchaseFor20 => 'Kopen voor \$20';

  @override
  String get share => 'Delen';

  @override
  String get print => 'Afdrukken';

  @override
  String get save => 'Opslaan';

  @override
  String get cancel => 'Annuleren';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fout';

  @override
  String get success => 'Gelukt';

  @override
  String get conversations => 'Gesprekken';

  @override
  String get messages => 'Berichten';

  @override
  String get selectConversation => 'Gesprek selecteren';

  @override
  String get selectSmsConversation => 'SMS / RCS Chat selecteren';

  @override
  String get searchConversations => 'Gesprekken zoeken...';

  @override
  String get loadingConversations => 'Gesprekken laden...';

  @override
  String get errorLoadingConversations => 'Fout bij het laden van gesprekken';

  @override
  String get selectConversationToAnalyze =>
      'Selecteer een gesprek om te analyseren';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analyseren met de geselecteerde metingen';

  @override
  String get loadConversationAndSelectMetric =>
      'Laad een gesprek en selecteer ten minste één meting';

  @override
  String get selectAtLeastOneMetric =>
      'Er moet ten minste één meting worden geselecteerd om het rapport uit te voeren.';

  @override
  String get spinningMetricWheel => 'Het metingswiel draait...';

  @override
  String get loadConversationToAnalyze => 'Laad een gesprek om te analyseren';

  @override
  String get noConversationsFound => 'Geen gesprekken gevonden';

  @override
  String get permissionsRequired => 'Machtigingen vereist';

  @override
  String get smsPermission => 'Tekstberichten';

  @override
  String get contactsPermission => 'Contacten';

  @override
  String get smsPermissionDescription =>
      'Om uw SMS-gesprekken te analyseren op relatiepatronen';

  @override
  String get contactsPermissionDescription =>
      'Om contactnamen weer te geven in plaats van telefoonnummers';

  @override
  String get analyzingMessage =>
      'Even geduld terwijl uw psychologische analyse door AI wordt gegenereerd...';

  @override
  String get analyzingStatus => 'Gesprek analyseren...';

  @override
  String get analyzingSubMessage =>
      'Heb geduld, dit proces kan tot een minuut duren, afhankelijk van uw verbindingssnelheid en het aantal geselecteerde metingen';

  @override
  String get unlockFullReport => 'Ontgrendel en toon dit hele rapport';

  @override
  String get fullReportLocked => 'Volledig rapport vergrendeld';

  @override
  String get upgradeToUnlock =>
      'Upgrade uw lidmaatschap om het volledige psychologische analyserapport te ontgrendelen met alle metingen en gedetailleerde inzichten.';

  @override
  String get language => 'Taal';

  @override
  String get english => 'Engels';

  @override
  String get spanish => 'Spaans';

  @override
  String get french => 'Frans';

  @override
  String get german => 'Duits';

  @override
  String get italian => 'Italiaans';

  @override
  String get portuguese => 'Portugees';

  @override
  String get dutch => 'Nederlands';

  @override
  String get russian => 'Russisch';

  @override
  String get chinese => 'Chinees';

  @override
  String get japanese => 'Japans';

  @override
  String get korean => 'Koreaans';

  @override
  String get arabic => 'Arabisch';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turks';

  @override
  String get polish => 'Pools';

  @override
  String get ukrainian => 'Oekraïens';

  @override
  String get runAnotherAnalysis => 'Nog een analyse uitvoeren?';

  @override
  String get becomeMemberTitle =>
      'Word lid om het volledige analyserapport te krijgen';

  @override
  String get becomeMemberSubtitle =>
      'Kies het toegangsniveau dat past bij de gesprekken en rapporten die u wilt analyseren.';

  @override
  String get benefitAnalyzeSms => 'SMS-tekstberichten analyseren';

  @override
  String get benefitReportPreview => 'Een rapportvoorbeeld uitvoeren';

  @override
  String get benefitViewPartialReport =>
      'Ongeveer 25% van het rapport bekijken';

  @override
  String get benefitLockedDetails => 'Volledige rapportdetails vergrendeld';

  @override
  String get currentFreeAccess => 'Huidige gratis toegang';

  @override
  String get benefitUnlockCurrentReport => 'Dit volledige rapport ontgrendelen';

  @override
  String get benefitNoSubscription => 'Geen abonnement';

  @override
  String get benefitSavePrintShareThis =>
      'Dit rapport opslaan, afdrukken en delen';

  @override
  String get benefitBestSingleAnalysis =>
      'Ideaal als u maar één analyse nodig heeft';

  @override
  String get unlockThisReportShort => 'Dit rapport ontgrendelen';

  @override
  String get benefitFullSmsReport => 'Volledig SMS-analyserapport';

  @override
  String get benefitSavePrintSharePdf =>
      'PDF-rapporten opslaan, afdrukken en delen';

  @override
  String get benefitTenReports => '10 rapporten per periode van 24 uur';

  @override
  String get benefitBestTextReview =>
      'Ideaal voor het beoordelen van relaties via sms';

  @override
  String get benefitDateRangeFilter => 'Analyse filteren op datumbereik';

  @override
  String get signUpStandard => 'Aanmelden voor Standaard-lidmaatschap';

  @override
  String get benefitAddToStandard => 'Toevoegen aan Standaard-lidmaatschap';

  @override
  String get benefitAnalyzeDiscord => 'Discord-serverchats analyseren';

  @override
  String get benefitRequiresBot => 'Vereist botinstallatie';

  @override
  String get benefitBestGamers => 'Ideaal voor gamers en Discord-communities';

  @override
  String get addDiscordAnalysis => 'Discord-analyse toevoegen';

  @override
  String get requiresStandardMembership => 'Vereist Standaard-lidmaatschap';

  @override
  String get comingSoon => 'Binnenkort';

  @override
  String get comingSoonWithNextUpdate => 'Binnenkort met de volgende update:';

  @override
  String get proMembershipTier => 'Pro-lidmaatschapsniveau - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus-lidmaatschapsniveau - \$24.99';

  @override
  String get proGetsLabel => 'Pro omvat:';

  @override
  String get proGetsDescription =>
      'Analyseer chatgesprekken van alle andere populaire berichten- en socialemediaplatforms zoals:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-mail en agenda';

  @override
  String get proPlusGetsLabel => 'Pro-Plus omvat:';

  @override
  String get proPlusGetsDescription =>
      'Alles van Pro, plus de Discord-add-on tegen een gereduceerde prijs.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Aankoop geslaagd! Rapport ontgrendeld.';

  @override
  String get purchaseFailed => 'Aankoop mislukt. Probeer het opnieuw.';

  @override
  String get membershipActivated => 'Lidmaatschap geactiveerd!';

  @override
  String get dateRangeFilter => 'Datumbereik Filter';

  @override
  String get dateRangeOptional => '(optioneel)';

  @override
  String get startDate => 'Startdatum';

  @override
  String get endDate => 'Einddatum';

  @override
  String get clear => 'Wissen';

  @override
  String get dateRangeRequiresMembership =>
      'Vereist Standard-lidmaatschap of hoger';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Selecteer tot $max. Huidig: $current';
  }

  @override
  String get clearSelections => 'Selecties wissen';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analyseer $count willekeurige metrieken';
  }

  @override
  String get saveSelections => 'Selecties Opslaan';

  @override
  String get loadSelections => 'Selecties Laden';

  @override
  String get saveMetricListName => 'Metriek-lijst Opslaan';

  @override
  String get enterListName => 'Voer een naam in voor deze metriek-lijst:';

  @override
  String get chooseSavedMetrics => 'Kies de opgeslagen metriek-lijst:';

  @override
  String get noSavedLists =>
      'Geen opgeslagen metriek-lijsten om te laden op dit moment.';

  @override
  String get metricListSaved => 'Metriek-lijst succesvol opgeslagen.';

  @override
  String get metricListLoaded => 'Metriek-lijst succesvol geladen.';

  @override
  String get filters => 'Filters';

  @override
  String get sortBy => 'Sorteren op:';

  @override
  String get recent => 'Recent';

  @override
  String get name => 'Naam';

  @override
  String get count => 'Aantal';

  @override
  String get namedOnly => 'Alleen met naam';

  @override
  String get minMessages => 'Min. berichten:';

  @override
  String get minimumMessages => 'Minimum aan berichten:';

  @override
  String get executiveSummary => 'Samenvatting';

  @override
  String get metricScores => 'Metriek Scores';

  @override
  String get contextualEvidenceExamples => 'Contextuele Voorbeelden';

  @override
  String get neutralSynthesis => 'Neutrale Synthese';

  @override
  String analysisOfSender(Object sender) {
    return 'Analyse van $sender (Afzender)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analyse van $receiver (Ontvanger)';
  }

  @override
  String get finalConclusion => 'Eindconclusie';

  @override
  String get metric_1_name => 'Minachting';

  @override
  String get metric_1_description =>
      'Zoekt naar superioriteit, walging, spot, oprol-ogen taal of beledigingen die één partner onder de andere plaatsen.';

  @override
  String get metric_2_name => 'Defensiviteit';

  @override
  String get metric_2_description =>
      'Volgt reflexieve zelfbescherming, tegenaanvallen, excuses en weigering om de klacht van de andere persoon te overwegen.';

  @override
  String get metric_3_name => 'Blokkeren';

  @override
  String get metric_3_description =>
      'Identificeert afsluiting, terugtrekking, negeren, weigering om te antwoorden of beëindigen van gesprekken om betrokkenheid te vermijden.';

  @override
  String get metric_4_name => 'Kritiek';

  @override
  String get metric_4_description =>
      'Detecteert aanvallen op karakter of persoonlijkheid in plaats van specifiek gedrag, behoeften of incidenten.';

  @override
  String get metric_5_name => 'Gaslighting Indicatoren';

  @override
  String get metric_5_description =>
      'Markeert pogingen om iemand te laten twijfelen aan geheugen, waarneming, geestelijke gezondheid of legitimiteit van hun ervaring.';

  @override
  String get metric_6_name => 'Schuldverschuiving';

  @override
  String get metric_6_description =>
      'Meet of verantwoordelijkheid wordt omgeleid naar de andere partner in plaats van direct erkend te worden.';

  @override
  String get metric_7_name => 'Escalatiepatroon';

  @override
  String get metric_7_description =>
      'Evalueert of toon, beschuldigingen, intensiteit of dreigingen toenemen in plaats van naar oplossing te bewegen.';

  @override
  String get metric_8_name => 'Herkenning van Reparatiepogingen';

  @override
  String get metric_8_description =>
      'Controleert of excuses, humor, pauzes, geruststelling of vredesaanbiedingen worden opgemerkt en geaccepteerd.';

  @override
  String get metric_9_name => 'Verantwoordingsbesef Taal';

  @override
  String get metric_9_description =>
      'Zoekt naar duidelijke eigendom van schade, specifieke verantwoordelijkheid en bereidheid om gedrag te veranderen.';

  @override
  String get metric_10_name => 'Grenzenrespect';

  @override
  String get metric_10_description =>
      'Beoordeelt of gestelde grenzen rond tijd, privacy, lichaam, emoties of contact worden geëerd.';

  @override
  String get metric_11_name => 'Coercieve Controle Indicatoren';

  @override
  String get metric_11_description =>
      'Markeert patronen van intimidatie, beperking, monitoring, afhankelijkheid of controle over keuzes en bewegingen.';

  @override
  String get metric_12_name => 'Dreigende Taal';

  @override
  String get metric_12_description =>
      'Identificeert expliciete of impliciete dreigingen die veiligheid, verlating, blootstelling, vergelding of straf betreffen.';

  @override
  String get metric_13_name => 'Afwijzing';

  @override
  String get metric_13_description =>
      'Detecteert wegwuiven van zorgen, behandelen van behoeften als onbelangrijk of weigeren om nood serieus te nemen.';

  @override
  String get metric_14_name => 'Ongeldigverklaring';

  @override
  String get metric_14_description =>
      'Meet ontkenning, spot of correctie van de emoties van een andere persoon in plaats van ze te erkennen.';

  @override
  String get metric_15_name => 'Empathie Expressie';

  @override
  String get metric_15_description =>
      'Zoekt naar perspectiefneming, zorg, emotionele erkenning en bezorgdheid om de ervaring van de andere persoon.';

  @override
  String get metric_16_name => 'Reciprociteit';

  @override
  String get metric_16_description =>
      'Beoordeelt of aandacht, inspanning, excuses, compromis en emotionele ondersteuning in beide richtingen stromen.';

  @override
  String get metric_17_name => 'Emotionele Regulatie';

  @override
  String get metric_17_description =>
      'Evalueert vermogen om gegrond te blijven, te pauzeren, zichzelf te kalmeren en te communiceren zonder explosieve reactiviteit.';

  @override
  String get metric_18_name => 'Sarcasme Gebruikt als Schade';

  @override
  String get metric_18_description =>
      'Markeert sarcasme gebruikt om te vernederen, straffen, vernederen of vijandigheid te verbergen als humor.';

  @override
  String get metric_19_name => 'Namen noemen';

  @override
  String get metric_19_description =>
      'Identificeert denigrerende labels, beledigingen, grove taal gericht op de persoon of identiteitsgebaseerde aanvallen.';

  @override
  String get metric_20_name => 'Stiltebehandelingspatroon';

  @override
  String get metric_20_description =>
      'Volgt stilte gebruikt als straf, controle, vermijding of terugtrekking van verbinding.';

  @override
  String get metric_21_name => 'Jaloezie Kader';

  @override
  String get metric_21_description =>
      'Evalueert verdenking, bezitterigheid, beschuldigingen of jaloezie gepresenteerd als bewijs van zorg.';

  @override
  String get metric_22_name => 'Isolatiedruk';

  @override
  String get metric_22_description =>
      'Markeert inspanningen om een partner te scheiden van vrienden, familie, ondersteuningssystemen of externe perspectieven.';

  @override
  String get metric_23_name => 'Financiële Controle Indicatoren';

  @override
  String get metric_23_description =>
      'Zoekt naar controle van geld, uitgaven, werkgelegenheid, toegang tot rekeningen of financiële onafhankelijkheid.';

  @override
  String get metric_24_name => 'Privacy Schending Indicatoren';

  @override
  String get metric_24_description =>
      'Detecteert snuffelen, wachtwoordeisen, apparaatcontroles, locatietracking of privacyschendingen.';

  @override
  String get metric_25_name => 'Specifiekheid van Excuses';

  @override
  String get metric_25_description =>
      'Meet of excuses de exacte schade, impact en toekomstige correctie noemen in plaats van vaag te blijven.';

  @override
  String get metric_26_name => 'Vergevingsdruk';

  @override
  String get metric_26_description =>
      'Markeert eisen om door te gaan, snel te vergeven of te stoppen met bespreken van schade voordat reparatie plaatsvindt.';

  @override
  String get metric_27_name => 'Minimalisering';

  @override
  String get metric_27_description =>
      'Detecteert bagatelliseren van schade, noemen van serieuze zorgen dramatisch of verminderen van impact om verantwoordelijkheid te vermijden.';

  @override
  String get metric_28_name => 'Projectie';

  @override
  String get metric_28_description =>
      'Zoekt naar beschuldigingen die het eigen gedrag, motieven of onopgeloste gevoelens van de spreker weerspiegelen.';

  @override
  String get metric_29_name => 'Onderbrekingspatroon';

  @override
  String get metric_29_description =>
      'Volgt afkappen, over iemand heen praten, weigeren te voltooien of controleren van gespreksbeurten.';

  @override
  String get metric_30_name => 'Onderwerp Afleiding';

  @override
  String get metric_30_description =>
      'Identificeert veranderen van onderwerp, brengen van niet-gerelateerde problemen of vermijden van de centrale zorg.';

  @override
  String get metric_31_name => 'Resolutieoriëntatie';

  @override
  String get metric_31_description =>
      'Meet of berichten gericht zijn op oplossingen, duidelijkheid, overeenkomsten en volgende stappen.';

  @override
  String get metric_32_name => 'Mutuele Probleemoplossing';

  @override
  String get metric_32_description =>
      'Beoordeelt collaboratieve taal, gedeelde verantwoordelijkheid, brainstorming en bereidheid om werkbare compromissen te vinden.';

  @override
  String get metric_33_name => 'Emotionele Overstroming';

  @override
  String get metric_33_description =>
      'Detecteert overweldiging, paniek, afsluiting, spiraal of onvermogen om te verwerken tijdens conflict.';

  @override
  String get metric_34_name => 'Angstreactie Signalen';

  @override
  String get metric_34_description =>
      'Zoekt naar sussen, voorzichtig woordgebruik, angst, veiligheidszorgen of angst voor de reactie van de partner.';

  @override
  String get metric_35_name => 'Consistentie van Claims';

  @override
  String get metric_35_description =>
      'Evalueert of verslagen intern consistent blijven over berichten en tijd heen.';

  @override
  String get metric_36_name => 'Evidence-Based Herinnering';

  @override
  String get metric_36_description =>
      'Controleert of claims verwijzen naar concrete gebeurtenissen, citaten, tijdlijnen of observeerbaar gedrag.';

  @override
  String get metric_37_name => 'Vraag Terugtrekingspatroon';

  @override
  String get metric_37_description =>
      'Volgt één partner die antwoorden of verandering zoekt terwijl de andere vermijdt, afsluit of weggaat.';

  @override
  String get metric_38_name => 'Macht Onbalans Indicatoren';

  @override
  String get metric_38_description =>
      'Markeert ongelijke beslissingsmacht, angst voor gevolgen, afhankelijkheid, intimidatie of unilaterale controle.';

  @override
  String get metric_39_name => 'Respectvol Oneens';

  @override
  String get metric_39_description =>
      'Meet of conflict waardigheid, nieuwsgierigheid en oneenigheid behoudt zonder degradatie.';

  @override
  String get metric_40_name => 'Breuk en Reparatie Cyclus';

  @override
  String get metric_40_description =>
      'Beoordeelt of conflict wordt gevolgd door erkenning, herverbinding en daadwerkelijke reparatie.';

  @override
  String get metric_41_name => 'Genegenheid Terugtrekking';

  @override
  String get metric_41_description =>
      'Detecteert liefde, warmte, seks, aandacht of geruststelling die worden ingehouden als straf of hefboom.';

  @override
  String get metric_42_name => 'Openbare Vernediging Referenties';

  @override
  String get metric_42_description =>
      'Markeert dreigingen, grappen of acties die de partner voor anderen in verlegenheid brengen.';

  @override
  String get metric_43_name => 'Stof-Gelinkte Conflict Signalen';

  @override
  String get metric_43_description =>
      'Zoekt naar alcohol- of druggebruik gekoppeld aan agressie, onbetrouwbaarheid, conflict of schade.';

  @override
  String get metric_44_name => 'Ouderlijk Conflictdruk';

  @override
  String get metric_44_description =>
      'Identificeert kinderen, voogdij, ouderlijke rollen of ouderlijke schuld gebruikt in conflict of hefboom.';

  @override
  String get metric_45_name => 'Seksuele Grenzenrespect';

  @override
  String get metric_45_description =>
      'Beoordeelt respect voor toestemming, druk, weigering, comfort, timing en seksuele autonomie.';

  @override
  String get metric_46_name => 'Digitale Intimidatie Indicatoren';

  @override
  String get metric_46_description =>
      'Volgt herhaalde ongewenste berichten, spam-oproepen, online druk, surveillance of platform-gebaseerde intimidatie.';

  @override
  String get metric_47_name => 'Monitoring of Surveillance Taal';

  @override
  String get metric_47_description =>
      'Markeert controleren van verblijfplaats, eisen van bewijs, volgen van gedrag of constante verificatie.';

  @override
  String get metric_48_name => 'Toekomstoriëntatie';

  @override
  String get metric_48_description =>
      'Meet of partners toekomstige verbetering, verplichtingen, plannen of constructieve richting bespreken.';

  @override
  String get metric_49_name => 'Veiligheidsplanning Signalen';

  @override
  String get metric_49_description =>
      'Zoekt naar pogingen om hulp te zoeken, afstand te creëren, schade te documenteren of te plannen voor fysieke/emotionele veiligheid.';

  @override
  String get metric_50_name => 'Mutuele De-escalatie Pogingen';

  @override
  String get metric_50_description =>
      'Volgt pauzes, kalmerende taal, zachtere toon, timeouts en pogingen van beide partners om intensiteit te verminderen.';

  @override
  String get metric_51_name => 'Veilige Hechting Signalen';

  @override
  String get metric_51_description =>
      'Identificeert vertrouwen, directe geruststelling, emotionele beschikbaarheid en comfort met nabijheid en onafhankelijkheid.';

  @override
  String get metric_52_name => 'Angstige Hechting Activatie';

  @override
  String get metric_52_description =>
      'Markeert protestgedrag, dringende geruststellingsbehoeften, verlatingsangst en verhoogde gevoeligheid voor afstand.';

  @override
  String get metric_53_name => 'Vermijdende Hechting Afstand';

  @override
  String get metric_53_description =>
      'Detecteert emotionele minimalisering, onafhankelijkheidsverdedigingen, terugtrekking uit kwetsbaarheid of ongemak met behoeften.';

  @override
  String get metric_54_name => 'Gedesorganiseerde Hechting Signalen';

  @override
  String get metric_54_description =>
      'Zoekt naar nadering-vermijd cycli, angst gemengd met behoefte, chaotische reacties of verwarrende intimiteitspatronen.';

  @override
  String get metric_55_name => 'Emotionele Biedingen en Reacties';

  @override
  String get metric_55_description =>
      'Meet uitnodigingen voor aandacht, comfort of verbinding en of ze worden geaccepteerd of gemist.';

  @override
  String get metric_56_name => 'Afkeren van Verbinding';

  @override
  String get metric_56_description =>
      'Markeert negeren, afwijzen of falen om te reageren op biedingen voor nabijheid of ondersteuning.';

  @override
  String get metric_57_name => 'Tegen Verbinding Keren';

  @override
  String get metric_57_description =>
      'Detecteert vijandige of bestraffende reacties op pogingen tot genegenheid, kwetsbaarheid of reparatie.';

  @override
  String get metric_58_name => 'Positieve Sentiment Overschrijving';

  @override
  String get metric_58_description =>
      'Zoekt naar gulheid, voordeel van de twijfel, genegenheid en interpreteren van conflict door zorg.';

  @override
  String get metric_59_name => 'Negatieve Sentiment Overschrijving';

  @override
  String get metric_59_description =>
      'Markeert aannemen van slechte bedoelingen, negatief interpreteren van neutrale berichten en aanhoudend vijandig kader.';

  @override
  String get metric_60_name => 'Hard Startpatroon';

  @override
  String get metric_60_description =>
      'Identificeert gesprekken die beginnen met beschuldiging, aanval, minachting of schuld in plaats van een verzoek.';

  @override
  String get metric_61_name => 'Zacht Startpatroon';

  @override
  String get metric_61_description =>
      'Zoekt naar zachte openingen met behulp van gevoelens, behoeften, specifieke verzoeken en niet-beschuldigende taal.';

  @override
  String get metric_62_name => 'Fysiologische Zelfkalmering';

  @override
  String get metric_62_description =>
      'Beoordeelt pogingen om te pauzeren, te ademen, ruimte te nemen of het lichaam te reguleren voordat conflict wordt voortgezet.';

  @override
  String get metric_63_name => 'Conflictvermijdingspatroon';

  @override
  String get metric_63_description =>
      'Volgt herhaalde vermijding van noodzakelijke onderwerpen, ongemak, oneenigheid of emotionele eerlijkheid.';

  @override
  String get metric_64_name => 'Volatile Conflictstijl';

  @override
  String get metric_64_description =>
      'Detecteert conflict met hoge intensiteit met directe expressie die nog steeds betrokkenheid en reparatie kan omvatten.';

  @override
  String get metric_65_name => 'Validerende Conflictstijl';

  @override
  String get metric_65_description =>
      'Meet of partners het perspectief van elkaar erkennen terwijl ze oneens zijn.';

  @override
  String get metric_66_name => 'Vijandige Conflictstijl';

  @override
  String get metric_66_description =>
      'Markeert frequente kritiek, minachting, defensiviteit, aanvallen en adversair kader.';

  @override
  String get metric_67_name => 'Vijandig-Detacheerd Patroon';

  @override
  String get metric_67_description =>
      'Identificeert koude vijandigheid, emotionele desengagement, minachting en lage reparatiemotivatie.';

  @override
  String get metric_68_name => 'Compromisbereidheid';

  @override
  String get metric_68_description =>
      'Zoekt naar flexibiliteit, onderhandeling, middenwegvoorstellen en offers die beide behoeften respecteren.';

  @override
  String get metric_69_name => 'Invloed Acceptatie';

  @override
  String get metric_69_description =>
      'Meet openheid om beïnvloed te worden door de gevoelens, behoeften of het perspectief van de partner.';

  @override
  String get metric_70_name => 'Vastgelopen Conflict Signalen';

  @override
  String get metric_70_description =>
      'Markeert herhaalde onopgeloste problemen gekoppeld aan waarden, dromen, identiteit of chronische incompatibiliteit.';

  @override
  String get metric_71_name => 'Oplosbaar Probleem Kader';

  @override
  String get metric_71_description =>
      'Detecteert praktische, concrete probleemdefinities die kunnen leiden tot specifieke overeenkomsten.';

  @override
  String get metric_72_name => 'Gedeelde Betekenis Referenties';

  @override
  String get metric_72_description =>
      'Zoekt naar waarden, rituelen, doelen, herinneringen of identiteitstaal die een gedeeld relatieverhaal creëert.';

  @override
  String get metric_73_name => 'Liefdekaart Bewustzijn';

  @override
  String get metric_73_description =>
      'Beoordeelt kennis van de binnenwereld, stressoren, voorkeuren, angsten en dagelijks leven van de partner.';

  @override
  String get metric_74_name => 'Genegenheid en Bewondering';

  @override
  String get metric_74_description =>
      'Identificeert waardering, respect, warmte, complimenten, dankbaarheid en positieve beschouwing.';

  @override
  String get metric_75_name => 'Emotionele Arbeid Onbalans';

  @override
  String get metric_75_description =>
      'Markeert één partner die onevenredige planning, kalmering, herinnering, uitleg of relatieonderhoud draagt.';

  @override
  String get metric_76_name => 'Mentale Last Afwijzing';

  @override
  String get metric_76_description =>
      'Detecteert minimaliseren van onzichtbare planning, huishoudelijke coördinatie, planning of verantwoordelijkheidsvolgen.';

  @override
  String get metric_77_name => 'Gewapende Onbekwaamheid Signalen';

  @override
  String get metric_77_description =>
      'Zoekt naar claimen van onvermogen, verwarring of hulpeloosheid om eerlijke verantwoordelijkheid te vermijden.';

  @override
  String get metric_78_name => 'Trauma Trigger Gevoeligheid';

  @override
  String get metric_78_description =>
      'Meet bewustzijn van triggers, trauma-reacties en voorzichtig omgaan met kwetsbare onderwerpen.';

  @override
  String get metric_79_name => 'Hypervigilantie Signalen';

  @override
  String get metric_79_description =>
      'Markeert scannen naar gevaar, over-monitoring van toon, angst voor fouten of constante emotionele alertheid.';

  @override
  String get metric_80_name => 'Verlatingsangst Taal';

  @override
  String get metric_80_description =>
      'Detecteert angst om achtergelaten, vervangen, genegeerd, weggegooid of emotioneel verlaten te worden.';

  @override
  String get metric_81_name => 'Geruststelling Zoekend Patroon';

  @override
  String get metric_81_description =>
      'Volgt herhaalde verzoeken om bewijs van liefde, toewijding, veiligheid of voortgezet belang.';

  @override
  String get metric_82_name => 'Achtervolger-Distanciërder Cyclus';

  @override
  String get metric_82_description =>
      'Identificeert één partner die achtervolging voor nabijheid escaleert terwijl de andere afstand vergroot.';

  @override
  String get metric_83_name => 'Wrok Accumulatie';

  @override
  String get metric_83_description =>
      'Zoekt naar opgeslagen grieven, herhaalde verledenreferenties, bitterheid en onopgeloste emotionele schuld.';

  @override
  String get metric_84_name => 'Puntentellen Gedrag';

  @override
  String get metric_84_description =>
      'Markeert transactioneel tellen van fouten, gunsten, offers of fouten om hefboomwerking te krijgen.';

  @override
  String get metric_85_name => 'Conditionele Genegenheid';

  @override
  String get metric_85_description =>
      'Detecteert liefde, goedkeuring, toegang of warmte alleen aangeboden wanneer naleving wordt bereikt.';

  @override
  String get metric_86_name => 'Love Bombing Indicatoren';

  @override
  String get metric_86_description =>
      'Markeert intense genegenheid, beloften, druk of idealisatie gebruikt om hechting of controle te versnellen.';

  @override
  String get metric_87_name => 'Hoovering Pogingen';

  @override
  String get metric_87_description =>
      'Identificeert pogingen om iemand terug te trekken door schuld, nostalgie, beloften, crises of plotselinge genegenheid.';

  @override
  String get metric_88_name => 'DARVO Patroon';

  @override
  String get metric_88_description =>
      'Detecteert ontkennen, aanvallen en omkeren van slachtoffer-dader wanneer geconfronteerd met schade.';

  @override
  String get metric_89_name => 'Slachtofferhouding Patroon';

  @override
  String get metric_89_description =>
      'Markeert terugkerende zelfslachtoffering die verantwoordelijkheid vermijdt of aandacht afleidt van veroorzaakte schade.';

  @override
  String get metric_90_name => 'Morele Superioriteit Kader';

  @override
  String get metric_90_description =>
      'Zoekt naar rechtvaardigheid, zuiverheidsclaims of ethische superioriteit gebruikt om conflict te domineren.';

  @override
  String get metric_91_name => 'Karaktermoord';

  @override
  String get metric_91_description =>
      'Detecteert brede aanvallen op identiteit, integriteit, geestelijke gezondheid of waarde in plaats van specifiek gedrag.';

  @override
  String get metric_92_name => 'Triangulatie Indicatoren';

  @override
  String get metric_92_description =>
      'Markeert betrekken van derden bij conflict om te drukken, vergelijken, valideren of destabiliseren van de partner.';

  @override
  String get metric_93_name => 'Sociale Vergelijkingsdruk';

  @override
  String get metric_93_description =>
      'Zoekt naar vergelijkingen met exen, vrienden, andere koppels of idealen gebruikt om te schamen of te dwingen.';

  @override
  String get metric_94_name => 'Autonomie Ondersteuning';

  @override
  String get metric_94_description =>
      'Meet respect voor onafhankelijke keuzes, vriendschappen, doelen, grenzen en persoonlijke agency.';

  @override
  String get metric_95_name => 'Toestemming en Keuze Respect';

  @override
  String get metric_95_description =>
      'Beoordeelt of beslissingen vrij worden genomen zonder druk, schuld, dreigingen of manipulatie.';

  @override
  String get metric_96_name => 'Collaboratieve Planning';

  @override
  String get metric_96_description =>
      'Zoekt naar gedeelde planning, gezamenlijke beslissingen, gecoördineerde verantwoordelijkheden en praktische follow-through.';

  @override
  String get metric_97_name => 'Reparatie Follow-Through';

  @override
  String get metric_97_description =>
      'Meet of beloofde veranderingen later worden weerspiegeld in gedrag, niet alleen in woorden.';

  @override
  String get metric_98_name => 'Veranderd Gedrag Bewijs';

  @override
  String get metric_98_description =>
      'Controleert observeerbare, herhaalde acties die leren, aanpassing of verminderd schadelijk gedrag tonen.';

  @override
  String get metric_99_name => 'Emotionele Veiligheid Taal';

  @override
  String get metric_99_description =>
      'Identificeert taal die eerlijkheid uitnodigt, angst verlaagt, waardigheid beschermt en veilige expressie geruststelt.';

  @override
  String get metric_100_name => 'Relatie Ambivalentie';

  @override
  String get metric_100_description =>
      'Detecteert onzekerheid, gemengde toewijding, duw-trek berichten of onduidelijke wens om door te gaan.';

  @override
  String get unableToOpenConversations => 'Kan gesprekken niet openen';

  @override
  String get unableToOpenConversationsBody =>
      'Er is een fout opgetreden bij het laden van uw gesprekken. Probeer het opnieuw.';

  @override
  String get unableToLoadConversationsBody =>
      'Kan gesprekken niet laden. Controleer uw machtigingen en probeer het opnieuw.';

  @override
  String get errorLoadingConversationsBody =>
      'Fout bij het laden van gesprekken. Probeer het opnieuw.';

  @override
  String get smsPermissionRequired => 'SMS-machtiging vereist';

  @override
  String get smsPermissionRequiredBody =>
      'Om SMS-gesprekken te analyseren, hebben we toestemming nodig om uw berichten te lezen. Uw privacy is belangrijk — berichten worden alleen lokaal geanalyseerd en nooit op onze servers opgeslagen.';

  @override
  String get grantSmsPermission => 'SMS-machtiging verlenen';

  @override
  String get noSmsConversationsFound => 'Geen SMS-gesprekken gevonden';

  @override
  String get noConversationsMatchSearch =>
      'Geen gesprekken komen overeen met uw zoekopdracht';

  @override
  String get noSmsMessagesOnDevice =>
      'U heeft geen SMS-berichten op dit apparaat';

  @override
  String get tryDifferentSearch => 'Probeer een andere zoekterm';

  @override
  String get clearSearch => 'Zoekopdracht wissen';

  @override
  String selectedFile(String filename) {
    return 'Geselecteerd: $filename';
  }

  @override
  String get invalidFile => 'Ongeldig bestand';

  @override
  String get fileImport => 'Bestand importeren';

  @override
  String get fileImportNotImplemented =>
      'Bestandsanalyse is nog niet geïmplementeerd voor dit bestandstype.';

  @override
  String get errorPickingFile =>
      'Kan het bestand niet openen. Probeer het opnieuw.';

  @override
  String get readyToCapture => 'Klaar om vast te leggen';

  @override
  String get readyToCaptureBody =>
      'Ga nu naar de Berichten-app en begin met het maken van screenshots.\n\nKeer terug naar deze app wanneer u klaar bent en tik op \"Voltooien & Verwerken\".';

  @override
  String get noScreenshotsToProcess => 'Geen screenshots om te verwerken.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Screenshot $current van $total verwerken...';
  }

  @override
  String get noMessagesFound => 'Geen berichten gevonden';

  @override
  String get noMessagesFoundBody =>
      'Kan geen berichten uit de screenshots halen.\n\nZorg ervoor dat de screenshots het gesprek duidelijk tonen.';

  @override
  String loadedMessages(int count) {
    return '$count berichten geladen uit screenshots';
  }

  @override
  String get processingError => 'Verwerkingsfout';

  @override
  String get processingErrorBody =>
      'Fout bij het verwerken van screenshots. Probeer het opnieuw.';

  @override
  String metricListSavedAs(String name) {
    return 'Uw selecties zijn opgeslagen als \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'De selecties \"$name\" zijn opgehaald en toegepast.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count berichten geladen van $name';
  }

  @override
  String get loadButton => 'Laden';

  @override
  String get photoPermissionRequired =>
      'Fotobibliotheek-machtiging is vereist om screenshots te detecteren.';

  @override
  String get initializingConnection => 'Beveiligde verbinding initialiseren...';

  @override
  String get configurationRequired => 'Configuratie vereist';

  @override
  String get goBack => 'Terug';

  @override
  String get enableDateRangeFiltering => 'Datumbereikfiltering inschakelen';

  @override
  String get clearSelectedDateRange => 'Geselecteerd datumbereik wissen';

  @override
  String get largeThreadNoticeTitle => 'KENNISGEVING AAN GEBRUIKER';

  @override
  String get largeThreadNoticeBody =>
      'Bij het verwerken van uitzonderlijk grote tekstthreads kunnen sommige laadschermen in deze app soms meer dan anderhalf minuut duren.\n\nDe app hangt niet. Als u een draaiende statusindicator ziet, laadt de app nog steeds.\n\nWees geduldig in deze gevallen, aangezien de laadtijd langer dan normaal kan zijn in vergelijking met andere apps, vooral bij een grote dataset zoals een thread met 50.000 berichten.';

  @override
  String get neverShowThisAgain => 'Dit bericht niet meer weergeven';

  @override
  String loadingConversationWith(String name) {
    return 'Gesprek laden\nmet $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Open de Berichten-app en selecteer het gesprek\n2. Scroll naar het oudste bericht dat u wilt analyseren\n3. Tik hieronder op \"Opname starten\"\n4. Maak screenshots terwijl u door het gesprek scrolt\n5. Wanneer u klaar bent, tik op \"Voltooien & Verwerken\"';

  @override
  String get howToCaptureIosMessages => 'iOS-berichten vastleggen';

  @override
  String get deepSeekApiKey => 'DeepSeek API-sleutel';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Voer uw DeepSeek API-sleutel in om AI-analyse in te schakelen.';

  @override
  String get getYourApiKeyFrom =>
      'Haal uw API-sleutel op van: https://platform.deepseek.com';

  @override
  String get apiKey => 'API-sleutel';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Uw API-sleutel wordt veilig op uw apparaat opgeslagen en nooit gedeeld.';

  @override
  String get pleaseEnterApiKey => 'Voer een API-sleutel in';

  @override
  String get apiKeySavedSuccessfully => 'API-sleutel succesvol opgeslagen!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Wees geduldig, langere tekstthread-datasets duren behoorlijk lang om te laden';

  @override
  String get almostThereBigOne =>
      'Bijna klaar, Wow, dit moet groot zijn geweest';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Wees geduldig, grote datasets kunnen leiden tot laadtijden van meer dan anderhalve minuut';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Doorgaan met laden van de massieve thread met $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Geen berichten gevonden in het geselecteerde datumbereik. Selecteer andere datums of wis het datumfilter.';

  @override
  String get purchaseCustomMetricTileTitle => 'Aangepaste Meting Kopen';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Voor een eenmalig bedrag van \$4.99 kunt u een aangepaste metingsnaam en definitie invoeren die permanent wordt opgeslagen naast uw andere metingen voor gebruik in toekomstige analyses. Koop onbeperkte aangepaste metingen.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Aangepaste Meting Kopen';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Er wordt \$4.99 (eenmalig) in rekening gebracht om één aangepaste metingsslot te ontgrendelen.\n\nUw aangepaste metingsnaam en definitie zijn permanent en kunnen nooit meer worden gewijzigd zodra opgeslagen, dus kies zorgvuldig.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Kopen — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Aangepaste Metingsnaam';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Voer de naam in voor uw aangepaste meting:';

  @override
  String get purchaseCustomMetricNameHint => 'Metingsnaam';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Metingsnaam Bevestigen';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered =>
      'U heeft ingevoerd:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Dit is DEFINITIEF en kan NOOIT worden gewijzigd.';

  @override
  String get purchaseCustomMetricReenterName => 'Oeps — Naam Opnieuw Invoeren';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Metingsnaam Opslaan';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definiëren: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Voer de betekenis in van uw aangepaste meting: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Beschrijf wat deze meting betekent, welk gedrag het zoekt en hoe het van toepassing is op relatie-dynamiek...';

  @override
  String get purchaseCustomMetricReenter => 'Oeps — Opnieuw Invoeren';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Betekenis Opslaan';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Uw Aangepaste Meting Bekijken';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Zo zal uw tegel eruitzien:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Dit is uw LAATSTE KANS om van gedachten te veranderen.\nEenmaal vastgelegd, zijn de naam en definitie permanent.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Alles Annuleren';

  @override
  String get purchaseCustomMetricCommit => 'Toewijden aan Aangepaste Meting';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ 「$name」is toegevoegd aan uw metingen! U kunt het nu selecteren voor analyse.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Aankoop Verwerken...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Wachten op winkelbevestiging.\nSluit de app alstublieft niet af.';

  @override
  String get next => 'Volgende';

  @override
  String get cancelNotReady => 'Annuleren — Ik Was Niet Klaar';

  @override
  String get packGoodLabel => 'De Goede';

  @override
  String get packBadLabel => 'De Slechte';

  @override
  String get packUglyLabel => 'De Lelijke';

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
