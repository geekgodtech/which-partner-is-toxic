// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Analizator Toksyczności Związków AI';

  @override
  String get psychologicalMetrics => 'Metryki Psychologiczne';

  @override
  String get metricsDescription =>
      'Mniej wybranych metryk zapewnia głębszą, bardziej skoncentrowaną analizę tych zachowań. Więcej wybranych metryk zapewnia szerszy raport z mniejszą ilością szczegółów na metrykę.';

  @override
  String get selectSMS => 'Wybierz SMS / RCS Czat';

  @override
  String get selectDiscordChannel => 'Wybierz kanał Discord';

  @override
  String get lightMode => 'Jasny';

  @override
  String get darkMode => 'Ciemny';

  @override
  String get discordSetupTitle => 'Jak Skonfigurować Discord';

  @override
  String get discordSetupDescription =>
      'Postępuj zgodnie z instrukcją, aby włączyć analizę kanałów Discord w aplikacji:';

  @override
  String get discordStep1Title => 'Utwórz Bota Discord';

  @override
  String get discordStep1Description =>
      'Przejdź do discord.com/developers, utwórz nową aplikację i dodaj bota. Skopiuj token bota.';

  @override
  String get discordStep2Title => 'Włącz Uprawnienia Bota';

  @override
  String get discordStep2Description =>
      'W ustawieniach bota włącz \'Message Content Intent\' i \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Zaproś Bota na Serwer';

  @override
  String get discordStep3Description =>
      'Użyj generatora URL OAuth2, aby zaprosić bota na swój serwer Discord z niezbędnymi uprawnieniami.';

  @override
  String get discordStep4Title => 'Skonfiguruj w Aplikacji';

  @override
  String get discordStep4Description =>
      'Wprowadź swój token bota w ustawieniach aplikacji (skontaktuj się z pomocą techniczną, jeśli potrzebujesz pomocy).';

  @override
  String get discordStep5Title => 'Wybierz Kanał';

  @override
  String get discordStep5Description =>
      'Dotknij \'Wybierz Kanał Discord\', wybierz swój serwer, a następnie wybierz kanał do analizy.';

  @override
  String get gotIt => 'Rozumiem';

  @override
  String get selectFile => 'Wybierz plik';

  @override
  String get analyzeSelectedMetrics => 'Analizuj wybrane metryki';

  @override
  String get analyze20RandomMetrics => 'Analizuj 20 losowych metryk';

  @override
  String get membershipOptions => 'Opcje członkostwa';

  @override
  String get free => 'Darmowy';

  @override
  String get oneTimeUnlock => 'Jednorazowe odblokowanie raportu';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Dodatek Discord';

  @override
  String get analyze => 'Analizuj';

  @override
  String get report => 'Raport';

  @override
  String get pdfReport => 'Raport PDF';

  @override
  String get openPdf => 'Otwórz PDF';

  @override
  String get sharePdf => 'Udostępnij PDF';

  @override
  String get printPdf => 'Drukuj PDF';

  @override
  String get closePdfPreview => 'Zamknij okno podglądu PDF';

  @override
  String get openPdfPreview => 'Otwórz okno podglądu PDF';

  @override
  String get pdfPreviewDescription =>
      'Wbudowane okno PDF zaczyna się zamknięte, aby raport był kompaktowy.';

  @override
  String get notNow => 'Nie teraz';

  @override
  String get unlockThisReport => 'Odblokuj ten raport - \$20';

  @override
  String get joinStandard => 'Dołącz do Standard - \$9.99/mies.';

  @override
  String get instantUnlockTitle => 'Natychmiastowe odblokowanie raportu - \$20';

  @override
  String get instantUnlockDescription =>
      'To jednorazowy zakup odblokowujący tylko bieżący raport. Subskrypcja nie jest wymagana. Przyszłe raporty będą wymagały oddzielnych odblokowań lub członkostwa.\n\nKontynuować płatność?';

  @override
  String get purchaseFor20 => 'Kup za \$20';

  @override
  String get share => 'Udostępnij';

  @override
  String get print => 'Drukuj';

  @override
  String get save => 'Zapisz';

  @override
  String get cancel => 'Anuluj';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get error => 'Błąd';

  @override
  String get success => 'Sukces';

  @override
  String get conversations => 'Rozmowy';

  @override
  String get messages => 'Wiadomości';

  @override
  String get selectConversation => 'Wybierz rozmowę';

  @override
  String get selectSmsConversation => 'Wybierz SMS / RCS Rozmowę';

  @override
  String get searchConversations => 'Szukaj rozmów...';

  @override
  String get loadingConversations => 'Ładowanie rozmów...';

  @override
  String get errorLoadingConversations => 'Błąd ładowania rozmów';

  @override
  String get selectConversationToAnalyze => 'Wybierz rozmowę do analizy';

  @override
  String get analyzeWithSelectedMetrics => 'Analizuj z wybranymi metrykami';

  @override
  String get loadConversationAndSelectMetric =>
      'Załaduj rozmowę i wybierz co najmniej jedną metrykę';

  @override
  String get selectAtLeastOneMetric =>
      'Aby uruchomić raport, należy wybrać co najmniej jedną metrykę.';

  @override
  String get spinningMetricWheel => 'Kręcenie kołem metryk...';

  @override
  String get loadConversationToAnalyze => 'Załaduj rozmowę do analizy';

  @override
  String get noConversationsFound => 'Nie znaleziono rozmów';

  @override
  String get permissionsRequired => 'Wymagane uprawnienia';

  @override
  String get smsPermission => 'Wiadomości tekstowe';

  @override
  String get contactsPermission => 'Kontakty';

  @override
  String get smsPermissionDescription =>
      'Aby analizować Twoje rozmowy SMS pod kątem wzorców relacji';

  @override
  String get contactsPermissionDescription =>
      'Aby wyświetlać nazwy kontaktów zamiast numerów telefonów';

  @override
  String get analyzingMessage =>
      'Poczekaj, aż Twoja analiza psychologiczna zostanie wygenerowana przez AI...';

  @override
  String get analyzingStatus => 'Analizowanie rozmowy...';

  @override
  String get analyzingSubMessage =>
      'Prosimy o cierpliwość, ten proces może potrwać do minuty w zależności od szybkości połączenia i liczby wybranych metryk';

  @override
  String get unlockFullReport => 'Odblokuj i pokaż cały ten raport';

  @override
  String get fullReportLocked => 'Pełny raport zablokowany';

  @override
  String get upgradeToUnlock =>
      'Ulepsz swoje członkostwo, aby odblokować pełny raport analizy psychologicznej ze wszystkimi metrykami i szczegółowymi spostrzeżeniami.';

  @override
  String get language => 'Język';

  @override
  String get english => 'Angielski';

  @override
  String get spanish => 'Hiszpański';

  @override
  String get french => 'Francuski';

  @override
  String get german => 'Niemiecki';

  @override
  String get italian => 'Włoski';

  @override
  String get portuguese => 'Portugalski';

  @override
  String get dutch => 'Holenderski';

  @override
  String get russian => 'Rosyjski';

  @override
  String get chinese => 'Chiński';

  @override
  String get japanese => 'Japoński';

  @override
  String get korean => 'Koreański';

  @override
  String get arabic => 'Arabski';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turecki';

  @override
  String get polish => 'Polski';

  @override
  String get ukrainian => 'Ukraiński';

  @override
  String get runAnotherAnalysis => 'Uruchomić kolejną analizę?';

  @override
  String get becomeMemberTitle =>
      'Zostań członkiem, aby otrzymać pełny raport analizy';

  @override
  String get becomeMemberSubtitle =>
      'Wybierz poziom dostępu odpowiadający rozmowom i raportom, które musisz przeanalizować.';

  @override
  String get benefitAnalyzeSms => 'Analizuj wiadomości tekstowe SMS';

  @override
  String get benefitReportPreview => 'Uruchom podgląd raportu';

  @override
  String get benefitViewPartialReport => 'Zobacz około 25% raportu';

  @override
  String get benefitLockedDetails => 'Szczegóły pełnego raportu zablokowane';

  @override
  String get currentFreeAccess => 'Obecny bezpłatny dostęp';

  @override
  String get benefitUnlockCurrentReport => 'Odblokuj ten pełny raport';

  @override
  String get benefitNoSubscription => 'Bez subskrypcji';

  @override
  String get benefitSavePrintShareThis =>
      'Zapisz, drukuj i udostępnij ten raport';

  @override
  String get benefitBestSingleAnalysis =>
      'Najlepsze, jeśli potrzebujesz tylko jednej analizy';

  @override
  String get unlockThisReportShort => 'Odblokuj ten raport';

  @override
  String get benefitFullSmsReport => 'Pełny raport analizy SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Zapisuj, drukuj i udostępniaj raporty PDF';

  @override
  String get benefitTenReports => '10 raportów na okres 24 godzin';

  @override
  String get benefitBestTextReview =>
      'Najlepsze do przeglądu relacji w wiadomościach tekstowych';

  @override
  String get benefitDateRangeFilter => 'Filtruj analizę według zakresu dat';

  @override
  String get signUpStandard => 'Zarejestruj się w członkostwie Standard';

  @override
  String get benefitAddToStandard => 'Dodaj do członkostwa Standard';

  @override
  String get benefitAnalyzeDiscord => 'Analizuj czaty serwerów Discord';

  @override
  String get benefitRequiresBot => 'Wymaga instalacji bota';

  @override
  String get benefitBestGamers => 'Najlepsze dla graczy i społeczności Discord';

  @override
  String get addDiscordAnalysis => 'Dodaj analizę Discord';

  @override
  String get requiresStandardMembership => 'Wymaga członkostwa Standard';

  @override
  String get comingSoon => 'Wkrótce';

  @override
  String get comingSoonWithNextUpdate => 'Wkrótce w następnej aktualizacji:';

  @override
  String get proMembershipTier => 'Poziom członkostwa Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Poziom członkostwa Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro obejmuje:';

  @override
  String get proGetsDescription =>
      'Analizuj wątki czatów ze wszystkich innych popularnych platform komunikacyjnych i społecznościowych, takich jak:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-mail i kalendarz';

  @override
  String get proPlusGetsLabel => 'Pro-Plus obejmuje:';

  @override
  String get proPlusGetsDescription =>
      'Wszystko z Pro, plus dodatek Discord w obniżonej cenie.';

  @override
  String get purchaseSuccessfulUnlocked => 'Zakup udany! Raport odblokowany.';

  @override
  String get purchaseFailed => 'Zakup nie powiódł się. Spróbuj ponownie.';

  @override
  String get membershipActivated => 'Członkostwo aktywowano!';

  @override
  String get dateRangeFilter => 'Filtr Zakresu Dat';

  @override
  String get dateRangeOptional => '(opcjonalnie)';

  @override
  String get startDate => 'Data Początkowa';

  @override
  String get endDate => 'Data Końcowa';

  @override
  String get clear => 'Wyczyść';

  @override
  String get dateRangeRequiresMembership =>
      'Wymaga członkostwa Standard lub wyższego';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Wybierz do $max. Obecnie: $current';
  }

  @override
  String get clearSelections => 'Wyczyść wybory';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analizuj $count losowych metryk';
  }

  @override
  String get saveSelections => 'Zapisz Wybory';

  @override
  String get loadSelections => 'Wczytaj Wybory';

  @override
  String get saveMetricListName => 'Zapisz Listę Metryk';

  @override
  String get enterListName => 'Wprowadź nazwę dla tej listy metryk:';

  @override
  String get chooseSavedMetrics => 'Wybierz zapisaną listę metryk:';

  @override
  String get noSavedLists =>
      'Brak zapisanych list metryk do wczytania w tym momencie.';

  @override
  String get metricListSaved => 'Lista metryk zapisana pomyślnie.';

  @override
  String get metricListLoaded => 'Lista metryk wczytana pomyślnie.';

  @override
  String get filters => 'Filtry';

  @override
  String get sortBy => 'Sortuj według:';

  @override
  String get recent => 'Ostatnie';

  @override
  String get name => 'Nazwa';

  @override
  String get count => 'Liczba';

  @override
  String get namedOnly => 'Tylko nazwane';

  @override
  String get minMessages => 'Min. wiadomości:';

  @override
  String get minimumMessages => 'Minimum wiadomości:';

  @override
  String get executiveSummary => 'Podsumowanie';

  @override
  String get metricScores => 'Wyniki Metryk';

  @override
  String get contextualEvidenceExamples => 'Przykłady Dowodów Kontekstowych';

  @override
  String get neutralSynthesis => 'Neutralna Synteza';

  @override
  String analysisOfSender(Object sender) {
    return 'Analiza $sender (Nadawca)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analiza $receiver (Odbiorca)';
  }

  @override
  String get finalConclusion => 'Wnioski Końcowe';

  @override
  String get metric_1_name => 'Pogarda';

  @override
  String get metric_1_description =>
      'Szuka wyższości, obrzydzenia, drwiny, języka przewracania oczami lub obelg, które stawia jednego partnera poniżej drugiego.';

  @override
  String get metric_2_name => 'Obronność';

  @override
  String get metric_2_description =>
      'Śledzi odruchową samoobronę, kontrataki, wymówki i odmowę rozważenia skargi drugiej osoby.';

  @override
  String get metric_3_name => 'Budowanie muru';

  @override
  String get metric_3_description =>
      'Identyfikuje zamknięcie, wycofanie, ignorowanie, odmowę odpowiedzi lub kończenie rozmów, aby uniknąć zaangażowania.';

  @override
  String get metric_4_name => 'Krytyka';

  @override
  String get metric_4_description =>
      'Wykrywa ataki na charakter lub osobowość zamiast konkretnych zachowań, potrzeb lub incydentów.';

  @override
  String get metric_5_name => 'Wskaźniki gaslightingu';

  @override
  String get metric_5_description =>
      'Oznacza próby sprawienia, by ktoś wątpił w pamięć, percepcję, zdrowie psychiczne lub legalność swojego doświadczenia.';

  @override
  String get metric_6_name => 'Przenoszenie winy';

  @override
  String get metric_6_description =>
      'Mierzy, czy odpowiedzialność jest przekierowywana na drugiego partnera zamiast bezpośredniego uznania.';

  @override
  String get metric_7_name => 'Wzorzec eskalacji';

  @override
  String get metric_7_description =>
      'Ocenia, czy ton, oskarżenia, intensywność lub groźby rosną zamiast zmierzać do rozwiązania.';

  @override
  String get metric_8_name => 'Rozpoznawanie prób naprawy';

  @override
  String get metric_8_description =>
      'Sprawdza, czy przeprosiny, humor, pauzy, uspokojenie lub oferty pokoju są zauważane i akceptowane.';

  @override
  String get metric_9_name => 'Język odpowiedzialności';

  @override
  String get metric_9_description =>
      'Szuka jasnego uznania szkody, konkretnej odpowiedzialności i chęci zmiany zachowania.';

  @override
  String get metric_10_name => 'Szanowanie granic';

  @override
  String get metric_10_description =>
      'Ocenia, czy określone limity dotyczące czasu, prywatności, ciała, emocji lub kontaktu są respektowane.';

  @override
  String get metric_11_name => 'Wskaźniki przymusowej kontroli';

  @override
  String get metric_11_description =>
      'Oznacza wzorce zastraszania, ograniczania, monitorowania, zależności lub kontroli nad wyborami i ruchem.';

  @override
  String get metric_12_name => 'Język gróźb';

  @override
  String get metric_12_description =>
      'Identyfikuje wyraźne lub dorozumiane groźby dotyczące bezpieczeństwa, porzucenia, ujawnienia, odwetu lub kary.';

  @override
  String get metric_13_name => 'Bagatelizowanie';

  @override
  String get metric_13_description =>
      'Wykrywa odrzucanie obaw, traktowanie potrzeb jako nieistotnych lub odmowę poważnego traktowania złości.';

  @override
  String get metric_14_name => 'Unieważnianie';

  @override
  String get metric_14_description =>
      'Mierzy zaprzeczenie, drwiny lub korygowanie emocji innej osoby zamiast ich uznania.';

  @override
  String get metric_15_name => 'Wyrażanie empatii';

  @override
  String get metric_15_description =>
      'Szuka przyjmowania perspektywy, troski, rozpoznawania emocji i zainteresowania doświadczeniem drugiej osoby.';

  @override
  String get metric_16_name => 'Wzajemność';

  @override
  String get metric_16_description =>
      'Ocenia, czy uwaga, wysiłek, przeprosiny, kompromis i wsparcie emocjonalne płyną w obie strony.';

  @override
  String get metric_17_name => 'Regulacja emocjonalna';

  @override
  String get metric_17_description =>
      'Ocenia zdolność do pozostania uziemionym, pauzowania, samouspokojenia i komunikowania się bez wybuchowej reaktywności.';

  @override
  String get metric_18_name => 'Sarkazm używany jako szkoda';

  @override
  String get metric_18_description =>
      'Oznacza sarkazm używany do poniżania, karania, upokarzania lub maskowania wrogości jako humor.';

  @override
  String get metric_19_name => 'Okrzyki';

  @override
  String get metric_19_description =>
      'Identyfikuje obraźliwe etykiety, obelgi, wulgaryzmy skierowane do osoby lub ataki oparte na tożsamości.';

  @override
  String get metric_20_name => 'Wzorzec cichej terapii';

  @override
  String get metric_20_description =>
      'Śledzi ciszę używaną jako kara, kontrola, unikanie lub wycofanie połączenia.';

  @override
  String get metric_21_name => 'Framing zazdrości';

  @override
  String get metric_21_description =>
      'Ocenia podejrzenie, posiadliwość, oskarżenia lub zazdrość przedstawianą jako dowód troski.';

  @override
  String get metric_22_name => 'Presja izolacji';

  @override
  String get metric_22_description =>
      'Oznacza próby oddzielenia partnera od przyjaciół, rodziny, systemów wsparcia lub zewnętrznych perspektyw.';

  @override
  String get metric_23_name => 'Wskaźniki kontroli finansowej';

  @override
  String get metric_23_description =>
      'Szuka kontroli nad pieniędzmi, wydatkami, zatrudnieniem, dostępem do kont lub niezależnością finansową.';

  @override
  String get metric_24_name => 'Wskaźniki naruszenia prywatności';

  @override
  String get metric_24_description =>
      'Wykrywa szpiegowanie, żądania haseł, sprawdzanie urządzeń, śledzenie lokalizacji lub naruszenia prywatności.';

  @override
  String get metric_25_name => 'Konkretność przeprosin';

  @override
  String get metric_25_description =>
      'Mierzy, czy przeprosiny nazywają dokładną szkodę, wpływ i przyszłą korektę zamiast pozostawać niejasne.';

  @override
  String get metric_26_name => 'Presja wybaczenia';

  @override
  String get metric_26_description =>
      'Oznacza żądania pójścia dalej, szybkiego wybaczenia lub zaprzestania dyskusji o szkodę przed naprawą.';

  @override
  String get metric_27_name => 'Minimalizacja';

  @override
  String get metric_27_description =>
      'Wykrywa bagatelizowanie szkody, nazywanie poważnych obaw dramatycznymi lub zmniejszanie wpływu, aby uniknąć odpowiedzialności.';

  @override
  String get metric_28_name => 'Projekcja';

  @override
  String get metric_28_description =>
      'Szuka oskarżeń, które odzwierciedlają własne zachowanie, motywy lub nierozwiązane uczucia mówcy.';

  @override
  String get metric_29_name => 'Wzorzec przerywania';

  @override
  String get metric_29_description =>
      'Śledzi przerywanie, mówienie nad drugą osobą, odmowę ukończenia lub kontrolowanie turów rozmowy.';

  @override
  String get metric_30_name => 'Odwracanie tematu';

  @override
  String get metric_30_description =>
      'Identyfikuje zmianę tematu, podnoszenie niepowiązanych problemów lub unikanie głównego zmartwienia.';

  @override
  String get metric_31_name => 'Orientacja na rozwiązanie';

  @override
  String get metric_31_description =>
      'Mierzy, czy wiadomości zmierzają do rozwiązań, jasności, porozumień i kolejnych kroków.';

  @override
  String get metric_32_name => 'Wspólne rozwiązywanie problemów';

  @override
  String get metric_32_description =>
      'Ocenia język współpracy, wspólną odpowiedzialność, burzę mózgów i chęć znalezienia wykonalnych kompromisów.';

  @override
  String get metric_33_name => 'Zalew emocjonalny';

  @override
  String get metric_33_description =>
      'Wykrywa przytłoczenie, panikę, zamknięcie, spiralę lub niezdolność do przetwarzania podczas konfliktu.';

  @override
  String get metric_34_name => 'Wskaźniki reakcji na strach';

  @override
  String get metric_34_description =>
      'Szuka uspokajania, ostrożnego doboru słów, przerażenia, obaw o bezpieczeństwo lub strachu przed reakcją partnera.';

  @override
  String get metric_35_name => 'Spójność roszczeń';

  @override
  String get metric_35_description =>
      'Ocenia, czy relacje pozostają wewnętrznie spójne w wiadomościach i czasie.';

  @override
  String get metric_36_name => 'Wspomnienie oparte na dowodach';

  @override
  String get metric_36_description =>
      'Sprawdza, czy roszczenia odnoszą się do konkretnych wydarzeń, cytatów, osi czasu lub zachowań obserwowalnych.';

  @override
  String get metric_37_name => 'Wzorzec żądania wycofania';

  @override
  String get metric_37_description =>
      'Śledzi jednego partnera dążącego do odpowiedzi lub zmiany, podczas gdy drugi unika, zamyka się lub wychodzi.';

  @override
  String get metric_38_name => 'Wskaźniki nierównowagi siły';

  @override
  String get metric_38_description =>
      'Oznacza nierówną moc decyzyjną, strach przed konsekwencjami, zależność, zastraszanie lub jednostronną kontrolę.';

  @override
  String get metric_39_name => 'Szanowna niezgoda';

  @override
  String get metric_39_description =>
      'Mierzy, czy konflikt zachowuje godność, ciekawość i niezgodę bez degradacji.';

  @override
  String get metric_40_name => 'Cykl zerwania i naprawy';

  @override
  String get metric_40_description =>
      'Ocenia, czy konflikt jest następowany przez uznanie, ponowne połączenie i rzeczywistą naprawę.';

  @override
  String get metric_41_name => 'Wycofanie uczuć';

  @override
  String get metric_41_description =>
      'Wykrywa wstrzymywanie miłości, ciepła, seksu, uwagi lub uspokojenia jako kary lub dźwigni.';

  @override
  String get metric_42_name => 'Odniesienia do publicznego upokorzenia';

  @override
  String get metric_42_description =>
      'Oznacza groźby, żarty lub działania, które zawstydzają partnera przed innymi.';

  @override
  String get metric_43_name => 'Wskaźniki konfliktu związanego z substancjami';

  @override
  String get metric_43_description =>
      'Szuka używania alkoholu lub narkotyków związanego z agresją, niewiarygodnością, konfliktem lub szkodą.';

  @override
  String get metric_44_name => 'Presja konfliktu rodzicielskiego';

  @override
  String get metric_44_description =>
      'Identyfikuje dzieci, opiekę, role rodzicielskie lub winę rodzicielską używaną w konflikcie lub jako dźwignię.';

  @override
  String get metric_45_name => 'Szanowanie granic seksualnych';

  @override
  String get metric_45_description =>
      'Ocenia szacunek dla zgody, presji, odmowy, komfortu, czasu i autonomii seksualnej.';

  @override
  String get metric_46_name => 'Wskaźniki nękania cyfrowego';

  @override
  String get metric_46_description =>
      'Śledzi powtarzające się niechciane wiadomości, połączenia spam, presję online, nadzór lub zastraszanie oparte na platformie.';

  @override
  String get metric_47_name => 'Język monitorowania lub nadzoru';

  @override
  String get metric_47_description =>
      'Oznacza sprawdzanie miejsca pobytu, żądanie dowodów, śledzenie zachowania lub ciągłe weryfikowanie.';

  @override
  String get metric_48_name => 'Orientacja na przyszłość';

  @override
  String get metric_48_description =>
      'Mierzy, czy partnerzy dyskutują o przyszłej poprawie, zobowiązaniach, planach lub konstruktywnym kierunku.';

  @override
  String get metric_49_name => 'Sygnały planowania bezpieczeństwa';

  @override
  String get metric_49_description =>
      'Szuka prób szukania pomocy, tworzenia dystansu, dokumentowania szkody lub planowania bezpieczeństwa fizycznego/emocjonalnego.';

  @override
  String get metric_50_name => 'Wspólne próby deeskalacji';

  @override
  String get metric_50_description =>
      'Śledzi pauzy, uspokajający język, łagodniejszy ton, przerwy i próby obu partnerów zmniejszenia intensywności.';

  @override
  String get metric_51_name => 'Wskaźniki bezpiecznego przywiązania';

  @override
  String get metric_51_description =>
      'Identyfikuje zaufanie, bezpośrednie uspokojenie, dostępność emocjonalną i komfort z bliskością i niezależnością.';

  @override
  String get metric_52_name => 'Aktywacja lękliwego przywiązania';

  @override
  String get metric_52_description =>
      'Oznacza zachowanie protestu, pilne potrzeby uspokojenia, lęk przed porzuceniem i zwiększoną wrażliwość na dystans.';

  @override
  String get metric_53_name => 'Dystans unikającego przywiązania';

  @override
  String get metric_53_description =>
      'Wykrywa minimalizację emocjonalną, obrony niezależności, wycofanie z wrażliwości lub dyskomfort z potrzebami.';

  @override
  String get metric_54_name => 'Sygnały dezorganizowanego przywiązania';

  @override
  String get metric_54_description =>
      'Szuka cykli zbliżania-unikania, lęku wymieszanego z potrzebą, chaotycznych reakcji lub mylących wzorców intymności.';

  @override
  String get metric_55_name => 'Emocjonalne oferty i odpowiedzi';

  @override
  String get metric_55_description =>
      'Mierzy zaproszenia do uwagi, komfortu lub połączenia i czy są akceptowane lub pomijane.';

  @override
  String get metric_56_name => 'Odwracanie się od połączenia';

  @override
  String get metric_56_description =>
      'Oznacza ignorowanie, odrzucanie lub nieodpowiadanie na oferty bliskości lub wsparcia.';

  @override
  String get metric_57_name => 'Odwracanie się przeciwko połączeniu';

  @override
  String get metric_57_description =>
      'Wykrywa wrogie lub karne odpowiedzi na próby uczucia, wrażliwości lub naprawy.';

  @override
  String get metric_58_name => 'Nadrzędność pozytywnych sentymentów';

  @override
  String get metric_58_description =>
      'Szuka hojności, korzyści wątpliwości, uczucia i interpretowania konfliktu przez troskę.';

  @override
  String get metric_59_name => 'Nadrzędność negatywnych sentymentów';

  @override
  String get metric_59_description =>
      'Oznacza zakładanie złych intencji, negatywną interpretację neutralnych wiadomości i ciągłe wrogie ramowanie.';

  @override
  String get metric_60_name => 'Wzorzec surowego początku';

  @override
  String get metric_60_description =>
      'Identyfikuje rozmowy zaczynające się od oskarżenia, ataku, pogardy lub winy zamiast prośby.';

  @override
  String get metric_61_name => 'Wzorzec łagodnego początku';

  @override
  String get metric_61_description =>
      'Szuka łagodnych otwarć używających uczuć, potrzeb, konkretnych próśb i nieoskarżycielskiego języka.';

  @override
  String get metric_62_name => 'Fizjologiczne samouspokojenie';

  @override
  String get metric_62_description =>
      'Ocenia próby pauzowania, oddychania, wzięcia przestrzeni lub regulacji ciała przed kontynuowaniem konfliktu.';

  @override
  String get metric_63_name => 'Wzorzec unikania konfliktu';

  @override
  String get metric_63_description =>
      'Śledzi powtarzające się unikanie koniecznych tematów, dyskomfortu, niezgody lub emocjonalnej szczerości.';

  @override
  String get metric_64_name => 'Zmienny styl konfliktu';

  @override
  String get metric_64_description =>
      'Wykrywa konflikt o wysokiej intensywności z bezpośrednią ekspresją, który może nadal obejmować zaangażowanie i naprawę.';

  @override
  String get metric_65_name => 'Walidujący styl konfliktu';

  @override
  String get metric_65_description =>
      'Mierzy, czy partnerzy uznają perspektywę drugiego podczas niezgody.';

  @override
  String get metric_66_name => 'Wrogi styl konfliktu';

  @override
  String get metric_66_description =>
      'Oznacza częstą krytykę, pogardę, obronność, ataki i konfrontacyjne ramowanie.';

  @override
  String get metric_67_name => 'Wzorzec wrogości-odłączenia';

  @override
  String get metric_67_description =>
      'Identyfikuje zimną wrogość, emocjonalne odłączenie, pogardę i niską motywację naprawy.';

  @override
  String get metric_68_name => 'Chęć kompromisu';

  @override
  String get metric_68_description =>
      'Szuka elastyczności, negocjacji, propozycji środka i poświęceń, które szanują obie potrzeby.';

  @override
  String get metric_69_name => 'Akceptacja wpływu';

  @override
  String get metric_69_description =>
      'Mierzy otwartość na bycie dotkniętym przez uczucia, potrzeby lub perspektywę partnera.';

  @override
  String get metric_70_name => 'Sygnały zablokowanego konfliktu';

  @override
  String get metric_70_description =>
      'Oznacza powtarzające się nierozwiązane problemy związane z wartościami, marzeniami, tożsamością lub chroniczną niekompatybilnością.';

  @override
  String get metric_71_name => 'Framing problemu rozwiązywalnego';

  @override
  String get metric_71_description =>
      'Wykrywa praktyczne, konkretne definicje problemów, które mogą prowadzić do konkretnych porozumień.';

  @override
  String get metric_72_name => 'Odniesienia wspólnego znaczenia';

  @override
  String get metric_72_description =>
      'Szuka wartości, rytuałów, celów, wspomnień lub języka tożsamości, który tworzy wspólną historię relacji.';

  @override
  String get metric_73_name => 'Świadomość mapy miłości';

  @override
  String get metric_73_description =>
      'Ocenia wiedzę o wewnętrznym świecie partnera, stresorach, preferencjach, lękach i życiu codziennym.';

  @override
  String get metric_74_name => 'Uczucie i podziw';

  @override
  String get metric_74_description =>
      'Identyfikuje docenienie, szacunek, ciepło, komplementy, wdzięczność i pozytywne nastawienie.';

  @override
  String get metric_75_name => 'Nierównowaga pracy emocjonalnej';

  @override
  String get metric_75_description =>
      'Oznacza jednego partnera noszącego nieproporcjonalne planowanie, uspokajanie, pamiętanie, wyjaśnianie lub utrzymanie relacji.';

  @override
  String get metric_76_name => 'Bagatelizowanie obciążenia psychicznego';

  @override
  String get metric_76_description =>
      'Wykrywa minimalizowanie niewidzialnej pracy planowania, koordynacji domowej, planowania lub śledzenia odpowiedzialności.';

  @override
  String get metric_77_name => 'Wskaźniki uzbrojonej niekompetencji';

  @override
  String get metric_77_description =>
      'Szuka twierdzenia niezdolności, zamieszania lub bezradności, aby uniknąć sprawiedliwej odpowiedzialności.';

  @override
  String get metric_78_name => 'Wrażliwość na wyzwalacze traumy';

  @override
  String get metric_78_description =>
      'Mierzy świadomość wyzwalaczy, reakcji na traumę i ostrożne traktowanie wrażliwych tematów.';

  @override
  String get metric_79_name => 'Wskaźniki nadczujności';

  @override
  String get metric_79_description =>
      'Oznacza skanowanie w poszukiwaniu niebezpieczeństwa, nadmierne monitorowanie tonu, lęk przed błędami lub ciągłą czujność emocjonalną.';

  @override
  String get metric_80_name => 'Język lęku przed porzuceniem';

  @override
  String get metric_80_description =>
      'Wykrywa lęk przed pozostawieniem, zastąpieniem, ignorowaniem, odrzuceniem lub emocjonalnym opuszczeniem.';

  @override
  String get metric_81_name => 'Wzorzec poszukiwania uspokojenia';

  @override
  String get metric_81_description =>
      'Śledzi powtarzające się prośby o dowód miłości, zaangażowania, bezpieczeństwa lub ciągłego zainteresowania.';

  @override
  String get metric_82_name => 'Cykl ścigającego-oddalającego';

  @override
  String get metric_82_description =>
      'Identyfikuje jednego partnera eskalującego pościg za bliskością, podczas gdy drugi zwiększa dystans.';

  @override
  String get metric_83_name => 'Akumulacja urazy';

  @override
  String get metric_83_description =>
      'Szuka przechowywanych skarg, powtarzających się odniesień do przeszłości, goryczy i nierozwiązanego długu emocjonalnego.';

  @override
  String get metric_84_name => 'Zachowanie liczenia punktów';

  @override
  String get metric_84_description =>
      'Oznacza transakcyjne liczenie wad, przysług, poświęceń lub błędów w celu uzyskania dźwigni.';

  @override
  String get metric_85_name => 'Warunkowa uczucie';

  @override
  String get metric_85_description =>
      'Wykrywa miłość, zatwierdzenie, dostęp lub ciepło oferowane tylko wtedy, gdy osiągnięto zgodność.';

  @override
  String get metric_86_name => 'Wskaźniki bombardowania miłością';

  @override
  String get metric_86_description =>
      'Oznacza intensywną uczucie, obietnice, presję lub idealizację używaną do przyspieszenia przywiązania lub kontroli.';

  @override
  String get metric_87_name => 'Próby wciągania';

  @override
  String get metric_87_description =>
      'Identyfikuje próby wciągnięcia kogoś z powrotem przez winę, nostalgię, obietnice, kryzysy lub nagłe uczucie.';

  @override
  String get metric_88_name => 'Wzorzec DARVO';

  @override
  String get metric_88_description =>
      'Wykrywa zaprzeczenie, atak i odwrócenie ofiary-sprawcy, gdy konfrontowano ze szkodą.';

  @override
  String get metric_89_name => 'Wzorzec postawy ofiary';

  @override
  String get metric_89_description =>
      'Oznacza powtarzające się samowictimizację, która unika odpowiedzialności lub przekierowuje uwagę od wyrządzonej szkody.';

  @override
  String get metric_90_name => 'Framing moralnej wyższości';

  @override
  String get metric_90_description =>
      'Szuka prawości, roszczeń czystości lub moralnej wyższości używanej do dominowania konfliktu.';

  @override
  String get metric_91_name => 'Zabójstwo charakteru';

  @override
  String get metric_91_description =>
      'Wykrywa szerokie ataki na tożsamość, integralność, zdrowie psychiczne lub wartość zamiast konkretnego zachowania.';

  @override
  String get metric_92_name => 'Wskaźniki triangulacji';

  @override
  String get metric_92_description =>
      'Oznacza wprowadzanie stron trzecich do konfliktu, aby wywierać presję, porównywać, walidować lub destabilizować partnera.';

  @override
  String get metric_93_name => 'Presja porównania społecznego';

  @override
  String get metric_93_description =>
      'Szuka porównań do byłych, przyjaciół, innych par lub ideałów używanych do wstydzania lub zmuszania.';

  @override
  String get metric_94_name => 'Wsparcie autonomii';

  @override
  String get metric_94_description =>
      'Mierzy szacunek dla niezależnych wyborów, przyjaźni, celów, granic i osobistej sprawczości.';

  @override
  String get metric_95_name => 'Szanowanie zgody i wyboru';

  @override
  String get metric_95_description =>
      'Ocenia, czy decyzje są podejmowane swobodnie bez presji, winy, gróźb lub manipulacji.';

  @override
  String get metric_96_name => 'Wspólne planowanie';

  @override
  String get metric_96_description =>
      'Szuka wspólnego harmonogramu, wspólnych decyzji, skoordynowanych odpowiedzialności i praktycznego wykonania.';

  @override
  String get metric_97_name => 'Wykonanie naprawy';

  @override
  String get metric_97_description =>
      'Mierzy, czy obiecane zmiany są później odzwierciedlone w zachowaniu, a nie tylko w słowach.';

  @override
  String get metric_98_name => 'Dowód zmienionego zachowania';

  @override
  String get metric_98_description =>
      'Sprawdza obserwowalne, powtarzające się działania pokazujące uczenie się, dostosowanie lub zmniejszone szkodliwe zachowanie.';

  @override
  String get metric_99_name => 'Język bezpieczeństwa emocjonalnego';

  @override
  String get metric_99_description =>
      'Identyfikuje język, który zaprasza do szczerości, obniża strach, chroni godność i uspokaja bezpieczną ekspresję.';

  @override
  String get metric_100_name => 'Niejednoznaczność relacji';

  @override
  String get metric_100_description =>
      'Wykrywa niepewność, mieszane zaangażowanie, przyciąganie-odpychanie lub niejasną chęć kontynuacji.';

  @override
  String get unableToOpenConversations => 'Nie można otworzyć rozmów';

  @override
  String get unableToOpenConversationsBody =>
      'Wystąpił błąd podczas ładowania rozmów. Spróbuj ponownie.';

  @override
  String get unableToLoadConversationsBody =>
      'Nie można załadować rozmów. Sprawdź uprawnienia i spróbuj ponownie.';

  @override
  String get errorLoadingConversationsBody =>
      'Błąd ładowania rozmów. Spróbuj ponownie.';

  @override
  String get smsPermissionRequired => 'Wymagane uprawnienie SMS';

  @override
  String get smsPermissionRequiredBody =>
      'Aby analizować rozmowy SMS, potrzebujemy uprawnienia do odczytu wiadomości. Twoja prywatność jest ważna — wiadomości są analizowane tylko lokalnie i nigdy nie są przechowywane na naszych serwerach.';

  @override
  String get grantSmsPermission => 'Przyznaj uprawnienie SMS';

  @override
  String get noSmsConversationsFound => 'Nie znaleziono rozmów SMS';

  @override
  String get noConversationsMatchSearch =>
      'Brak rozmów pasujących do wyszukiwania';

  @override
  String get noSmsMessagesOnDevice =>
      'Nie masz wiadomości SMS na tym urządzeniu';

  @override
  String get tryDifferentSearch => 'Spróbuj innego terminu wyszukiwania';

  @override
  String get clearSearch => 'Wyczyść wyszukiwanie';

  @override
  String selectedFile(String filename) {
    return 'Wybrano: $filename';
  }

  @override
  String get invalidFile => 'Nieprawidłowy plik';

  @override
  String get fileImport => 'Import pliku';

  @override
  String get fileImportNotImplemented =>
      'Analiza plików nie jest jeszcze zaimplementowana dla tego typu pliku.';

  @override
  String get errorPickingFile => 'Nie można otworzyć pliku. Spróbuj ponownie.';

  @override
  String get readyToCapture => 'Gotowy do przechwytywania';

  @override
  String get readyToCaptureBody =>
      'Przejdź teraz do aplikacji Wiadomości i zacznij robić zrzuty ekranu.\n\nWróć do tej aplikacji po zakończeniu i naciśnij \"Zakończ i przetwórz\".';

  @override
  String get noScreenshotsToProcess => 'Brak zrzutów ekranu do przetworzenia.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Przetwarzanie zrzutu $current z $total...';
  }

  @override
  String get noMessagesFound => 'Nie znaleziono wiadomości';

  @override
  String get noMessagesFoundBody =>
      'Nie można wyodrębnić wiadomości ze zrzutów ekranu.\n\nUpewnij się, że zrzuty ekranu wyraźnie pokazują rozmowę.';

  @override
  String loadedMessages(int count) {
    return '$count wiadomości załadowanych ze zrzutów ekranu';
  }

  @override
  String get processingError => 'Błąd przetwarzania';

  @override
  String get processingErrorBody =>
      'Błąd podczas przetwarzania zrzutów ekranu. Spróbuj ponownie.';

  @override
  String metricListSavedAs(String name) {
    return 'Twoje wybory zostały zapisane jako \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Wybory \"$name\" zostały pobrane i zastosowane.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count wiadomości załadowanych z $name';
  }

  @override
  String get loadButton => 'Załaduj';

  @override
  String get photoPermissionRequired =>
      'Uprawnienie biblioteki zdjęć jest wymagane do wykrywania zrzutów ekranu.';

  @override
  String get initializingConnection => 'Inicjowanie bezpiecznego połączenia...';

  @override
  String get configurationRequired => 'Wymagana konfiguracja';

  @override
  String get goBack => 'Wstecz';

  @override
  String get enableDateRangeFiltering => 'Włącz filtrowanie według zakresu dat';

  @override
  String get clearSelectedDateRange => 'Wyczyść wybrany zakres dat';

  @override
  String get largeThreadNoticeTitle => 'POWIADOMIENIE DLA UŻYTKOWNIKA';

  @override
  String get largeThreadNoticeBody =>
      'Przy pracy z wyjątkowo dużymi wątkami tekstowymi niektóre ekrany ładowania w tej aplikacji mogą czasem przekraczać półtorej minuty.\n\nAplikacja nie zawiesza się. Jeśli widzisz obracający się wskaźnik stanu, aplikacja nadal się ładuje.\n\nProszę o cierpliwość w tych przypadkach, ponieważ czas ładowania może być dłuższy niż zwykle w porównaniu do innych aplikacji, szczególnie przy pracy z dużym zestawem danych, takim jak wątek z 50 000 wiadomości.';

  @override
  String get neverShowThisAgain => 'Nie pokazuj tego komunikatu ponownie';

  @override
  String loadingConversationWith(String name) {
    return 'Ładowanie rozmowy\nz $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Otwórz aplikację Wiadomości i wybierz rozmowę\n2. Przewiń do najstarszej wiadomości, którą chcesz przeanalizować\n3. Kliknij \"Rozpocznij przechwytywanie\" poniżej\n4. Rób zrzuty ekranu podczas przewijania rozmowy\n5. Po zakończeniu kliknij \"Zakończ i przetwórz\"';

  @override
  String get howToCaptureIosMessages => 'Jak przechwytywać wiadomości iOS';

  @override
  String get deepSeekApiKey => 'Klucz API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Wprowadź swój klucz API DeepSeek, aby włączyć analizę AI.';

  @override
  String get getYourApiKeyFrom =>
      'Uzyskaj swój klucz API z: https://platform.deepseek.com';

  @override
  String get apiKey => 'Klucz API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Twój klucz API jest bezpiecznie przechowywany na Twoim urządzeniu i nigdy nie jest udostępniany.';

  @override
  String get pleaseEnterApiKey => 'Proszę wprowadzić klucz API';

  @override
  String get apiKeySavedSuccessfully => 'Klucz API został pomyślnie zapisany!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Proszę o cierpliwość, dłuższe zestawy danych wątków tekstowych ładują się dość długo';

  @override
  String get almostThereBigOne => 'Prawie gotowe, Wow, to musiało być duże';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Proszę o cierpliwość, duże zestawy danych mogą spowodować czas ładowania dłuższy niż półtorej minuty';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Kontynuuję ładowanie masywnego wątku z $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Nie znaleziono wiadomości w wybranym zakresie dat. Wybierz inne daty lub wyczyść filtr daty.';

  @override
  String get purchaseCustomMetricTileTitle => 'Kup Metrykę Własną';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Za jednorazową opłatą \$4.99 wprowadź własną nazwę i definicję metryki, która zostanie trwale zapisana obok innych metryk i będzie dostępna w każdej przyszłej analizie. Kupuj nieograniczoną liczbę metryk własnych.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Kup Metrykę Własną';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Zostanie pobrana opłata \$4.99 (jednorazowa) za odblokowanie jednego miejsca na metrykę własną.\n\nNazwa i definicja metryki własnej są trwałe i nie mogą być nigdy zmienione po zapisaniu, więc proszę dobrze przemyśleć swój wybór.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Kup — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Nazwa Metryki Własnej';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Wprowadź nazwę swojej metryki własnej:';

  @override
  String get purchaseCustomMetricNameHint => 'Nazwa Metryki';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Potwierdź Nazwę Metryki';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Wprowadzono:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Jest to OSTATECZNE i NIGDY nie może zostać zmienione.';

  @override
  String get purchaseCustomMetricReenterName => 'Ups — Wprowadź Ponownie Nazwę';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Zapisz Nazwę Metryki';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Zdefiniuj: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Wprowadź znaczenie swojej Metryki Własnej: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Opisz, co ta metryka oznacza, jakich zachowań szuka i jak odnosi się do dynamiki relacji...';

  @override
  String get purchaseCustomMetricReenter => 'Ups — Wprowadź Ponownie';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Zapisz Znaczenie';

  @override
  String get purchaseCustomMetricPreviewTitle => 'Podgląd Metryki Własnej';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Tak będzie wyglądać Twój kafelek:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  To Twoja OSTATNIA SZANSA na zmianę zdania.\nPo zatwierdzeniu nazwa i definicja są trwałe.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Anuluj Wszystko';

  @override
  String get purchaseCustomMetricCommit => 'Zatwierdź Metrykę Własną';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" dodano do Twoich metryk! Możesz teraz wybrać ją do analizy.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Przetwarzanie Zakupu...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Oczekiwanie na potwierdzenie ze sklepu.\nProszę nie zamykać aplikacji.';

  @override
  String get next => 'Dalej';

  @override
  String get cancelNotReady => 'Anuluj — Nie byłem/am gotowy/a';

  @override
  String get packGoodLabel => 'Dobry';

  @override
  String get packBadLabel => 'Zły';

  @override
  String get packUglyLabel => 'Brzydki';

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
