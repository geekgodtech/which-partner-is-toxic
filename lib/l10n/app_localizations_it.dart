// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Analizzatore IA di Tossicità nelle Relazioni';

  @override
  String get psychologicalMetrics => 'Metriche Psicologiche';

  @override
  String get metricsDescription =>
      'Meno metriche selezionate producono un\'analisi più approfondita e concentrata di tali comportamenti. Più metriche selezionate producono un rapporto più ampio con meno dettagli per metrica.';

  @override
  String get selectSMS => 'Seleziona SMS / RCS Chat';

  @override
  String get selectDiscordChannel => 'Seleziona Canale Discord';

  @override
  String get lightMode => 'Chiaro';

  @override
  String get darkMode => 'Scuro';

  @override
  String get discordSetupTitle => 'Come Configurare Discord';

  @override
  String get discordSetupDescription =>
      'Segui questi passaggi per abilitare l\'analisi dei canali Discord nell\'app:';

  @override
  String get discordStep1Title => 'Crea un Bot Discord';

  @override
  String get discordStep1Description =>
      'Vai su discord.com/developers, crea una nuova applicazione e aggiungi un bot. Copia il token del bot.';

  @override
  String get discordStep2Title => 'Abilita i Privilegi del Bot';

  @override
  String get discordStep2Description =>
      'Nelle impostazioni del bot, abilita \'Message Content Intent\' e \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Invita il Bot al Server';

  @override
  String get discordStep3Description =>
      'Usa il generatore di URL OAuth2 per invitare il bot al tuo server Discord con i permessi necessari.';

  @override
  String get discordStep4Title => 'Configura nell\'App';

  @override
  String get discordStep4Description =>
      'Inserisci il tuo token del bot nelle impostazioni dell\'app (contatta il supporto se hai bisogno di aiuto).';

  @override
  String get discordStep5Title => 'Seleziona il Canale';

  @override
  String get discordStep5Description =>
      'Tocca \'Seleziona Canale Discord\', scegli il tuo server, quindi seleziona il canale da analizzare.';

  @override
  String get gotIt => 'Capito';

  @override
  String get selectFile => 'Seleziona file';

  @override
  String get analyzeSelectedMetrics => 'Analizza metriche selezionate';

  @override
  String get analyze20RandomMetrics => 'Analizza 20 metriche casuali';

  @override
  String get membershipOptions => 'Opzioni di abbonamento';

  @override
  String get free => 'Gratuito';

  @override
  String get oneTimeUnlock => 'Sblocco singolo del rapporto';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Componente Discord';

  @override
  String get analyze => 'Analizza';

  @override
  String get report => 'Rapporto';

  @override
  String get pdfReport => 'Rapporto PDF';

  @override
  String get openPdf => 'Apri PDF';

  @override
  String get sharePdf => 'Condividi PDF';

  @override
  String get printPdf => 'Stampa PDF';

  @override
  String get closePdfPreview => 'Chiudi finestra anteprima PDF';

  @override
  String get openPdfPreview => 'Apri finestra anteprima PDF';

  @override
  String get pdfPreviewDescription =>
      'La finestra PDF incorporata si avvia chiusa per mantenere il rapporto compatto.';

  @override
  String get notNow => 'Non ora';

  @override
  String get unlockThisReport => 'Sblocca questo rapporto - \$20';

  @override
  String get joinStandard => 'Iscriviti a Standard - \$9.99/mese';

  @override
  String get instantUnlockTitle => 'Sblocco istantaneo del rapporto - \$20';

  @override
  String get instantUnlockDescription =>
      'Questo è un acquisto una tantum per sbloccare solo il rapporto attuale. Nessun abbonamento richiesto. I rapporti futuri richiederanno sblocchi separati o un abbonamento.\n\nProcedere con il pagamento?';

  @override
  String get purchaseFor20 => 'Acquista per \$20';

  @override
  String get share => 'Condividi';

  @override
  String get print => 'Stampa';

  @override
  String get save => 'Salva';

  @override
  String get cancel => 'Annulla';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Caricamento...';

  @override
  String get error => 'Errore';

  @override
  String get success => 'Successo';

  @override
  String get conversations => 'Conversazioni';

  @override
  String get messages => 'Messaggi';

  @override
  String get selectConversation => 'Seleziona conversazione';

  @override
  String get selectSmsConversation => 'Seleziona SMS / RCS Chat';

  @override
  String get searchConversations => 'Cerca conversazioni...';

  @override
  String get loadingConversations => 'Caricamento conversazioni...';

  @override
  String get errorLoadingConversations =>
      'Errore nel caricamento delle conversazioni';

  @override
  String get selectConversationToAnalyze =>
      'Seleziona una conversazione da analizzare';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analizza con le metriche selezionate';

  @override
  String get loadConversationAndSelectMetric =>
      'Carica una conversazione e seleziona almeno una metrica';

  @override
  String get selectAtLeastOneMetric =>
      'È necessario selezionare almeno una metrica per eseguire il rapporto.';

  @override
  String get spinningMetricWheel => 'Girando la ruota delle metriche...';

  @override
  String get loadConversationToAnalyze =>
      'Carica una conversazione da analizzare';

  @override
  String get noConversationsFound => 'Nessuna conversazione trovata';

  @override
  String get permissionsRequired => 'Autorizzazioni richieste';

  @override
  String get smsPermission => 'Messaggi di testo';

  @override
  String get contactsPermission => 'Contatti';

  @override
  String get smsPermissionDescription =>
      'Per analizzare le tue conversazioni SMS alla ricerca di schemi relazionali';

  @override
  String get contactsPermissionDescription =>
      'Per visualizzare i nomi dei contatti invece dei numeri di telefono';

  @override
  String get analyzingMessage =>
      'Attendi mentre la tua analisi psicologica viene generata dall\'IA...';

  @override
  String get analyzingStatus => 'Analisi della conversazione...';

  @override
  String get analyzingSubMessage =>
      'Sii paziente, questo processo può richiedere fino a un minuto a seconda della velocità di connessione e della quantità di metriche selezionate';

  @override
  String get unlockFullReport => 'Sblocca e mostra l\'intero rapporto';

  @override
  String get fullReportLocked => 'Rapporto completo bloccato';

  @override
  String get upgradeToUnlock =>
      'Aggiorna il tuo abbonamento per sbloccare il rapporto completo di analisi psicologica con tutte le metriche e approfondimenti dettagliati.';

  @override
  String get language => 'Lingua';

  @override
  String get english => 'Inglese';

  @override
  String get spanish => 'Spagnolo';

  @override
  String get french => 'Francese';

  @override
  String get german => 'Tedesco';

  @override
  String get italian => 'Italiano';

  @override
  String get portuguese => 'Portoghese';

  @override
  String get dutch => 'Olandese';

  @override
  String get russian => 'Russo';

  @override
  String get chinese => 'Cinese';

  @override
  String get japanese => 'Giapponese';

  @override
  String get korean => 'Coreano';

  @override
  String get arabic => 'Arabo';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turco';

  @override
  String get polish => 'Polacco';

  @override
  String get ukrainian => 'Ucraino';

  @override
  String get runAnotherAnalysis => 'Eseguire un\'altra analisi?';

  @override
  String get becomeMemberTitle =>
      'Diventa membro per ottenere il rapporto di analisi completo';

  @override
  String get becomeMemberSubtitle =>
      'Scegli il livello di accesso adatto alle conversazioni e ai rapporti che devi analizzare.';

  @override
  String get benefitAnalyzeSms => 'Analizza i messaggi di testo SMS';

  @override
  String get benefitReportPreview => 'Esegui un\'anteprima del rapporto';

  @override
  String get benefitViewPartialReport => 'Visualizza circa il 25% del rapporto';

  @override
  String get benefitLockedDetails => 'Dettagli del rapporto completo bloccati';

  @override
  String get currentFreeAccess => 'Accesso gratuito attuale';

  @override
  String get benefitUnlockCurrentReport =>
      'Sblocca questo rapporto completo attuale';

  @override
  String get benefitNoSubscription => 'Nessun abbonamento';

  @override
  String get benefitSavePrintShareThis =>
      'Salva, stampa e condividi questo rapporto';

  @override
  String get benefitBestSingleAnalysis => 'Ideale se ti serve una sola analisi';

  @override
  String get unlockThisReportShort => 'Sblocca questo rapporto';

  @override
  String get benefitFullSmsReport => 'Rapporto di analisi SMS completo';

  @override
  String get benefitSavePrintSharePdf =>
      'Salva, stampa e condividi rapporti PDF';

  @override
  String get benefitTenReports => '10 rapporti per periodo di 24 ore';

  @override
  String get benefitBestTextReview =>
      'Ideale per esaminare le relazioni via SMS';

  @override
  String get benefitDateRangeFilter =>
      'Filtra l\'analisi per intervallo di date';

  @override
  String get signUpStandard => 'Iscriviti all\'abbonamento Standard';

  @override
  String get benefitAddToStandard => 'Aggiungi all\'abbonamento Standard';

  @override
  String get benefitAnalyzeDiscord => 'Analizza le chat dei server Discord';

  @override
  String get benefitRequiresBot => 'Richiede l\'installazione del bot';

  @override
  String get benefitBestGamers => 'Ideale per giocatori e community Discord';

  @override
  String get addDiscordAnalysis => 'Aggiungi analisi Discord';

  @override
  String get requiresStandardMembership => 'Richiede l\'abbonamento Standard';

  @override
  String get comingSoon => 'Prossimamente';

  @override
  String get comingSoonWithNextUpdate =>
      'Prossimamente con il prossimo aggiornamento:';

  @override
  String get proMembershipTier => 'Livello di abbonamento Pro - \$19.99';

  @override
  String get proPlusMembershipTier =>
      'Livello di abbonamento Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro include:';

  @override
  String get proGetsDescription =>
      'Analizza i thread di chat di tutte le altre piattaforme di messaggistica e social media più diffuse come:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), email e calendario';

  @override
  String get proPlusGetsLabel => 'Pro-Plus include:';

  @override
  String get proPlusGetsDescription =>
      'Tutto ciò che offre Pro, più il componente aggiuntivo Discord a un prezzo ridotto.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Acquisto riuscito! Rapporto sbloccato.';

  @override
  String get purchaseFailed => 'Acquisto non riuscito. Riprova.';

  @override
  String get membershipActivated => 'Abbonamento attivato!';

  @override
  String get dateRangeFilter => 'Filtro Intervallo Date';

  @override
  String get dateRangeOptional => '(opzionale)';

  @override
  String get startDate => 'Data di Inizio';

  @override
  String get endDate => 'Data di Fine';

  @override
  String get clear => 'Cancella';

  @override
  String get dateRangeRequiresMembership =>
      'Richiede abbonamento Standard o superiore';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Seleziona fino a $max. Attuale: $current';
  }

  @override
  String get clearSelections => 'Cancella selezioni';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analizza $count metriche casuali';
  }

  @override
  String get saveSelections => 'Salva Selezioni';

  @override
  String get loadSelections => 'Carica Selezioni';

  @override
  String get saveMetricListName => 'Salva Lista Metriche';

  @override
  String get enterListName => 'Inserisci un nome per questa lista di metriche:';

  @override
  String get chooseSavedMetrics => 'Scegli la lista di metriche salvata:';

  @override
  String get noSavedLists =>
      'Nessuna lista di metriche salvata da caricare al momento.';

  @override
  String get metricListSaved => 'Lista di metriche salvata con successo.';

  @override
  String get metricListLoaded => 'Lista di metriche caricata con successo.';

  @override
  String get filters => 'Filtri';

  @override
  String get sortBy => 'Ordina per:';

  @override
  String get recent => 'Recente';

  @override
  String get name => 'Nome';

  @override
  String get count => 'Conteggio';

  @override
  String get namedOnly => 'Solo con nome';

  @override
  String get minMessages => 'Min. messaggi:';

  @override
  String get minimumMessages => 'Minimo di messaggi:';

  @override
  String get executiveSummary => 'Riepilogo Esecutivo';

  @override
  String get metricScores => 'Punteggi delle Metriche';

  @override
  String get contextualEvidenceExamples => 'Esempi di Evidenza Contestuale';

  @override
  String get neutralSynthesis => 'Sintesi Neutrale';

  @override
  String analysisOfSender(Object sender) {
    return 'Analisi di $sender (Mittente)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analisi di $receiver (Destinatario)';
  }

  @override
  String get finalConclusion => 'Conclusione Finale';

  @override
  String get metric_1_name => 'Disprezzo';

  @override
  String get metric_1_description =>
      'Cerca superiorità, disgusto, scherno, linguaggio di rotolare gli occhi o insulti che pongono un partner sotto l\'altro.';

  @override
  String get metric_2_name => 'Difensiva';

  @override
  String get metric_2_description =>
      'Traccia autodifesa riflessiva, contrattacchi, scuse e rifiuto di considerare il reclamo dell\'altra persona.';

  @override
  String get metric_3_name => 'Blocco';

  @override
  String get metric_3_description =>
      'Identifica chiusura, ritiro, ignorare, rifiuto di rispondere o fine delle conversazioni per evitare l\'impegno.';

  @override
  String get metric_4_name => 'Critica';

  @override
  String get metric_4_description =>
      'Rileva attacchi al carattere o personalità invece di comportamenti specifici, bisogni o incidenti.';

  @override
  String get metric_5_name => 'Indicatori di Gaslighting';

  @override
  String get metric_5_description =>
      'Segnala tentativi di far dubitare qualcuno della memoria, percezione, sanità mentale o legittimità della propria esperienza.';

  @override
  String get metric_6_name => 'Spostamento della Colpa';

  @override
  String get metric_6_description =>
      'Misura se la responsabilità viene reindirizzata sull\'altro partner invece di essere riconosciuta direttamente.';

  @override
  String get metric_7_name => 'Pattern di Escalation';

  @override
  String get metric_7_description =>
      'Valuta se tono, accuse, intensità o minacce aumentano invece di muoversi verso la risoluzione.';

  @override
  String get metric_8_name => 'Riconoscimento dei Tentativi di Riparazione';

  @override
  String get metric_8_description =>
      'Verifica se scuse, umorismo, pause, rassicurazione o offerte di pace sono notate e accettate.';

  @override
  String get metric_9_name => 'Linguaggio di Responsabilità';

  @override
  String get metric_9_description =>
      'Cerca chiara proprietà del danno, responsabilità specifica e volontà di cambiare il comportamento.';

  @override
  String get metric_10_name => 'Rispetto dei Confini';

  @override
  String get metric_10_description =>
      'Valuta se i limiti dichiarati attorno al tempo, privacy, corpo, emozioni o contatto sono onorati.';

  @override
  String get metric_11_name => 'Indicatori di Controllo Coercitivo';

  @override
  String get metric_11_description =>
      'Segnala pattern di intimidazione, restrizione, monitoraggio, dipendenza o controllo su scelte e movimenti.';

  @override
  String get metric_12_name => 'Linguaggio di Minaccia';

  @override
  String get metric_12_description =>
      'Identifica minacce esplicite o implicite che coinvolgono sicurezza, abbandono, esposizione, rappresaglia o punizione.';

  @override
  String get metric_13_name => 'Disprezzo';

  @override
  String get metric_13_description =>
      'Rileva spazzare via preoccupazioni, trattare bisogni come non importanti o rifiutare di prendere sul serio la sofferenza.';

  @override
  String get metric_14_name => 'Invalidazione';

  @override
  String get metric_14_description =>
      'Misura negazione, ridicolo o correzione delle emozioni di un\'altra persona invece di riconoscerle.';

  @override
  String get metric_15_name => 'Espressione di Empatia';

  @override
  String get metric_15_description =>
      'Cerca presa di prospettiva, cura, riconoscimento emotivo e preoccupazione per l\'esperienza dell\'altra persona.';

  @override
  String get metric_16_name => 'Reciprocità';

  @override
  String get metric_16_description =>
      'Valuta se attenzione, sforzo, scuse, compromesso e supporto emotivo fluiscono in entrambe le direzioni.';

  @override
  String get metric_17_name => 'Regolazione Emotiva';

  @override
  String get metric_17_description =>
      'Valuta capacità di rimanere radicati, fare una pausa, auto-calmarsi e comunicare senza reattività esplosiva.';

  @override
  String get metric_18_name => 'Sarcasmo Usato come Danno';

  @override
  String get metric_18_description =>
      'Segnala sarcasmo usato per sminuire, punire, umiliare o mascherare ostilità come umorismo.';

  @override
  String get metric_19_name => 'Insulti';

  @override
  String get metric_19_description =>
      'Identifica etichette dispregiative, insulti, volgarità dirette alla persona o attacchi basati sull\'identità.';

  @override
  String get metric_20_name => 'Pattern di Trattamento Silenzioso';

  @override
  String get metric_20_description =>
      'Traccia silenzio usato come punizione, controllo, evitamento o ritiro di connessione.';

  @override
  String get metric_21_name => 'Inquadratura della Gelosia';

  @override
  String get metric_21_description =>
      'Valuta sospetto, possessività, accuse o gelosia presentate come prova di cura.';

  @override
  String get metric_22_name => 'Pressione di Isolamento';

  @override
  String get metric_22_description =>
      'Segnala sforzi per separare un partner da amici, famiglia, sistemi di supporto o prospettive esterne.';

  @override
  String get metric_23_name => 'Indicatori di Controllo Finanziario';

  @override
  String get metric_23_description =>
      'Cerca controllo di denaro, spese, impiego, accesso ai conti o indipendenza finanziaria.';

  @override
  String get metric_24_name => 'Indicatori di Invasione della Privacy';

  @override
  String get metric_24_description =>
      'Rileva spionaggio, richieste di password, controlli dei dispositivi, tracciamento della posizione o violazioni della privacy.';

  @override
  String get metric_25_name => 'Specificità delle Scuse';

  @override
  String get metric_25_description =>
      'Misura se le scuse nominano il danno esatto, l\'impatto e la correzione futura invece di rimanere vaghe.';

  @override
  String get metric_26_name => 'Pressione del Perdono';

  @override
  String get metric_26_description =>
      'Segnala richieste di andare avanti, perdonare rapidamente o smettere di discutere il danno prima che avvenga la riparazione.';

  @override
  String get metric_27_name => 'Minimizzazione';

  @override
  String get metric_27_description =>
      'Rileva sminuire il danno, chiamare preoccupazioni serie drammatiche o ridurre l\'impatto per evitare la responsabilità.';

  @override
  String get metric_28_name => 'Proiezione';

  @override
  String get metric_28_description =>
      'Cerca accuse che riflettono il proprio comportamento, motivi o sentimenti non risolti del parlante.';

  @override
  String get metric_29_name => 'Pattern di Interruzione';

  @override
  String get metric_29_description =>
      'Traccia interrompere, parlare sopra, rifiutare di completare o controllare i turni conversazionali.';

  @override
  String get metric_30_name => 'Deviazione dell\'Argomento';

  @override
  String get metric_30_description =>
      'Identifica cambiare argomento, portare problemi non correlati o evitare la preoccupazione centrale.';

  @override
  String get metric_31_name => 'Orientazione alla Risoluzione';

  @override
  String get metric_31_description =>
      'Misura se i messaggi mirano a soluzioni, chiarezza, accordi e prossimi passi.';

  @override
  String get metric_32_name => 'Risoluzione Mutua dei Problemi';

  @override
  String get metric_32_description =>
      'Valuta linguaggio collaborativo, responsabilità condivisa, brainstorming e volontà di trovare compromessi praticabili.';

  @override
  String get metric_33_name => 'Inondazione Emotiva';

  @override
  String get metric_33_description =>
      'Rileva sopraffazione, panico, chiusura, spirale o incapacità di elaborare durante il conflitto.';

  @override
  String get metric_34_name => 'Cue di Risposta alla Paura';

  @override
  String get metric_34_description =>
      'Cerca placare, scelta attenta delle parole, terrore, preoccupazioni di sicurezza o paura della reazione del partner.';

  @override
  String get metric_35_name => 'Coerenza delle Affermazioni';

  @override
  String get metric_35_description =>
      'Valuta se i resoconti rimangono internamente coerenti attraverso messaggi e tempo.';

  @override
  String get metric_36_name => 'Ricordo Basato su Evidenze';

  @override
  String get metric_36_description =>
      'Verifica se le affermazioni fanno riferimento a eventi concreti, citazioni, cronologie o comportamento osservabile.';

  @override
  String get metric_37_name => 'Pattern di Domanda e Ritiro';

  @override
  String get metric_37_description =>
      'Traccia un partner che cerca risposte o cambiamenti mentre l\'altro evita, si chiude o esce.';

  @override
  String get metric_38_name => 'Indicatori di Squilibrio di Potere';

  @override
  String get metric_38_description =>
      'Segnala potere decisionale disuguale, paura delle conseguenze, dipendenza, intimidazione o controllo unilaterale.';

  @override
  String get metric_39_name => 'Disaccordo Rispettoso';

  @override
  String get metric_39_description =>
      'Misura se il conflitto preserva dignità, curiosità e disaccordo senza degradazione.';

  @override
  String get metric_40_name => 'Ciclo di Rottura e Riparazione';

  @override
  String get metric_40_description =>
      'Valuta se il conflitto è seguito da riconoscimento, riconnessione e riparazione effettiva.';

  @override
  String get metric_41_name => 'Ritiro di Affetto';

  @override
  String get metric_41_description =>
      'Rileva amore, calore, sesso, attenzione o rassicurazione trattenuti come punizione o leva.';

  @override
  String get metric_42_name => 'Riferimenti di Umiliazione Pubblica';

  @override
  String get metric_42_description =>
      'Segnala minacce, scherzi o azioni che imbarazzano il partner davanti agli altri.';

  @override
  String get metric_43_name => 'Cue di Conflitto Legato a Sostanze';

  @override
  String get metric_43_description =>
      'Cerca uso di alcol o droghe legato ad aggressione, inaffidabilità, conflitto o danno.';

  @override
  String get metric_44_name => 'Pressione di Conflitto Genitoriale';

  @override
  String get metric_44_description =>
      'Identifica figli, custodia, ruoli genitoriali o colpa genitoriale usati nel conflitto o come leva.';

  @override
  String get metric_45_name => 'Rispetto dei Confini Sessuali';

  @override
  String get metric_45_description =>
      'Valuta rispetto per consenso, pressione, rifiuto, comfort, tempistica e autonomia sessuale.';

  @override
  String get metric_46_name => 'Indicatori di Molestia Digitale';

  @override
  String get metric_46_description =>
      'Traccia messaggi indesiderati ripetuti, chiamate spam, pressione online, sorveglianza o intimidazione basata su piattaforme.';

  @override
  String get metric_47_name => 'Linguaggio di Monitoraggio o Sorveglianza';

  @override
  String get metric_47_description =>
      'Segnala verificare il parco, richiedere prove, tracciare il comportamento o verifica costante.';

  @override
  String get metric_48_name => 'Orientazione Futura';

  @override
  String get metric_48_description =>
      'Misura se i partner discutono miglioramento futuro, impegni, piani o direzione costruttiva.';

  @override
  String get metric_49_name => 'Segnali di Pianificazione della Sicurezza';

  @override
  String get metric_49_description =>
      'Cerca tentativi di cercare aiuto, creare distanza, documentare il danno o pianificare la sicurezza fisica/emotiva.';

  @override
  String get metric_50_name => 'Tentativi Mutui di De-escalation';

  @override
  String get metric_50_description =>
      'Traccia pause, linguaggio calmante, tono più morbido, timeout e tentativi di entrambi i partner per ridurre l\'intensità.';

  @override
  String get metric_51_name => 'Cue di Attaccamento Sicuro';

  @override
  String get metric_51_description =>
      'Identifica fiducia, rassicurazione diretta, disponibilità emotiva e comfort con vicinanza e indipendenza.';

  @override
  String get metric_52_name => 'Attivazione di Attaccamento Ansioso';

  @override
  String get metric_52_description =>
      'Segnala comportamento di protesta, bisogni urgenti di rassicurazione, paura dell\'abbandono e sensibilità elevata alla distanza.';

  @override
  String get metric_53_name => 'Distanziamento di Attaccamento Evitante';

  @override
  String get metric_53_description =>
      'Rileva minimizzazione emotiva, difese di indipendenza, ritiro dalla vulnerabilità o disagio con i bisogni.';

  @override
  String get metric_54_name => 'Segnali di Attaccamento Disorganizzato';

  @override
  String get metric_54_description =>
      'Cerca cicli di avvicinamento-evitamento, paura mista con bisogno, reazioni caotiche o pattern di intimità confusi.';

  @override
  String get metric_55_name => 'Offerte Emotive e Risposte';

  @override
  String get metric_55_description =>
      'Misura inviti per attenzione, comfort o connessione e se sono accettati o persi.';

  @override
  String get metric_56_name => 'Allontanarsi dalla Connessione';

  @override
  String get metric_56_description =>
      'Segnala ignorare, respingere o fallire nel rispondere a offerte di vicinanza o supporto.';

  @override
  String get metric_57_name => 'Voltarsi Contro la Connessione';

  @override
  String get metric_57_description =>
      'Rileva risposte ostili o punitive a tentativi di affetto, vulnerabilità o riparazione.';

  @override
  String get metric_58_name => 'Sovrascrittura del Sentimento Positivo';

  @override
  String get metric_58_description =>
      'Cerca generosità, beneficio del dubbio, affetto e interpretare il conflitto attraverso la cura.';

  @override
  String get metric_59_name => 'Sovrascrittura del Sentimento Negativo';

  @override
  String get metric_59_description =>
      'Segnala assumere cattive intenzioni, interpretare messaggi neutri negativamente e inquadratura ostile persistente.';

  @override
  String get metric_60_name => 'Pattern di Inizio Duro';

  @override
  String get metric_60_description =>
      'Identifica conversazioni che iniziano con accusa, attacco, disprezzo o colpa invece di una richiesta.';

  @override
  String get metric_61_name => 'Pattern di Inizio Morbido';

  @override
  String get metric_61_description =>
      'Cerca aperture gentili usando sentimenti, bisogni, richieste specifiche e linguaggio non accusatorio.';

  @override
  String get metric_62_name => 'Auto-calmazione Fisiologica';

  @override
  String get metric_62_description =>
      'Valuta tentativi di fare una pausa, respirare, prendere spazio o regolare il corpo prima di continuare il conflitto.';

  @override
  String get metric_63_name => 'Pattern di Evitamento del Conflitto';

  @override
  String get metric_63_description =>
      'Traccia evitamento ripetuto di argomenti necessari, disagio, disaccordo o onestà emotiva.';

  @override
  String get metric_64_name => 'Stile di Conflitto Volatile';

  @override
  String get metric_64_description =>
      'Rileva conflitto ad alta intensità con espressione diretta che può ancora includere impegno e riparazione.';

  @override
  String get metric_65_name => 'Stile di Conflitto Validante';

  @override
  String get metric_65_description =>
      'Misura se i partner riconoscono la prospettiva dell\'altro mentre sono in disaccordo.';

  @override
  String get metric_66_name => 'Stile di Conflitto Ostile';

  @override
  String get metric_66_description =>
      'Segnala critica frequente, disprezzo, difensiva, attacchi e inquadratura avversariale.';

  @override
  String get metric_67_name => 'Pattern Ostile-Distaccato';

  @override
  String get metric_67_description =>
      'Identifica ostilità fredda, disimpegno emotivo, disprezzo e bassa motivazione di riparazione.';

  @override
  String get metric_68_name => 'Volontà di Compromesso';

  @override
  String get metric_68_description =>
      'Cerca flessibilità, negoziazione, proposte di terreno di mezzo e sacrifici che rispettano entrambi i bisogni.';

  @override
  String get metric_69_name => 'Accettazione dell\'Influenza';

  @override
  String get metric_69_description =>
      'Misura apertura a essere influenzati dai sentimenti, bisogni o prospettiva del partner.';

  @override
  String get metric_70_name => 'Segnali di Conflitto Bloccato';

  @override
  String get metric_70_description =>
      'Segnala problemi non risolti ripetuti legati a valori, sogni, identità o incompatibilità cronica.';

  @override
  String get metric_71_name => 'Inquadratura di Problema Risolvibile';

  @override
  String get metric_71_description =>
      'Rileva definizioni di problemi pratiche e concrete che possono portare a accordi specifici.';

  @override
  String get metric_72_name => 'Riferimenti di Significato Condiviso';

  @override
  String get metric_72_description =>
      'Cerca valori, rituali, obiettivi, ricordi o linguaggio di identità che crea una storia di relazione condivisa.';

  @override
  String get metric_73_name => 'Consapevolezza della Mappa dell\'Amore';

  @override
  String get metric_73_description =>
      'Valuta conoscenza del mondo interiore, stressori, preferenze, paure e vita quotidiana del partner.';

  @override
  String get metric_74_name => 'Affetto e Ammirazione';

  @override
  String get metric_74_description =>
      'Identifica apprezzamento, rispetto, calore, complimenti, gratitudine e considerazione positiva.';

  @override
  String get metric_75_name => 'Squilibrio del Lavoro Emotivo';

  @override
  String get metric_75_description =>
      'Segnala un partner che porta pianificazione sproporzionata, calmamento, ricordo, spiegazione o manutenzione della relazione.';

  @override
  String get metric_76_name => 'Respinto del Carico Mentale';

  @override
  String get metric_76_description =>
      'Rileva minimizzare il lavoro di pianificazione invisibile, coordinazione domestica, programmazione o tracciamento della responsabilità.';

  @override
  String get metric_77_name => 'Cue di Incompetenza Armata';

  @override
  String get metric_77_description =>
      'Cerca rivendicare incapacità, confusione o impotenza per evitare responsabilità equa.';

  @override
  String get metric_78_name => 'Sensibilità ai Trigger di Trauma';

  @override
  String get metric_78_description =>
      'Misura consapevolezza dei trigger, risposte al trauma e gestione attenta di argomenti vulnerabili.';

  @override
  String get metric_79_name => 'Cue di Ipervigilanza';

  @override
  String get metric_79_description =>
      'Segnala scansionare per pericolo, monitoraggio eccessivo del tono, paura degli errori o allerta emotiva costante.';

  @override
  String get metric_80_name => 'Linguaggio della Paura dell\'Abbandono';

  @override
  String get metric_80_description =>
      'Rileva paura di essere lasciato, sostituito, ignorato, scartato o abbandonato emotivamente.';

  @override
  String get metric_81_name => 'Pattern di Ricerca di Rassicurazione';

  @override
  String get metric_81_description =>
      'Traccia richieste ripetute di prova di amore, impegno, sicurezza o interesse continuo.';

  @override
  String get metric_82_name => 'Ciclo Inseguitore-Distanziatore';

  @override
  String get metric_82_description =>
      'Identifica un partner che scala la ricerca di vicinanza mentre l\'altro aumenta la distanza.';

  @override
  String get metric_83_name => 'Accumulo di Risentimento';

  @override
  String get metric_83_description =>
      'Cerca rancori immagazzinati, riferimenti ripetuti al passato, amarezza e debito emotivo non risolto.';

  @override
  String get metric_84_name => 'Comportamento di Conteggio dei Punti';

  @override
  String get metric_84_description =>
      'Segnala conteggio transazionale di difetti, favori, sacrifici o errori per guadagnare leva.';

  @override
  String get metric_85_name => 'Affetto Condizionale';

  @override
  String get metric_85_description =>
      'Rileva amore, approvazione, accesso o calore offerti solo quando viene raggiunta la conformità.';

  @override
  String get metric_86_name => 'Indicatori di Love Bombing';

  @override
  String get metric_86_description =>
      'Segnala affetto intenso, promesse, pressione o idealizzazione usati per accelerare l\'attaccamento o il controllo.';

  @override
  String get metric_87_name => 'Tentativi di Hoovering';

  @override
  String get metric_87_description =>
      'Identifica tentativi di tirare indietro qualcuno attraverso colpa, nostalgia, promesse, crisi o affetto improvviso.';

  @override
  String get metric_88_name => 'Pattern DARVO';

  @override
  String get metric_88_description =>
      'Rileva negare, attaccare e invertire vittima-caricoattore quando confrontato sul danno.';

  @override
  String get metric_89_name => 'Pattern di Postura di Vittima';

  @override
  String get metric_89_description =>
      'Segnala auto-vittimizzazione ricorrente che evita la responsabilità o reindirizza l\'attenzione dal danno causato.';

  @override
  String get metric_90_name => 'Inquadratura di Superiorità Morale';

  @override
  String get metric_90_description =>
      'Cerca rettitudine, rivendicazioni di purezza o superiorità etica usata per dominare il conflitto.';

  @override
  String get metric_91_name => 'Assassinio del Carattere';

  @override
  String get metric_91_description =>
      'Rileva attacchi ampi su identità, integrità, salute mentale o valore invece di comportamento specifico.';

  @override
  String get metric_92_name => 'Indicatori di Triangolazione';

  @override
  String get metric_92_description =>
      'Segnala portare terze parti nel conflitto per premere, confrontare, validare o destabilizzare il partner.';

  @override
  String get metric_93_name => 'Pressione di Confronto Sociale';

  @override
  String get metric_93_description =>
      'Cerca confronti con ex, amici, altre coppie o ideali usati per vergognare o costringere.';

  @override
  String get metric_94_name => 'Supporto dell\'Autonomia';

  @override
  String get metric_94_description =>
      'Misura rispetto per scelte indipendenti, amicizie, obiettivi, confini e agenzia personale.';

  @override
  String get metric_95_name => 'Rispetto del Consenso e della Scelta';

  @override
  String get metric_95_description =>
      'Valuta se le decisioni sono prese liberamente senza pressione, colpa, minacce o manipolazione.';

  @override
  String get metric_96_name => 'Pianificazione Collaborativa';

  @override
  String get metric_96_description =>
      'Cerca programmazione condivisa, decisioni congiunte, responsabilità coordinate e follow-through pratico.';

  @override
  String get metric_97_name => 'Follow-through di Riparazione';

  @override
  String get metric_97_description =>
      'Misura se i cambiamenti promessi sono successivamente riflessi nel comportamento, non solo nelle parole.';

  @override
  String get metric_98_name => 'Evidenza di Comportamento Cambiato';

  @override
  String get metric_98_description =>
      'Verifica azioni osservabili e ripetute che mostrano apprendimento, aggiustamento o comportamento dannoso ridotto.';

  @override
  String get metric_99_name => 'Linguaggio di Sicurezza Emotiva';

  @override
  String get metric_99_description =>
      'Identifica linguaggio che invita all\'onestà, riduce la paura, protegge la dignità e rassicura l\'espressione sicura.';

  @override
  String get metric_100_name => 'Ambivalenza Relazionale';

  @override
  String get metric_100_description =>
      'Rileva incertezza, impegno misto, messaggi di spingere-tirare o desiderio poco chiaro di continuare.';

  @override
  String get unableToOpenConversations => 'Impossibile aprire le conversazioni';

  @override
  String get unableToOpenConversationsBody =>
      'Si è verificato un errore durante il caricamento delle conversazioni. Per favore riprova.';

  @override
  String get unableToLoadConversationsBody =>
      'Impossibile caricare le conversazioni. Controlla le autorizzazioni e riprova.';

  @override
  String get errorLoadingConversationsBody =>
      'Errore durante il caricamento delle conversazioni. Per favore riprova.';

  @override
  String get smsPermissionRequired => 'Autorizzazione SMS richiesta';

  @override
  String get smsPermissionRequiredBody =>
      'Per analizzare le conversazioni SMS, abbiamo bisogno dell\'autorizzazione per leggere i tuoi messaggi. La tua privacy è importante — i messaggi vengono analizzati solo localmente e non vengono mai archiviati sui nostri server.';

  @override
  String get grantSmsPermission => 'Concedi autorizzazione SMS';

  @override
  String get noSmsConversationsFound => 'Nessuna conversazione SMS trovata';

  @override
  String get noConversationsMatchSearch =>
      'Nessuna conversazione corrisponde alla tua ricerca';

  @override
  String get noSmsMessagesOnDevice =>
      'Non hai messaggi SMS su questo dispositivo';

  @override
  String get tryDifferentSearch => 'Prova un termine di ricerca diverso';

  @override
  String get clearSearch => 'Cancella ricerca';

  @override
  String selectedFile(String filename) {
    return 'Selezionato: $filename';
  }

  @override
  String get invalidFile => 'File non valido';

  @override
  String get fileImport => 'Importa file';

  @override
  String get fileImportNotImplemented =>
      'L\'analisi dei file non è ancora implementata per questo tipo di file.';

  @override
  String get errorPickingFile =>
      'Impossibile aprire il file. Per favore riprova.';

  @override
  String get readyToCapture => 'Pronto per acquisire';

  @override
  String get readyToCaptureBody =>
      'Passa all\'app Messaggi ora e inizia a fare screenshot.\n\nTorna a questa app quando hai finito e tocca \"Fine e Elabora\".';

  @override
  String get noScreenshotsToProcess => 'Nessuno screenshot da elaborare.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Elaborazione screenshot $current di $total...';
  }

  @override
  String get noMessagesFound => 'Nessun messaggio trovato';

  @override
  String get noMessagesFoundBody =>
      'Impossibile estrarre messaggi dagli screenshot.\n\nAssicurati che gli screenshot mostrino chiaramente la conversazione.';

  @override
  String loadedMessages(int count) {
    return '$count messaggi caricati dagli screenshot';
  }

  @override
  String get processingError => 'Errore di elaborazione';

  @override
  String get processingErrorBody =>
      'Errore durante l\'elaborazione degli screenshot. Per favore riprova.';

  @override
  String metricListSavedAs(String name) {
    return 'Le tue selezioni sono state salvate come \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Le selezioni \"$name\" sono state recuperate e applicate.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count messaggi caricati da $name';
  }

  @override
  String get loadButton => 'Carica';

  @override
  String get photoPermissionRequired =>
      'L\'autorizzazione alla libreria foto è necessaria per rilevare gli screenshot.';

  @override
  String get initializingConnection => 'Inizializzazione connessione sicura...';

  @override
  String get configurationRequired => 'Configurazione richiesta';

  @override
  String get goBack => 'Indietro';

  @override
  String get enableDateRangeFiltering =>
      'Abilita filtraggio per intervallo di date';

  @override
  String get clearSelectedDateRange => 'Cancella intervallo date selezionato';

  @override
  String get largeThreadNoticeTitle => 'AVVISO ALL\'UTENTE';

  @override
  String get largeThreadNoticeBody =>
      'Quando si gestiscono thread di testo eccezionalmente grandi, alcune schermate di caricamento in questa app potrebbero superare un minuto e mezzo.\n\nL\'applicazione non si blocca. Se vedi un indicatore di stato che gira, l\'app è ancora in caricamento.\n\nSii paziente in questi casi, poiché il tempo di caricamento potrebbe essere più lungo del solito rispetto ad altre applicazioni, specialmente con un grande set di dati come un thread con 50.000 messaggi.';

  @override
  String get neverShowThisAgain => 'Non mostrare più questo messaggio';

  @override
  String loadingConversationWith(String name) {
    return 'Caricamento conversazione\ncon $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Apri l\'app Messaggi e seleziona la conversazione\n2. Scorri fino al messaggio più vecchio che vuoi analizzare\n3. Tocca \"Inizia acquisizione\" qui sotto\n4. Fai screenshot scorrendo la conversazione\n5. Quando hai finito, tocca \"Fine ed elabora\"';

  @override
  String get howToCaptureIosMessages => 'Come acquisire messaggi iOS';

  @override
  String get deepSeekApiKey => 'Chiave API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Inserisci la tua chiave API DeepSeek per abilitare l\'analisi AI.';

  @override
  String get getYourApiKeyFrom =>
      'Ottieni la tua chiave API da: https://platform.deepseek.com';

  @override
  String get apiKey => 'Chiave API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'La tua chiave API è archiviata in modo sicuro sul tuo dispositivo e non viene mai condivisa.';

  @override
  String get pleaseEnterApiKey => 'Inserisci una chiave API';

  @override
  String get apiKeySavedSuccessfully => 'Chiave API salvata con successo!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Sii paziente, i set di dati di thread di testo più lunghi richiedono molto tempo per caricare';

  @override
  String get almostThereBigOne =>
      'Quasi finito, Wow, questo deve essere stato grande';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Sii paziente, i set di dati grandi potrebbero comportare tempi di caricamento superiori a un minuto e mezzo';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Continuando a caricare il thread massiccio con $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Nessun messaggio trovato nell\'intervallo di date selezionato. Seleziona date diverse o cancella il filtro data.';

  @override
  String get purchaseCustomMetricTileTitle => 'Acquista metrica personalizzata';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Per una tariffa unica di \$4.99, inserisci un nome e una definizione di metrica personalizzata salvati permanentemente insieme alle tue altre metriche per l\'uso in qualsiasi analisi futura. Acquista metriche personalizzate illimitate.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Acquista metrica personalizzata';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Ti verrà addebitato \$4.99 (una tantum) per sbloccare uno slot per metrica personalizzata.\n\nIl nome e la definizione della tua metrica personalizzata sono permanenti e non potranno mai essere modificati una volta salvati, quindi scegli attentamente.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Acquista — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Nome metrica personalizzata';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Inserisci il nome per la tua metrica personalizzata:';

  @override
  String get purchaseCustomMetricNameHint => 'Nome metrica';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Conferma nome metrica';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Hai inserito:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Questo è FINALE e non potrà MAI essere modificato.';

  @override
  String get purchaseCustomMetricReenterName => 'Ops — Reinserisci nome';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Salva nome metrica';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definisci: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Inserisci il significato della tua metrica personalizzata: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Descrivi cosa significa questa metrica, quali comportamenti cerca e come si applica alla dinamica delle relazioni...';

  @override
  String get purchaseCustomMetricReenter => 'Ops — Reinserisci';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Salva significato';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Anteprima della tua metrica personalizzata';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Ecco come apparirà la tua tessera:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Questa è la tua ULTIMA CHANCE di cambiare idea.\nUna volta confermato, il nome e la definizione sono permanenti.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Annulla tutto';

  @override
  String get purchaseCustomMetricCommit => 'Conferma metrica personalizzata';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" aggiunto alle tue metriche! Ora puoi selezionarlo per l\'analisi.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Elaborazione acquisto...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'In attesa di conferma dallo store.\nSi prega di non chiudere l\'app.';

  @override
  String get next => 'Avanti';

  @override
  String get cancelNotReady => 'Annulla — Non ero pronto';

  @override
  String get packGoodLabel => 'Il Buono';

  @override
  String get packBadLabel => 'Il Brutto';

  @override
  String get packUglyLabel => 'Il Cattivo';

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
