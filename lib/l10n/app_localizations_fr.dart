// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Analyseur de Toxicité Relationnelle IA';

  @override
  String get psychologicalMetrics => 'Métriques Psychologiques';

  @override
  String get metricsDescription =>
      'Moins de métriques sélectionnées produisent une analyse plus profonde et concentrée de ces comportements. Plus de métriques sélectionnées produisent un rapport plus large avec moins de détails par métrique.';

  @override
  String get selectSMS => 'Sélectionner SMS / RCS Chat';

  @override
  String get selectDiscordChannel => 'Sélectionner Canal Discord';

  @override
  String get lightMode => 'Clair';

  @override
  String get darkMode => 'Sombre';

  @override
  String get discordSetupTitle => 'Comment Configurer Discord';

  @override
  String get discordSetupDescription =>
      'Suivez ces étapes pour activer l\'analyse des canaux Discord dans l\'application:';

  @override
  String get discordStep1Title => 'Créer un Bot Discord';

  @override
  String get discordStep1Description =>
      'Allez sur discord.com/developers, créez une nouvelle application et ajoutez un bot. Copiez le token du bot.';

  @override
  String get discordStep2Title => 'Activer les Privilèges du Bot';

  @override
  String get discordStep2Description =>
      'Dans les paramètres du bot, activez \'Message Content Intent\' et \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Inviter le Bot au Serveur';

  @override
  String get discordStep3Description =>
      'Utilisez le générateur d\'URL OAuth2 pour inviter le bot à votre serveur Discord avec les permissions nécessaires.';

  @override
  String get discordStep4Title => 'Configurer dans l\'Application';

  @override
  String get discordStep4Description =>
      'Entrez votre token de bot dans les paramètres de l\'application (contactez le support si vous avez besoin d\'aide).';

  @override
  String get discordStep5Title => 'Sélectionner un Canal';

  @override
  String get discordStep5Description =>
      'Appuyez sur \'Sélectionner Canal Discord\', choisissez votre serveur, puis sélectionnez le canal à analyser.';

  @override
  String get gotIt => 'Compris';

  @override
  String get selectFile => 'Sélectionner fichier';

  @override
  String get analyzeSelectedMetrics => 'Analyser les métriques sélectionnées';

  @override
  String get analyze20RandomMetrics => 'Analyser 20 métriques aléatoires';

  @override
  String get membershipOptions => 'Options d\'adhésion';

  @override
  String get free => 'Gratuit';

  @override
  String get oneTimeUnlock => 'Déverrouillage unique du rapport';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Extension Discord';

  @override
  String get analyze => 'Analyser';

  @override
  String get report => 'Rapport';

  @override
  String get pdfReport => 'Rapport PDF';

  @override
  String get openPdf => 'Ouvrir le PDF';

  @override
  String get sharePdf => 'Partager le PDF';

  @override
  String get printPdf => 'Imprimer le PDF';

  @override
  String get closePdfPreview => 'Fermer la fenêtre d\'aperçu PDF';

  @override
  String get openPdfPreview => 'Ouvrir la fenêtre d\'aperçu PDF';

  @override
  String get pdfPreviewDescription =>
      'La fenêtre PDF intégrée démarre fermée pour garder le rapport compact.';

  @override
  String get notNow => 'Pas maintenant';

  @override
  String get unlockThisReport => 'Déverrouiller ce rapport - \$20';

  @override
  String get joinStandard => 'Rejoindre Standard - \$9.99/mois';

  @override
  String get instantUnlockTitle =>
      'Déverrouillage instantané du rapport - \$20';

  @override
  String get instantUnlockDescription =>
      'Ceci est un achat unique pour déverrouiller uniquement le rapport actuel. Aucun abonnement requis. Les futurs rapports nécessiteront des déverrouillages séparés ou un abonnement.\n\nProcéder au paiement ?';

  @override
  String get purchaseFor20 => 'Acheter pour \$20';

  @override
  String get share => 'Partager';

  @override
  String get print => 'Imprimer';

  @override
  String get save => 'Enregistrer';

  @override
  String get cancel => 'Annuler';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Chargement...';

  @override
  String get error => 'Erreur';

  @override
  String get success => 'Succès';

  @override
  String get conversations => 'Conversations';

  @override
  String get messages => 'Messages';

  @override
  String get selectConversation => 'Sélectionner une conversation';

  @override
  String get selectSmsConversation => 'Sélectionner SMS / RCS Chat';

  @override
  String get searchConversations => 'Rechercher des conversations...';

  @override
  String get loadingConversations => 'Chargement des conversations...';

  @override
  String get errorLoadingConversations =>
      'Erreur lors du chargement des conversations';

  @override
  String get selectConversationToAnalyze =>
      'Sélectionner une conversation à analyser';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analyser avec les métriques sélectionnées';

  @override
  String get loadConversationAndSelectMetric =>
      'Chargez une conversation et sélectionnez au moins une métrique';

  @override
  String get selectAtLeastOneMetric =>
      'Au moins une métrique doit être sélectionnée pour exécuter le rapport.';

  @override
  String get spinningMetricWheel => 'Tourne la roue des métriques...';

  @override
  String get loadConversationToAnalyze =>
      'Chargez une conversation pour analyser';

  @override
  String get noConversationsFound => 'Aucune conversation trouvée';

  @override
  String get permissionsRequired => 'Autorisations requises';

  @override
  String get smsPermission => 'Messages texte';

  @override
  String get contactsPermission => 'Contacts';

  @override
  String get smsPermissionDescription =>
      'Pour analyser vos conversations SMS pour les modèles de relation';

  @override
  String get contactsPermissionDescription =>
      'Pour afficher les noms des contacts au lieu des numéros de téléphone';

  @override
  String get analyzingMessage =>
      'Veuillez patienter pendant que votre analyse psychologique est générée par l\'IA...';

  @override
  String get analyzingStatus => 'Analyse de la conversation...';

  @override
  String get analyzingSubMessage =>
      'Veuillez patienter, ce processus peut prendre jusqu\'à une minute selon votre vitesse de connexion et la quantité de métriques sélectionnées';

  @override
  String get unlockFullReport => 'Déverrouiller et afficher tout ce rapport';

  @override
  String get fullReportLocked => 'Rapport complet verrouillé';

  @override
  String get upgradeToUnlock =>
      'Mettez à niveau votre adhésion pour déverrouiller le rapport complet d\'analyse psychologique avec toutes les métriques et informations détaillées.';

  @override
  String get language => 'Langue';

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Espagnol';

  @override
  String get french => 'Français';

  @override
  String get german => 'Allemand';

  @override
  String get italian => 'Italien';

  @override
  String get portuguese => 'Portugais';

  @override
  String get dutch => 'Néerlandais';

  @override
  String get russian => 'Russe';

  @override
  String get chinese => 'Chinois';

  @override
  String get japanese => 'Japonais';

  @override
  String get korean => 'Coréen';

  @override
  String get arabic => 'Arabe';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turc';

  @override
  String get polish => 'Polonais';

  @override
  String get ukrainian => 'Ukrainien';

  @override
  String get runAnotherAnalysis => 'Lancer une autre analyse ?';

  @override
  String get becomeMemberTitle =>
      'Devenez membre pour obtenir le rapport d\'analyse complet';

  @override
  String get becomeMemberSubtitle =>
      'Choisissez le niveau d\'accès qui correspond aux conversations et rapports que vous devez analyser.';

  @override
  String get benefitAnalyzeSms => 'Analyser les messages SMS';

  @override
  String get benefitReportPreview => 'Lancer un aperçu du rapport';

  @override
  String get benefitViewPartialReport => 'Voir environ 25 % du rapport';

  @override
  String get benefitLockedDetails => 'Détails du rapport complet verrouillés';

  @override
  String get currentFreeAccess => 'Accès gratuit actuel';

  @override
  String get benefitUnlockCurrentReport =>
      'Déverrouiller ce rapport complet actuel';

  @override
  String get benefitNoSubscription => 'Sans abonnement';

  @override
  String get benefitSavePrintShareThis =>
      'Enregistrer, imprimer et partager ce rapport';

  @override
  String get benefitBestSingleAnalysis =>
      'Idéal si vous n\'avez besoin que d\'une seule analyse';

  @override
  String get unlockThisReportShort => 'Déverrouiller ce rapport';

  @override
  String get benefitFullSmsReport => 'Rapport d\'analyse SMS complet';

  @override
  String get benefitSavePrintSharePdf =>
      'Enregistrer, imprimer et partager des rapports PDF';

  @override
  String get benefitTenReports => '10 rapports par période de 24 heures';

  @override
  String get benefitBestTextReview =>
      'Idéal pour l\'examen des relations par SMS';

  @override
  String get benefitDateRangeFilter => 'Filtrer l\'analyse par plage de dates';

  @override
  String get signUpStandard => 'S\'inscrire à l\'abonnement Standard';

  @override
  String get benefitAddToStandard => 'Ajouter à l\'abonnement Standard';

  @override
  String get benefitAnalyzeDiscord =>
      'Analyser les conversations des serveurs Discord';

  @override
  String get benefitRequiresBot => 'Nécessite l\'installation du bot';

  @override
  String get benefitBestGamers =>
      'Idéal pour les joueurs et les communautés Discord';

  @override
  String get addDiscordAnalysis => 'Ajouter l\'analyse Discord';

  @override
  String get requiresStandardMembership => 'Nécessite l\'abonnement Standard';

  @override
  String get comingSoon => 'Bientôt disponible';

  @override
  String get comingSoonWithNextUpdate =>
      'Bientôt disponible avec la prochaine mise à jour :';

  @override
  String get proMembershipTier => 'Niveau d\'abonnement Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Niveau d\'abonnement Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro comprend :';

  @override
  String get proGetsDescription =>
      'Analysez les fils de discussion de toutes les autres plateformes populaires de messagerie et de médias sociaux telles que :';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-mail et calendrier';

  @override
  String get proPlusGetsLabel => 'Pro-Plus comprend :';

  @override
  String get proPlusGetsDescription =>
      'Tout ce que propose Pro, plus l\'extension Discord à prix réduit.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Achat réussi ! Rapport déverrouillé.';

  @override
  String get purchaseFailed => 'L\'achat a échoué. Veuillez réessayer.';

  @override
  String get membershipActivated => 'Abonnement activ!';

  @override
  String get dateRangeFilter => 'Filtre de Plage de Dates';

  @override
  String get dateRangeOptional => '(optionnel)';

  @override
  String get startDate => 'Date de Début';

  @override
  String get endDate => 'Date de Fin';

  @override
  String get clear => 'Effacer';

  @override
  String get dateRangeRequiresMembership =>
      'Nécessite l\'abonnement Standard ou supérieur';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Sélectionner jusqu\'à $max. Actuel : $current';
  }

  @override
  String get clearSelections => 'Effacer les sélections';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analyser $count métriques aléatoires';
  }

  @override
  String get saveSelections => 'Enregistrer les Sélections';

  @override
  String get loadSelections => 'Charger les Sélections';

  @override
  String get saveMetricListName => 'Enregistrer la Liste de Métriques';

  @override
  String get enterListName => 'Entrez un nom pour cette liste de métriques:';

  @override
  String get chooseSavedMetrics =>
      'Choisissez la liste de métriques enregistrée:';

  @override
  String get noSavedLists =>
      'Aucune liste de métriques enregistrée à charger pour le moment.';

  @override
  String get metricListSaved => 'Liste de métriques enregistrée avec succès.';

  @override
  String get metricListLoaded => 'Liste de métriques chargée avec succès.';

  @override
  String get filters => 'Filtres';

  @override
  String get sortBy => 'Trier par:';

  @override
  String get recent => 'Récent';

  @override
  String get name => 'Nom';

  @override
  String get count => 'Nombre';

  @override
  String get namedOnly => 'Nom uniquement';

  @override
  String get minMessages => 'Min. messages:';

  @override
  String get minimumMessages => 'Minimum de messages:';

  @override
  String get executiveSummary => 'Résumé Exécutif';

  @override
  String get metricScores => 'Scores des Métriques';

  @override
  String get contextualEvidenceExamples => 'Exemples de Preuves Contextuelles';

  @override
  String get neutralSynthesis => 'Synthèse Neutre';

  @override
  String analysisOfSender(Object sender) {
    return 'Analyse de $sender (Expéditeur)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analyse de $receiver (Destinataire)';
  }

  @override
  String get finalConclusion => 'Conclusion Finale';

  @override
  String get metric_1_name => 'Mépris';

  @override
  String get metric_1_description =>
      'Recherche la supériorité, le dégoût, la moquerie, le langage de roulage des yeux ou les insultes qui placent un partenaire en dessous de l\'autre.';

  @override
  String get metric_2_name => 'Défensive';

  @override
  String get metric_2_description =>
      'Suit l\'autoprotection réflexe, les contre-attaques, les excuses et le refus de considérer la plainte de l\'autre personne.';

  @override
  String get metric_3_name => 'Blocage';

  @override
  String get metric_3_description =>
      'Identifie l\'arrêt, le retrait, l\'ignorance, le refus de répondre ou la fin des conversations pour éviter l\'engagement.';

  @override
  String get metric_4_name => 'Critique';

  @override
  String get metric_4_description =>
      'Détecte les attaques sur le caractère ou la personnalité au lieu de comportements, besoins ou incidents spécifiques.';

  @override
  String get metric_5_name => 'Indicateurs de Gaslighting';

  @override
  String get metric_5_description =>
      'Signale les tentatives de faire douter quelqu\'un de sa mémoire, perception, santé mentale ou légitimité de son expérience.';

  @override
  String get metric_6_name => 'Transfert de Blâme';

  @override
  String get metric_6_description =>
      'Mesure si la responsabilité est redirigée vers l\'autre partenaire au lieu d\'être reconnue directement.';

  @override
  String get metric_7_name => 'Motif d\'Escalade';

  @override
  String get metric_7_description =>
      'Évalue si le ton, les accusations, l\'intensité ou les menaces augmentent au lieu de se diriger vers une résolution.';

  @override
  String get metric_8_name => 'Reconnaissance des Tentatives de Réparation';

  @override
  String get metric_8_description =>
      'Vérifie si les excuses, l\'humour, les pauses, la réassurance ou les offres de paix sont remarquées et acceptées.';

  @override
  String get metric_9_name => 'Langage de Responsabilité';

  @override
  String get metric_9_description =>
      'Recherche une propriété claire du préjudice, une responsabilité spécifique et la volonté de changer le comportement.';

  @override
  String get metric_10_name => 'Respect des Limites';

  @override
  String get metric_10_description =>
      'Évalue si les limites énoncées autour du temps, de la vie privée, du corps, des émotions ou du contact sont respectées.';

  @override
  String get metric_11_name => 'Indicateurs de Contrôle Coercitif';

  @override
  String get metric_11_description =>
      'Signale les modèles d\'intimidation, de restriction, de surveillance, de dépendance ou de contrôle sur les choix et les mouvements.';

  @override
  String get metric_12_name => 'Langage de Menace';

  @override
  String get metric_12_description =>
      'Identifie les menaces explicites ou implicites impliquant la sécurité, l\'abandon, l\'exposition, la représaille ou la punition.';

  @override
  String get metric_13_name => 'Dédain';

  @override
  String get metric_13_description =>
      'Détecte le rejet des préoccupations, le traitement des besoins comme sans importance ou le refus de prendre la détresse au sérieux.';

  @override
  String get metric_14_name => 'Invalidation';

  @override
  String get metric_14_description =>
      'Mesure le déni, la moquerie ou la correction des émotions d\'une autre personne au lieu de les reconnaître.';

  @override
  String get metric_15_name => 'Expression d\'Empathie';

  @override
  String get metric_15_description =>
      'Recherche la prise de perspective, le soin, la reconnaissance émotionnelle et la préoccupation pour l\'expérience de l\'autre personne.';

  @override
  String get metric_16_name => 'Réciprocité';

  @override
  String get metric_16_description =>
      'Évalue si l\'attention, l\'effort, les excuses, le compromis et le soutien émotionnel circulent dans les deux sens.';

  @override
  String get metric_17_name => 'Régulation Émotionnelle';

  @override
  String get metric_17_description =>
      'Évalue la capacité de rester ancré, de faire une pause, de s\'apaiser et de communiquer sans réactivité explosive.';

  @override
  String get metric_18_name => 'Sarcasme Utilisé comme Dommage';

  @override
  String get metric_18_description =>
      'Signale le sarcasme utilisé pour rabaisser, punir, humilier ou déguiser l\'hostilité comme humour.';

  @override
  String get metric_19_name => 'Injures';

  @override
  String get metric_19_description =>
      'Identifie les étiquettes dérogatoires, les insultes, le blasphème dirigé contre la personne ou les attaques basées sur l\'identité.';

  @override
  String get metric_20_name => 'Motif de Traitement Silencieux';

  @override
  String get metric_20_description =>
      'Suit le silence utilisé comme punition, contrôle, évitement ou retrait de connexion.';

  @override
  String get metric_21_name => 'Cadre de Jalousie';

  @override
  String get metric_21_description =>
      'Évalue la suspicion, la possessivité, les accusations ou la jalousie présentées comme preuve de soin.';

  @override
  String get metric_22_name => 'Pression d\'Isolation';

  @override
  String get metric_22_description =>
      'Signale les efforts pour séparer un partenaire des amis, de la famille, des systèmes de soutien ou des perspectives extérieures.';

  @override
  String get metric_23_name => 'Indicateurs de Contrôle Financier';

  @override
  String get metric_23_description =>
      'Recherche le contrôle de l\'argent, des dépenses, de l\'emploi, de l\'accès aux comptes ou de l\'indépendance financière.';

  @override
  String get metric_24_name => 'Indicateurs d\'Invasion de la Vie Privée';

  @override
  String get metric_24_description =>
      'Détecte l\'espionnage, les demandes de mots de passe, les vérifications d\'appareils, le suivi de localisation ou les violations de la vie privée.';

  @override
  String get metric_25_name => 'Spécificité des Excuses';

  @override
  String get metric_25_description =>
      'Mesure si les excuses nomment le préjudice exact, l\'impact et la correction future au lieu de rester vagues.';

  @override
  String get metric_26_name => 'Pression de Pardon';

  @override
  String get metric_26_description =>
      'Signale les demandes de passer à autre chose, de pardonner rapidement ou d\'arrêter de discuter du préjudice avant la réparation.';

  @override
  String get metric_27_name => 'Minimisation';

  @override
  String get metric_27_description =>
      'Détecte la minimisation du préjudice, l\'appel des préoccupations sérieuses dramatiques ou la réduction de l\'impact pour éviter la responsabilité.';

  @override
  String get metric_28_name => 'Projection';

  @override
  String get metric_28_description =>
      'Recherche les accusations qui reflètent le propre comportement, les motifs ou les sentiments non résolus du locuteur.';

  @override
  String get metric_29_name => 'Motif d\'Interruption';

  @override
  String get metric_29_description =>
      'Suit les coupures, le fait de parler par-dessus, le refus de terminer ou le contrôle des tours de conversation.';

  @override
  String get metric_30_name => 'Déviation de Sujet';

  @override
  String get metric_30_description =>
      'Identifie le changement de sujet, l\'introduction de problèmes non liés ou l\'évitement de la préoccupation centrale.';

  @override
  String get metric_31_name => 'Orientation vers la Résolution';

  @override
  String get metric_31_description =>
      'Mesure si les messages visent des solutions, de la clarté, des accords et les prochaines étapes.';

  @override
  String get metric_32_name => 'Résolution Mutuelle de Problèmes';

  @override
  String get metric_32_description =>
      'Évalue le langage collaboratif, la responsabilité partagée, le brainstorming et la volonté de trouver des compromis viables.';

  @override
  String get metric_33_name => 'Inondation Émotionnelle';

  @override
  String get metric_33_description =>
      'Détecte le débordement, la panique, l\'arrêt, la spirale ou l\'incapacité de traiter pendant le conflit.';

  @override
  String get metric_34_name => 'Indices de Réponse de Peur';

  @override
  String get metric_34_description =>
      'Recherche l\'apaisement, un choix de mots prudent, la crainte, les préoccupations de sécurité ou la peur de la réaction du partenaire.';

  @override
  String get metric_35_name => 'Cohérence des Affirmations';

  @override
  String get metric_35_description =>
      'Évalue si les récits restent cohérents en interne à travers les messages et le temps.';

  @override
  String get metric_36_name => 'Souvenir Basé sur des Preuves';

  @override
  String get metric_36_description =>
      'Vérifie si les affirmations font référence à des événements concrets, des citations, des chronologies ou un comportement observable.';

  @override
  String get metric_37_name => 'Motif de Demande et de Retrait';

  @override
  String get metric_37_description =>
      'Suit un partenaire cherchant des réponses ou un changement pendant que l\'autre évite, se ferme ou sort.';

  @override
  String get metric_38_name => 'Indicateurs de Déséquilibre de Pouvoir';

  @override
  String get metric_38_description =>
      'Signale un pouvoir de décision inégal, la peur des conséquences, la dépendance, l\'intimidation ou le contrôle unilatéral.';

  @override
  String get metric_39_name => 'Désaccord Respectueux';

  @override
  String get metric_39_description =>
      'Mesure si le conflit préserve la dignité, la curiosité et le désaccord sans dégradation.';

  @override
  String get metric_40_name => 'Cycle de Rupture et Réparation';

  @override
  String get metric_40_description =>
      'Évalue si le conflit est suivi d\'une reconnaissance, d\'une reconnexion et d\'une réparation réelle.';

  @override
  String get metric_41_name => 'Retrait d\'Affection';

  @override
  String get metric_41_description =>
      'Détecte l\'amour, la chaleur, le sexe, l\'attention ou la réassurance retenus comme punition ou levier.';

  @override
  String get metric_42_name => 'Références d\'Humiliation Publique';

  @override
  String get metric_42_description =>
      'Signale les menaces, les blagues ou les actions qui embarrassent le partenaire devant les autres.';

  @override
  String get metric_43_name => 'Indices de Conflit Lié aux Substances';

  @override
  String get metric_43_description =>
      'Recherche l\'utilisation d\'alcool ou de drogues liée à l\'agression, au manque de fiabilité, au conflit ou au préjudice.';

  @override
  String get metric_44_name => 'Pression de Conflit Parental';

  @override
  String get metric_44_description =>
      'Identifie les enfants, la garde, les rôles parentaux ou la culpabilité parentale utilisés dans le conflit ou comme levier.';

  @override
  String get metric_45_name => 'Respect des Limites Sexuelles';

  @override
  String get metric_45_description =>
      'Évalue le respect du consentement, de la pression, du refus, du confort, du timing et de l\'autonomie sexuelle.';

  @override
  String get metric_46_name => 'Indicateurs de Harcèlement Numérique';

  @override
  String get metric_46_description =>
      'Suit les messages indésirables répétés, les appels spam, la pression en ligne, la surveillance ou l\'intimidation basée sur les plateformes.';

  @override
  String get metric_47_name => 'Langage de Surveillance';

  @override
  String get metric_47_description =>
      'Signale la vérification des allées et venues, la demande de preuves, le suivi du comportement ou la vérification constante.';

  @override
  String get metric_48_name => 'Orientation Future';

  @override
  String get metric_48_description =>
      'Mesure si les partenaires discutent d\'amélioration future, d\'engagements, de plans ou d\'une direction constructive.';

  @override
  String get metric_49_name => 'Signaux de Planification de Sécurité';

  @override
  String get metric_49_description =>
      'Recherche les tentatives de chercher de l\'aide, de créer une distance, de documenter le préjudice ou de planifier la sécurité physique/émotionnelle.';

  @override
  String get metric_50_name => 'Tentatives Mutuelles de Désescalade';

  @override
  String get metric_50_description =>
      'Suit les pauses, le langage apaisant, un ton plus doux, les temps morts et les tentatives des deux partenaires pour réduire l\'intensité.';

  @override
  String get metric_51_name => 'Indices d\'Attachement Sécurisé';

  @override
  String get metric_51_description =>
      'Identifie la confiance, la réassurance directe, la disponibilité émotionnelle et le confort avec la proximité et l\'indépendance.';

  @override
  String get metric_52_name => 'Activation de l\'Attachement Anxieux';

  @override
  String get metric_52_description =>
      'Signale le comportement de protestation, les besoins urgents de réassurance, la peur de l\'abandon et une sensibilité accrue à la distance.';

  @override
  String get metric_53_name => 'Distanciation de l\'Attachement Évitant';

  @override
  String get metric_53_description =>
      'Détecte la minimisation émotionnelle, les défenses d\'indépendance, le retrait de la vulnérabilité ou l\'inconfort avec les besoins.';

  @override
  String get metric_54_name => 'Signaux d\'Attachement Désorganisé';

  @override
  String get metric_54_description =>
      'Recherche les cycles d\'approche-évitement, la peur mélangée au besoin, les réactions chaotiques ou les modèles d\'intimité confus.';

  @override
  String get metric_55_name => 'Offres Émotionnelles et Réponses';

  @override
  String get metric_55_description =>
      'Mesure les invitations pour l\'attention, le confort ou la connexion et si elles sont acceptées ou manquées.';

  @override
  String get metric_56_name => 'Se Détourner de la Connexion';

  @override
  String get metric_56_description =>
      'Signale l\'ignorance, le rejet ou l\'échec à répondre aux offres de proximité ou de soutien.';

  @override
  String get metric_57_name => 'Se Retourner Contre la Connexion';

  @override
  String get metric_57_description =>
      'Détecte les réponses hostiles ou punitives aux tentatives d\'affection, de vulnérabilité ou de réparation.';

  @override
  String get metric_58_name => 'Primauté du Sentiment Positif';

  @override
  String get metric_58_description =>
      'Recherche la générosité, le bénéfice du doute, l\'affection et l\'interprétation du conflit à travers le soin.';

  @override
  String get metric_59_name => 'Primauté du Sentiment Négatif';

  @override
  String get metric_59_description =>
      'Signale l\'hypothèse de mauvaises intentions, l\'interprétation négative des messages neutres et le cadre hostile persistant.';

  @override
  String get metric_60_name => 'Motif de Départ Dur';

  @override
  String get metric_60_description =>
      'Identifie les conversations qui commencent par une accusation, une attaque, le mépris ou le blâme plutôt qu\'une demande.';

  @override
  String get metric_61_name => 'Motif de Départ Doux';

  @override
  String get metric_61_description =>
      'Recherche des ouvertures douces utilisant des sentiments, des besoins, des demandes spécifiques et un langage non accusatoire.';

  @override
  String get metric_62_name => 'Auto-apaisement Physiologique';

  @override
  String get metric_62_description =>
      'Évalue les tentatives de faire une pause, de respirer, de prendre de l\'espace ou de réguler le corps avant de continuer le conflit.';

  @override
  String get metric_63_name => 'Motif d\'Évitement de Conflit';

  @override
  String get metric_63_description =>
      'Suit l\'évitement répété de sujets nécessaires, de l\'inconfort, du désaccord ou de l\'honnêteté émotionnelle.';

  @override
  String get metric_64_name => 'Style de Conflit Volatile';

  @override
  String get metric_64_description =>
      'Détecte un conflit de haute intensité avec une expression directe qui peut encore inclure l\'engagement et la réparation.';

  @override
  String get metric_65_name => 'Style de Conflit Validant';

  @override
  String get metric_65_description =>
      'Mesure si les partenaires reconnaissent la perspective de l\'autre tout en étant en désaccord.';

  @override
  String get metric_66_name => 'Style de Conflit Hostile';

  @override
  String get metric_66_description =>
      'Signale la critique fréquente, le mépris, la défensive, les attaques et le cadre adversarial.';

  @override
  String get metric_67_name => 'Motif Hostile-Détaché';

  @override
  String get metric_67_description =>
      'Identifie l\'hostilité froide, le désengagement émotionnel, le mépris et une faible motivation de réparation.';

  @override
  String get metric_68_name => 'Volonté de Compromis';

  @override
  String get metric_68_description =>
      'Recherche la flexibilité, la négociation, les propositions de terrain d\'entente et les sacrifices qui respectent les deux besoins.';

  @override
  String get metric_69_name => 'Acceptation de l\'Influence';

  @override
  String get metric_69_description =>
      'Mesure l\'ouverture à être affecté par les sentiments, les besoins ou la perspective du partenaire.';

  @override
  String get metric_70_name => 'Signaux de Conflit Bloqué';

  @override
  String get metric_70_description =>
      'Signale des problèmes non résolus répétés liés aux valeurs, aux rêves, à l\'identité ou à l\'incompatibilité chronique.';

  @override
  String get metric_71_name => 'Cadre de Problème Soluble';

  @override
  String get metric_71_description =>
      'Détecte des définitions de problèmes pratiques et concrètes qui peuvent mener à des accords spécifiques.';

  @override
  String get metric_72_name => 'Références de Sens Partagé';

  @override
  String get metric_72_description =>
      'Recherche les valeurs, les rituels, les objectifs, les souvenirs ou le langage d\'identité qui crée une histoire de relation partagée.';

  @override
  String get metric_73_name => 'Conscience de la Carte d\'Amour';

  @override
  String get metric_73_description =>
      'Évalue la connaissance du monde intérieur, des facteurs de stress, des préférences, des peurs et de la vie quotidienne du partenaire.';

  @override
  String get metric_74_name => 'Affection et Admiration';

  @override
  String get metric_74_description =>
      'Identifie l\'appréciation, le respect, la chaleur, les compliments, la gratitude et le regard positif.';

  @override
  String get metric_75_name => 'Déséquilibre du Travail Émotionnel';

  @override
  String get metric_75_description =>
      'Signale un partenaire portant une planification disproportionnée, l\'apaisement, le souvenir, l\'explication ou l\'entretien de la relation.';

  @override
  String get metric_76_name => 'Rejet de la Charge Mentale';

  @override
  String get metric_76_description =>
      'Détecte la minimisation du travail de planification invisible, la coordination ménagère, la planification ou le suivi des responsabilités.';

  @override
  String get metric_77_name => 'Indices d\'Incompétence Armée';

  @override
  String get metric_77_description =>
      'Recherche les revendications d\'incapacité, de confusion ou d\'impuissance pour éviter une responsabilité équitable.';

  @override
  String get metric_78_name => 'Sensibilité aux Déclencheurs de Trauma';

  @override
  String get metric_78_description =>
      'Mesure la conscience des déclencheurs, des réponses au trauma et la manipulation prudente des sujets vulnérables.';

  @override
  String get metric_79_name => 'Indices d\'Hypervigilance';

  @override
  String get metric_79_description =>
      'Signale la recherche de danger, la surveillance excessive du ton, la peur des erreurs ou l\'alerte émotionnelle constante.';

  @override
  String get metric_80_name => 'Langage de Peur de l\'Abandon';

  @override
  String get metric_80_description =>
      'Détecte la peur d\'être laissé, remplacé, ignoré, rejeté ou abandonné émotionnellement.';

  @override
  String get metric_81_name => 'Motif de Recherche de Réassurance';

  @override
  String get metric_81_description =>
      'Suit les demandes répétées de preuve d\'amour, d\'engagement, de sécurité ou d\'intérêt continu.';

  @override
  String get metric_82_name => 'Cycle Poursuivant-Distant';

  @override
  String get metric_82_description =>
      'Identifie un partenaire qui intensifie la poursuite de proximité pendant que l\'autre augmente la distance.';

  @override
  String get metric_83_name => 'Accumulation de Ressentiment';

  @override
  String get metric_83_description =>
      'Recherche les griefs stockés, les références répétées au passé, l\'amertume et la dette émotionnelle non résolue.';

  @override
  String get metric_84_name => 'Comportement de Comptage de Points';

  @override
  String get metric_84_description =>
      'Signale le comptage transactionnel des fautes, des faveurs, des sacrifices ou des erreurs pour gagner un levier.';

  @override
  String get metric_85_name => 'Affection Conditionnelle';

  @override
  String get metric_85_description =>
      'Détecte l\'amour, l\'approbation, l\'accès ou la chaleur offerts uniquement lorsque la conformité est atteinte.';

  @override
  String get metric_86_name => 'Indicateurs de Love Bombing';

  @override
  String get metric_86_description =>
      'Signale l\'affection intense, les promesses, la pression ou l\'idéalisation utilisées pour accélérer l\'attachement ou le contrôle.';

  @override
  String get metric_87_name => 'Tentatives de Hoovering';

  @override
  String get metric_87_description =>
      'Identifie les tentatives de ramener quelqu\'un par la culpabilité, la nostalgie, les promesses, les crises ou l\'affection soudaine.';

  @override
  String get metric_88_name => 'Motif DARVO';

  @override
  String get metric_88_description =>
      'Détecte les réponses de nier, attaquer et inverser victime-auteur lorsqu\'on est confronté à un préjudice.';

  @override
  String get metric_89_name => 'Motif de Posture de Victime';

  @override
  String get metric_89_description =>
      'Signale l\'auto-victimisation récurrente qui évite la responsabilité ou redirige l\'attention du préjudice causé.';

  @override
  String get metric_90_name => 'Cadre de Supériorité Morale';

  @override
  String get metric_90_description =>
      'Recherche la droiture, les revendications de pureté ou la supériorité éthique utilisées pour dominer le conflit.';

  @override
  String get metric_91_name => 'Assassinat de Caractère';

  @override
  String get metric_91_description =>
      'Détecte des attaques larges sur l\'identité, l\'intégrité, la santé mentale ou la valeur plutôt que sur un comportement spécifique.';

  @override
  String get metric_92_name => 'Indicateurs de Triangulation';

  @override
  String get metric_92_description =>
      'Signale l\'introduction de tiers dans le conflit pour presser, comparer, valider ou déstabiliser le partenaire.';

  @override
  String get metric_93_name => 'Pression de Comparaison Sociale';

  @override
  String get metric_93_description =>
      'Recherche les comparaisons avec des ex, des amis, d\'autres couples ou des idéaux utilisés pour honte ou contraindre.';

  @override
  String get metric_94_name => 'Soutien de l\'Autonomie';

  @override
  String get metric_94_description =>
      'Mesure le respect des choix indépendants, des amitiés, des objectifs, des limites et de l\'agence personnelle.';

  @override
  String get metric_95_name => 'Respect du Consentement et du Choix';

  @override
  String get metric_95_description =>
      'Évalue si les décisions sont prises librement sans pression, culpabilité, menaces ou manipulation.';

  @override
  String get metric_96_name => 'Planification Collaborative';

  @override
  String get metric_96_description =>
      'Recherche la planification partagée, les décisions conjointes, les responsabilités coordonnées et le suivi pratique.';

  @override
  String get metric_97_name => 'Suivi de Réparation';

  @override
  String get metric_97_description =>
      'Mesure si les changements promis sont ensuite reflétés dans le comportement, pas seulement dans les mots.';

  @override
  String get metric_98_name => 'Preuve de Comportement Changé';

  @override
  String get metric_98_description =>
      'Vérifie les actions observables et répétées montrant l\'apprentissage, l\'ajustement ou le comportement nocif réduit.';

  @override
  String get metric_99_name => 'Langage de Sécurité Émotionnelle';

  @override
  String get metric_99_description =>
      'Identifie le langage qui invite à l\'honnêteté, réduit la peur, protège la dignité et rassure sur l\'expression sûre.';

  @override
  String get metric_100_name => 'Ambivalence Relationnelle';

  @override
  String get metric_100_description =>
      'Détecte l\'incertitude, l\'engagement mixte, les messages de tirer-pousser ou le désir peu clair de continuer.';

  @override
  String get unableToOpenConversations =>
      'Impossible d\'ouvrir les conversations';

  @override
  String get unableToOpenConversationsBody =>
      'Une erreur s\'est produite lors du chargement de vos conversations. Veuillez réessayer.';

  @override
  String get unableToLoadConversationsBody =>
      'Impossible de charger les conversations. Veuillez vérifier vos autorisations et réessayer.';

  @override
  String get errorLoadingConversationsBody =>
      'Erreur lors du chargement des conversations. Veuillez réessayer.';

  @override
  String get smsPermissionRequired => 'Permission SMS requise';

  @override
  String get smsPermissionRequiredBody =>
      'Pour analyser les conversations SMS, nous avons besoin de la permission de lire vos messages. Votre confidentialité est importante — les messages sont uniquement analysés localement et ne sont jamais stockés sur nos serveurs.';

  @override
  String get grantSmsPermission => 'Accorder la permission SMS';

  @override
  String get noSmsConversationsFound => 'Aucune conversation SMS trouvée';

  @override
  String get noConversationsMatchSearch =>
      'Aucune conversation ne correspond à votre recherche';

  @override
  String get noSmsMessagesOnDevice =>
      'Vous n\'avez pas de messages SMS sur cet appareil';

  @override
  String get tryDifferentSearch => 'Essayez un terme de recherche différent';

  @override
  String get clearSearch => 'Effacer la recherche';

  @override
  String selectedFile(String filename) {
    return 'Sélectionné: $filename';
  }

  @override
  String get invalidFile => 'Fichier invalide';

  @override
  String get fileImport => 'Importation de fichier';

  @override
  String get fileImportNotImplemented =>
      'L\'analyse de fichiers n\'est pas encore implémentée pour ce type de fichier.';

  @override
  String get errorPickingFile =>
      'Impossible d\'ouvrir le fichier. Veuillez réessayer.';

  @override
  String get readyToCapture => 'Prêt à capturer';

  @override
  String get readyToCaptureBody =>
      'Passez maintenant à l\'application Messages et commencez à prendre des captures d\'écran.\n\nRevenez à cette application lorsque vous avez terminé et appuyez sur \"Terminer et traiter\".';

  @override
  String get noScreenshotsToProcess => 'Aucune capture d\'écran à traiter.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Traitement de la capture $current sur $total...';
  }

  @override
  String get noMessagesFound => 'Aucun message trouvé';

  @override
  String get noMessagesFoundBody =>
      'Impossible d\'extraire des messages des captures d\'écran.\n\nAssurez-vous que les captures d\'écran montrent clairement la conversation.';

  @override
  String loadedMessages(int count) {
    return '$count messages chargés depuis les captures d\'écran';
  }

  @override
  String get processingError => 'Erreur de traitement';

  @override
  String get processingErrorBody =>
      'Erreur lors du traitement des captures d\'écran. Veuillez réessayer.';

  @override
  String metricListSavedAs(String name) {
    return 'Vos sélections ont été sauvegardées sous \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Les sélections \"$name\" ont été récupérées et appliquées.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count messages chargés depuis $name';
  }

  @override
  String get loadButton => 'Charger';

  @override
  String get photoPermissionRequired =>
      'L\'autorisation de la bibliothèque de photos est requise pour détecter les captures d\'écran.';

  @override
  String get initializingConnection =>
      'Initialisation de la connexion sécurisée...';

  @override
  String get configurationRequired => 'Configuration requise';

  @override
  String get goBack => 'Retour';

  @override
  String get enableDateRangeFiltering =>
      'Activer le filtrage par plage de dates';

  @override
  String get clearSelectedDateRange => 'Effacer la plage de dates sélectionnée';

  @override
  String get largeThreadNoticeTitle => 'AVIS À L\'UTILISATEUR';

  @override
  String get largeThreadNoticeBody =>
      'Lors du traitement de fils de discussion exceptionnellement volumineux, certains écrans de chargement de cette application pourraient dépasser une minute et demie.\n\nL\'application ne se bloque pas. Si vous voyez un indicateur de statut en rotation, l\'application est toujours en cours de chargement.\n\nVeuillez être patient dans ces cas, car le temps de chargement pourrait être plus long que d\'habitude par rapport à d\'autres applications, surtout pour un ensemble de données volumineux comme un fil avec 50 000 messages.';

  @override
  String get neverShowThisAgain => 'Ne plus afficher ce message';

  @override
  String loadingConversationWith(String name) {
    return 'Chargement de la conversation\navec $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Ouvrez l\'application Messages et sélectionnez la conversation\n2. Faites défiler jusqu\'au message le plus ancien que vous souhaitez analyser\n3. Appuyez sur \"Démarrer la capture\" ci-dessous\n4. Prenez des captures d\'écran tout en faisant défiler la conversation\n5. Une fois terminé, appuyez sur \"Terminer et traiter\"';

  @override
  String get howToCaptureIosMessages => 'Comment capturer les messages iOS';

  @override
  String get deepSeekApiKey => 'Clé API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Entrez votre clé API DeepSeek pour activer l\'analyse IA.';

  @override
  String get getYourApiKeyFrom =>
      'Obtenez votre clé API sur : https://platform.deepseek.com';

  @override
  String get apiKey => 'Clé API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Votre clé API est stockée en toute sécurité sur votre appareil et n\'est jamais partagée.';

  @override
  String get pleaseEnterApiKey => 'Veuillez entrer une clé API';

  @override
  String get apiKeySavedSuccessfully => 'Clé API enregistrée avec succès !';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Soyez patient, les ensembles de données de fils de texte plus longs prennent assez de temps à charger';

  @override
  String get almostThereBigOne =>
      'Presque terminé, Wow, celui-ci doit avoir été grand';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Soyez patient, les grands ensembles de données pourraient entraîner des temps de charge supérieurs à une minute et demie';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Continuant à charger le fil massif avec $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Aucun message trouvé dans la plage de dates sélectionnée. Veuillez sélectionner des dates différentes ou effacer le filtre de date.';

  @override
  String get purchaseCustomMetricTileTitle =>
      'Acheter une métrique personnalisée';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Pour un paiement unique de \$4.99, saisissez un nom et une définition de métrique personnalisée enregistrés définitivement avec vos autres métriques pour toute analyse future. Achetez des métriques personnalisées illimitées.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Acheter une métrique personnalisée';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Vous serez facturé \$4.99 (paiement unique) pour déverrouiller un emplacement de métrique personnalisée.\n\nLe nom et la définition de votre métrique personnalisée sont permanents et ne pourront jamais être modifiés une fois enregistrés, alors choisissez avec soin.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Acheter — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Nom de la métrique personnalisée';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Entrez le nom de votre métrique personnalisée :';

  @override
  String get purchaseCustomMetricNameHint => 'Nom de la métrique';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Confirmer le nom de la métrique';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered =>
      'Vous avez saisi :\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  C\'est DÉFINITIF et ne pourra JAMAIS être modifié.';

  @override
  String get purchaseCustomMetricReenterName => 'Oups — Re-saisir le nom';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Enregistrer le nom';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Définir : $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Saisissez la signification de votre métrique personnalisée : $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Décrivez ce que cette métrique signifie, quels comportements elle recherche et comment elle s\'applique à la dynamique relationnelle...';

  @override
  String get purchaseCustomMetricReenter => 'Oups — Re-saisir';

  @override
  String get purchaseCustomMetricSaveMeaning =>
      'OK — Enregistrer la signification';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Aperçu de votre métrique personnalisée';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Voici à quoi ressemblera votre tuile :';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  C\'est votre DERNIÈRE CHANCE de changer d\'avis.\nUne fois engagé, le nom et la définition sont permanents.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Tout annuler';

  @override
  String get purchaseCustomMetricCommit =>
      'S\'engager sur la métrique personnalisée';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" ajouté à vos métriques ! Vous pouvez maintenant la sélectionner pour analyse.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Traitement de l\'achat...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'En attente de confirmation du magasin.\nVeuillez ne pas fermer l\'application.';

  @override
  String get next => 'Suivant';

  @override
  String get cancelNotReady => 'Annuler — Je n\'étais pas prêt(e)';

  @override
  String get packGoodLabel => 'Le Bon';

  @override
  String get packBadLabel => 'La Brute';

  @override
  String get packUglyLabel => 'Le Truand';

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
