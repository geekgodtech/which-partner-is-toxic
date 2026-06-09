// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'ШІ-аналізатор токсичності стосунків';

  @override
  String get psychologicalMetrics => 'Психологічні метрики';

  @override
  String get metricsDescription =>
      'Менша кількість вибраних метрик забезпечує глибший, більш сконцентрований аналіз цієї поведінки. Більша кількість вибраних метрик забезпечує ширший звіт з меншою деталізацією по кожній метриці.';

  @override
  String get selectSMS => 'Вибрати SMS / RCS Чат';

  @override
  String get selectDiscordChannel => 'Вибрати канал Discord';

  @override
  String get lightMode => 'Світла';

  @override
  String get darkMode => 'Темна';

  @override
  String get discordSetupTitle => 'Як Налаштувати Discord';

  @override
  String get discordSetupDescription =>
      'Дотримуйтесь цих кроків, щоб увімкнути аналіз каналів Discord у додатку:';

  @override
  String get discordStep1Title => 'Створити Бот Discord';

  @override
  String get discordStep1Description =>
      'Перейдіть на discord.com/developers, створіть новий додаток і додайте бота. Скопіюйте токен бота.';

  @override
  String get discordStep2Title => 'Увімкнути Привілеї Бота';

  @override
  String get discordStep2Description =>
      'У налаштуваннях бота увімкніть \'Message Content Intent\' та \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Запросити Бота на Сервер';

  @override
  String get discordStep3Description =>
      'Використовуйте генератор URL OAuth2, щоб запросити бота на свій сервер Discord з необхідними дозволами.';

  @override
  String get discordStep4Title => 'Налаштувати в Додатку';

  @override
  String get discordStep4Description =>
      'Введіть свій токен бота в налаштуваннях додатку (зв\'яжіться з підтримкою, якщо потрібна допомога).';

  @override
  String get discordStep5Title => 'Вибрати Канал';

  @override
  String get discordStep5Description =>
      'Натисніть \'Вибрати Канал Discord\', виберіть свій сервер, потім виберіть канал для аналізу.';

  @override
  String get gotIt => 'Зрозумів';

  @override
  String get selectFile => 'Вибрати файл';

  @override
  String get analyzeSelectedMetrics => 'Аналізувати вибрані метрики';

  @override
  String get analyze20RandomMetrics => 'Аналізувати 20 випадкових метрик';

  @override
  String get membershipOptions => 'Варіанти підписки';

  @override
  String get free => 'Безкоштовно';

  @override
  String get oneTimeUnlock => 'Разове розблокування звіту';

  @override
  String get standard => 'Стандарт';

  @override
  String get discordAddon => 'Доповнення Discord';

  @override
  String get analyze => 'Аналізувати';

  @override
  String get report => 'Звіт';

  @override
  String get pdfReport => 'PDF-звіт';

  @override
  String get openPdf => 'Відкрити PDF';

  @override
  String get sharePdf => 'Поділитися PDF';

  @override
  String get printPdf => 'Друкувати PDF';

  @override
  String get closePdfPreview => 'Закрити вікно попереднього перегляду PDF';

  @override
  String get openPdfPreview => 'Відкрити вікно попереднього перегляду PDF';

  @override
  String get pdfPreviewDescription =>
      'Вбудоване вікно PDF спочатку закрите, щоб звіт залишався компактним.';

  @override
  String get notNow => 'Не зараз';

  @override
  String get unlockThisReport => 'Розблокувати цей звіт - \$20';

  @override
  String get joinStandard => 'Приєднатися до Стандарт - \$9.99/міс';

  @override
  String get instantUnlockTitle => 'Миттєве розблокування звіту - \$20';

  @override
  String get instantUnlockDescription =>
      'Це разова покупка для розблокування лише поточного звіту. Підписка не потрібна. Майбутні звіти потребуватимуть окремих розблокувань або членства.\n\nПродовжити оплату?';

  @override
  String get purchaseFor20 => 'Купити за \$20';

  @override
  String get share => 'Поділитися';

  @override
  String get print => 'Друкувати';

  @override
  String get save => 'Зберегти';

  @override
  String get cancel => 'Скасувати';

  @override
  String get ok => 'Гаразд';

  @override
  String get loading => 'Завантаження...';

  @override
  String get error => 'Помилка';

  @override
  String get success => 'Успіх';

  @override
  String get conversations => 'Розмови';

  @override
  String get messages => 'Повідомлення';

  @override
  String get selectConversation => 'Вибрати розмову';

  @override
  String get selectSmsConversation => 'Вибрати SMS / RCS розмову';

  @override
  String get searchConversations => 'Пошук розмов...';

  @override
  String get loadingConversations => 'Завантаження розмов...';

  @override
  String get errorLoadingConversations => 'Помилка завантаження розмов';

  @override
  String get selectConversationToAnalyze => 'Виберіть розмову для аналізу';

  @override
  String get analyzeWithSelectedMetrics => 'Аналізувати з вибраними метриками';

  @override
  String get loadConversationAndSelectMetric =>
      'Завантажте розмову та виберіть принаймні одну метрику';

  @override
  String get selectAtLeastOneMetric =>
      'Для запуску звіту потрібно вибрати принаймні одну метрику.';

  @override
  String get spinningMetricWheel => 'Обертання колеса метрик...';

  @override
  String get loadConversationToAnalyze => 'Завантажте розмову для аналізу';

  @override
  String get noConversationsFound => 'Розмов не знайдено';

  @override
  String get permissionsRequired => 'Потрібні дозволи';

  @override
  String get smsPermission => 'Текстові повідомлення';

  @override
  String get contactsPermission => 'Контакти';

  @override
  String get smsPermissionDescription =>
      'Для аналізу ваших SMS-розмов на наявність шаблонів стосунків';

  @override
  String get contactsPermissionDescription =>
      'Для відображення імен контактів замість номерів телефонів';

  @override
  String get analyzingMessage =>
      'Зачекайте, поки ваш психологічний аналіз генерується ШІ...';

  @override
  String get analyzingStatus => 'Аналіз розмови...';

  @override
  String get analyzingSubMessage =>
      'Будь ласка, наберіться терпіння, цей процес може зайняти до хвилини залежно від швидкості вашого з\'єднання та кількості вибраних метрик';

  @override
  String get unlockFullReport => 'Розблокувати та показати весь цей звіт';

  @override
  String get fullReportLocked => 'Повний звіт заблоковано';

  @override
  String get upgradeToUnlock =>
      'Оновіть своє членство, щоб розблокувати повний звіт психологічного аналізу з усіма метриками та детальними висновками.';

  @override
  String get language => 'Мова';

  @override
  String get english => 'Англійська';

  @override
  String get spanish => 'Іспанська';

  @override
  String get french => 'Французька';

  @override
  String get german => 'Німецька';

  @override
  String get italian => 'Італійська';

  @override
  String get portuguese => 'Португальська';

  @override
  String get dutch => 'Нідерландська';

  @override
  String get russian => 'Російська';

  @override
  String get chinese => 'Китайська';

  @override
  String get japanese => 'Японська';

  @override
  String get korean => 'Корейська';

  @override
  String get arabic => 'Арабська';

  @override
  String get hindi => 'Гінді';

  @override
  String get turkish => 'Турецька';

  @override
  String get polish => 'Польська';

  @override
  String get ukrainian => 'Українська';

  @override
  String get runAnotherAnalysis => 'Запустити ще один аналіз?';

  @override
  String get becomeMemberTitle =>
      'Станьте учасником, щоб отримати повний звіт аналізу';

  @override
  String get becomeMemberSubtitle =>
      'Виберіть рівень доступу, що відповідає розмовам і звітам, які вам потрібно проаналізувати.';

  @override
  String get benefitAnalyzeSms => 'Аналіз текстових SMS-повідомлень';

  @override
  String get benefitReportPreview => 'Запустити попередній перегляд звіту';

  @override
  String get benefitViewPartialReport => 'Переглянути близько 25% звіту';

  @override
  String get benefitLockedDetails => 'Повні деталі звіту заблоковано';

  @override
  String get currentFreeAccess => 'Поточний безкоштовний доступ';

  @override
  String get benefitUnlockCurrentReport => 'Розблокувати цей повний звіт';

  @override
  String get benefitNoSubscription => 'Без підписки';

  @override
  String get benefitSavePrintShareThis =>
      'Зберегти, надрукувати та поділитися цим звітом';

  @override
  String get benefitBestSingleAnalysis =>
      'Найкраще, якщо вам потрібен лише один аналіз';

  @override
  String get unlockThisReportShort => 'Розблокувати цей звіт';

  @override
  String get benefitFullSmsReport => 'Повний звіт аналізу SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Зберігати, друкувати та ділитися PDF-звітами';

  @override
  String get benefitTenReports => '10 звітів за 24-годинний період';

  @override
  String get benefitBestTextReview =>
      'Найкраще для аналізу стосунків за текстовими повідомленнями';

  @override
  String get benefitDateRangeFilter => 'Фільтрувати аналіз за діапазоном дат';

  @override
  String get signUpStandard => 'Підписатися на Стандарт';

  @override
  String get benefitAddToStandard => 'Додати до підписки Стандарт';

  @override
  String get benefitAnalyzeDiscord => 'Аналіз чатів серверів Discord';

  @override
  String get benefitRequiresBot => 'Потрібне встановлення бота';

  @override
  String get benefitBestGamers => 'Найкраще для геймерів і спільнот Discord';

  @override
  String get addDiscordAnalysis => 'Додати аналіз Discord';

  @override
  String get requiresStandardMembership => 'Потрібна підписка Стандарт';

  @override
  String get comingSoon => 'Незабаром';

  @override
  String get comingSoonWithNextUpdate => 'Незабаром у наступному оновленні:';

  @override
  String get proMembershipTier => 'Рівень підписки Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Рівень підписки Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro включає:';

  @override
  String get proGetsDescription =>
      'Аналізуйте гілки чатів з усіх інших популярних платформ обміну повідомленнями та соціальних мереж, таких як:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), електронна пошта та календар';

  @override
  String get proPlusGetsLabel => 'Pro-Plus включає:';

  @override
  String get proPlusGetsDescription =>
      'Усе, що є в Pro, плюс доповнення Discord за зниженою ціною.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Покупка успішна! Звіт розблоковано.';

  @override
  String get purchaseFailed =>
      'Покупка не вдалася. Будь ласка, спробуйте ще раз.';

  @override
  String get membershipActivated => 'Підписку активовано!';

  @override
  String get dateRangeFilter => 'Фільтр діапазону дат';

  @override
  String get dateRangeOptional => '(необов\'язково)';

  @override
  String get startDate => 'Початкова дата';

  @override
  String get endDate => 'Кінцева дата';

  @override
  String get clear => 'Очистити';

  @override
  String get dateRangeRequiresMembership =>
      'Потребує підписку Standard або вище';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Вибрати до $max. Поточний: $current';
  }

  @override
  String get clearSelections => 'Очистити вибір';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Аналізувати $count випадкових метрик';
  }

  @override
  String get saveSelections => 'Зберегти Вибір';

  @override
  String get loadSelections => 'Завантажити Вибори';

  @override
  String get saveMetricListName => 'Зберегти Список Метрик';

  @override
  String get enterListName => 'Введіть назву для цього списку метрик:';

  @override
  String get chooseSavedMetrics => 'Виберіть збережений список метрик:';

  @override
  String get noSavedLists =>
      'Немає збережених списків метрик для завантаження на даний момент.';

  @override
  String get metricListSaved => 'Список метрик успішно збережено.';

  @override
  String get metricListLoaded => 'Список метрик успішно завантажено.';

  @override
  String get filters => 'Фільтри';

  @override
  String get sortBy => 'Сортувати за:';

  @override
  String get recent => 'Нещодавні';

  @override
  String get name => 'Ім\'я';

  @override
  String get count => 'Кількість';

  @override
  String get namedOnly => 'Тільки з іменем';

  @override
  String get minMessages => 'Мін. повідомлень:';

  @override
  String get minimumMessages => 'Мінімум повідомлень:';

  @override
  String get executiveSummary => 'Виконавче резюме';

  @override
  String get metricScores => 'Оцінки метрик';

  @override
  String get contextualEvidenceExamples => 'Контекстуальні приклади';

  @override
  String get neutralSynthesis => 'Нейтральний синтез';

  @override
  String analysisOfSender(Object sender) {
    return 'Аналіз $sender (Відправник)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Аналіз $receiver (Отримувач)';
  }

  @override
  String get finalConclusion => 'Остаточний висновок';

  @override
  String get metric_1_name => 'Зневага';

  @override
  String get metric_1_description =>
      'Шукає переваги, огиди, насмішки, мову перекатування очей або образи, які ставлять одного партнера нижче іншого.';

  @override
  String get metric_2_name => 'Захисність';

  @override
  String get metric_2_description =>
      'Відстежує рефлективний самозахист, контратаки, виправдання та відмову розглядати скаргу іншої особи.';

  @override
  String get metric_3_name => 'Ігнорування';

  @override
  String get metric_3_description =>
      'Визначає закриття, відступ, ігнорування, відмову відповідати або завершення розмов, щоб уникнути залучення.';

  @override
  String get metric_4_name => 'Критика';

  @override
  String get metric_4_description =>
      'Виявляє атаки на характер або особистість замість конкретних поведінок, потреб або інцидентів.';

  @override
  String get metric_5_name => 'Індикатори газлайтингу';

  @override
  String get metric_5_description =>
      'Позначає спроби змусити когось сумніватися в пам\'яті, сприйнятті, здоровому глузді або легітимності свого досвіду.';

  @override
  String get metric_6_name => 'Перекладання провини';

  @override
  String get metric_6_description =>
      'Вимірює, чи відповідальність перенаправляється на іншого партнера замість прямого визнання.';

  @override
  String get metric_7_name => 'Взір ескалації';

  @override
  String get metric_7_description =>
      'Оцінює, чи тон, звинувачення, інтенсивність або загрози зростають замість руху до вирішення.';

  @override
  String get metric_8_name => 'Визнання спроб відновлення';

  @override
  String get metric_8_description =>
      'Перевіряє, чи помічаються та приймаються вибачення, гумор, паузи, заспокоєння або пропозиції миру.';

  @override
  String get metric_9_name => 'Мова відповідальності';

  @override
  String get metric_9_description =>
      'Шукає чітке визнання шкоди, конкретну відповідальність та бажання змінити поведінку.';

  @override
  String get metric_10_name => 'Повага до кордонів';

  @override
  String get metric_10_description =>
      'Оцінює, чи поважаються встановлені обмеження навколо часу, приватності, тіла, емоцій або контакту.';

  @override
  String get metric_11_name => 'Індикатори примусового контролю';

  @override
  String get metric_11_description =>
      'Позначає патерни залякування, обмеження, моніторингу, залежності або контролю над виборами та рухом.';

  @override
  String get metric_12_name => 'Мова загроз';

  @override
  String get metric_12_description =>
      'Визначає явні або натякні загрози, що включають безпеку, покинуття, викриття, помсту або покарання.';

  @override
  String get metric_13_name => 'Знецінення';

  @override
  String get metric_13_description =>
      'Виявляє відхилення занепокоєнь, ставлення до потреб як до неважливих або відмову серйозно ставитися до стресу.';

  @override
  String get metric_14_name => 'Недійсність';

  @override
  String get metric_14_description =>
      'Вимірює заперечення, насмішку або виправлення емоцій іншої особи замість їх визнання.';

  @override
  String get metric_15_name => 'Вираження емпатії';

  @override
  String get metric_15_description =>
      'Шукає прийняття перспективи, турботу, емоційне визнання та занепокоєння досвідом іншої особи.';

  @override
  String get metric_16_name => 'Взаємність';

  @override
  String get metric_16_description =>
      'Оцінює, чи увага, зусилля, вибачення, компроміс та емоційна підтримка течуть в обидва напрямки.';

  @override
  String get metric_17_name => 'Емоційна регуляція';

  @override
  String get metric_17_description =>
      'Оцінює здатність залишатися заземленим, паузувати, самозаспокоюватися та спілкуватися без вибухової реактивності.';

  @override
  String get metric_18_name => 'Сарказм, використаний як шкода';

  @override
  String get metric_18_description =>
      'Позначає сарказм, використаний для приниження, покарання, приниження або маскування ворожості як гумору.';

  @override
  String get metric_19_name => 'Назви';

  @override
  String get metric_19_description =>
      'Визначає принизливі мітки, образи, лайку, спрямовану на особу, або атаки на основі ідентичності.';

  @override
  String get metric_20_name => 'Взір мовчання';

  @override
  String get metric_20_description =>
      'Відстежує тишу, використану як покарання, контроль, уникнення або відсторонення зв\'язку.';

  @override
  String get metric_21_name => 'Фреймінг ревнощі';

  @override
  String get metric_21_description =>
      'Оцінює підозру, володіння, звинувачення або ревнощу, представлену як доказ турботи.';

  @override
  String get metric_22_name => 'Тиск ізоляції';

  @override
  String get metric_22_description =>
      'Позначає зусилля відокремити партнера від друзів, родини, систем підтримки або зовнішніх перспектив.';

  @override
  String get metric_23_name => 'Індикатори фінансового контролю';

  @override
  String get metric_23_description =>
      'Шукає контроль над грошима, витратами, зайнятістю, доступом до рахунків або фінансовою незалежністю.';

  @override
  String get metric_24_name => 'Індикатори порушення приватності';

  @override
  String get metric_24_description =>
      'Виявляє шпигунство, вимоги паролів, перевірку пристроїв, відстеження місцезнаходження або порушення приватності.';

  @override
  String get metric_25_name => 'Конкретність вибачень';

  @override
  String get metric_25_description =>
      'Вимірює, чи вибачення називають точну шкоду, вплив та майбутнє виправлення замість того, щоб залишатися нечіткими.';

  @override
  String get metric_26_name => 'Тиск прощення';

  @override
  String get metric_26_description =>
      'Позначає вимоги рухатися далі, швидко пробачати або припинити обговорення шкоди до відновлення.';

  @override
  String get metric_27_name => 'Мінімізація';

  @override
  String get metric_27_description =>
      'Виявляє применшення шкоди, називання серйозних занепокоєнь драматичними або зменшення впливу, щоб уникнути відповідальності.';

  @override
  String get metric_28_name => 'Проекція';

  @override
  String get metric_28_description =>
      'Шукає звинувачення, що відображають власну поведінку, мотиви або невирішені почуття мовця.';

  @override
  String get metric_29_name => 'Взір переривання';

  @override
  String get metric_29_description =>
      'Відстежує переривання, говоріння поверх, відмову від завершення або контроль розмовних ходів.';

  @override
  String get metric_30_name => 'Відхилення теми';

  @override
  String get metric_30_description =>
      'Визначає зміну теми, підняття не пов\'язаних питань або уникнення центральної занепокоєння.';

  @override
  String get metric_31_name => 'Орієнтація на вирішення';

  @override
  String get metric_31_description =>
      'Вимірює, чи спрямовані повідомлення на рішення, ясність, угоди та наступні кроки.';

  @override
  String get metric_32_name => 'Спільне вирішення проблем';

  @override
  String get metric_32_description =>
      'Оцінює співпрацю мову, спільну відповідальність, мозковий штурм та бажання знайти робочі компроміси.';

  @override
  String get metric_33_name => 'Емоційне затоплення';

  @override
  String get metric_33_description =>
      'Виявляє перевантаження, паніку, закриття, спіраль або нездатність обробляти під час конфлікту.';

  @override
  String get metric_34_name => 'Вказівки реакції на страх';

  @override
  String get metric_34_description =>
      'Шукає заспокоєння, обережний підбір слів, жах, занепокоєння безпекою або страх реакції партнера.';

  @override
  String get metric_35_name => 'Згодженість заяв';

  @override
  String get metric_35_description =>
      'Оцінює, чи рахунки залишаються внутрішньо узгодженими в повідомленнях та часі.';

  @override
  String get metric_36_name => 'Відновлення на основі доказів';

  @override
  String get metric_36_description =>
      'Перевіряє, чи посилаються заяви на конкретні події, цитати, хронології або спостережувану поведінку.';

  @override
  String get metric_37_name => 'Взір вимоги відступу';

  @override
  String get metric_37_description =>
      'Відстежує одного партнера, що переслідує відповіді або зміни, поки інший уникає, закривається або виходить.';

  @override
  String get metric_38_name => 'Індикатори дисбалансу влади';

  @override
  String get metric_38_description =>
      'Позначає нерівну владу рішень, страх наслідків, залежність, залякування або односторонній контроль.';

  @override
  String get metric_39_name => 'Поважна незгода';

  @override
  String get metric_39_description =>
      'Вимірює, чи конфлікт зберігає гідність, цікавість та незгоду без деградації.';

  @override
  String get metric_40_name => 'Цикл розриву та відновлення';

  @override
  String get metric_40_description =>
      'Оцінює, чи слідує за конфліктом визнання, відновлення та фактичне відновлення.';

  @override
  String get metric_41_name => 'Відсторонення прихильності';

  @override
  String get metric_41_description =>
      'Виявляє утримання любові, тепла, сексу, уваги або заспокоєння як покарання або важеля.';

  @override
  String get metric_42_name => 'Відсилання до публічного приниження';

  @override
  String get metric_42_description =>
      'Позначає загрози, жарти або дії, що принижують партнера перед іншими.';

  @override
  String get metric_43_name => 'Вказівки конфлікту, пов\'язаного з речовинами';

  @override
  String get metric_43_description =>
      'Шукає використання алкоголю або наркотиків, пов\'язане з агресією, ненадійністю, конфліктом або шкодою.';

  @override
  String get metric_44_name => 'Тиск батьківського конфлікту';

  @override
  String get metric_44_description =>
      'Визначає дітей, опіку, батьківські ролі або батьківську провину, використані в конфлікті або як важіль.';

  @override
  String get metric_45_name => 'Повага до сексуальних кордонів';

  @override
  String get metric_45_description =>
      'Оцінює повагу до згоди, тиску, відмови, комфорту, часу та сексуальної автономії.';

  @override
  String get metric_46_name => 'Індикатори цифрового переслідування';

  @override
  String get metric_46_description =>
      'Відстежує повторювані небажані повідомлення, спам-дзвінки, онлайн-тиск, спостереження або залякування на основі платформи.';

  @override
  String get metric_47_name => 'Мова моніторингу або спостереження';

  @override
  String get metric_47_description =>
      'Позначає перевірку місцезнаходження, вимогу доказів, відстеження поведінки або постійну перевірку.';

  @override
  String get metric_48_name => 'Орієнтація на майбутнє';

  @override
  String get metric_48_description =>
      'Вимірює, чи партнери обговорюють майбутнє покращення, зобов\'язання, плани або конструктивний напрямок.';

  @override
  String get metric_49_name => 'Сигнали планування безпеки';

  @override
  String get metric_49_description =>
      'Шукає спроби звернутися за допомогою, створити дистанцію, задокументувати шкоду або планувати фізичну/емоційну безпеку.';

  @override
  String get metric_50_name => 'Спільні спроби деескалації';

  @override
  String get metric_50_description =>
      'Відстежує паузи, заспокійливу мову, м\'якший тон, тайм-аути та спроби обох партнерів зменшити інтенсивність.';

  @override
  String get metric_51_name => 'Вказівки безпечного прив\'язування';

  @override
  String get metric_51_description =>
      'Визначає довіру, пряме заспокоєння, емоційну доступність та комфорт з близькістю та незалежністю.';

  @override
  String get metric_52_name => 'Активація тривожного прив\'язування';

  @override
  String get metric_52_description =>
      'Позначає протестну поведінку, термінові потреби заспокоєння, страх покинутості та підвищену чутливість до дистанції.';

  @override
  String get metric_53_name => 'Віддалення уникливого прив\'язування';

  @override
  String get metric_53_description =>
      'Виявляє емоційну мінімізацію, захист незалежності, відступ від вразливості або дискомфорт з потребами.';

  @override
  String get metric_54_name => 'Сигнали дезорганізованого прив\'язування';

  @override
  String get metric_54_description =>
      'Шукає цикли наближення-уникнення, страх, змішаний з потребою, хаотичні реакції або плутані патерни близькості.';

  @override
  String get metric_55_name => 'Емоційні пропозиції та відповіді';

  @override
  String get metric_55_description =>
      'Вимірює запрошення до уваги, комфорту або зв\'язку та чи вони приймаються або пропускаються.';

  @override
  String get metric_56_name => 'Відвертання від зв\'язку';

  @override
  String get metric_56_description =>
      'Позначає ігнорування, відхилення або невідповідь на пропозиції близькості чи підтримки.';

  @override
  String get metric_57_name => 'Відвертання проти зв\'язку';

  @override
  String get metric_57_description =>
      'Виявляє ворожі або каральні відповіді на спроби прихильності, вразливості або відновлення.';

  @override
  String get metric_58_name => 'Переваження позитивних настроїв';

  @override
  String get metric_58_description =>
      'Шукає щедрість, вигоду сумніву, прихильність та інтерпретацію конфлікту через турботу.';

  @override
  String get metric_59_name => 'Переваження негативних настроїв';

  @override
  String get metric_59_description =>
      'Позначає припущення поганих намірів, негативну інтерпретацію нейтральних повідомлень та постійне вороже фреймінгування.';

  @override
  String get metric_60_name => 'Взір жорсткого початку';

  @override
  String get metric_60_description =>
      'Визначає розмови, що починаються зі звинувачення, атаки, зневаги чи провини замість прохання.';

  @override
  String get metric_61_name => 'Взір м\'якого початку';

  @override
  String get metric_61_description =>
      'Шукає м\'які відкриття, використовуючи почуття, потреби, конкретні прохання та не звинувачувальну мову.';

  @override
  String get metric_62_name => 'Фізіологічне самозаспокоєння';

  @override
  String get metric_62_description =>
      'Оцінює спроби паузувати, дихати, взяти простір або регулювати тіло перед продовженням конфлікту.';

  @override
  String get metric_63_name => 'Взір уникнення конфлікту';

  @override
  String get metric_63_description =>
      'Відстежує повторюване уникнення необхідних тем, дискомфорту, незгоди або емоційної чесності.';

  @override
  String get metric_64_name => 'Нестабільний стиль конфлікту';

  @override
  String get metric_64_description =>
      'Виявляє конфлікт високої інтенсивності з прямим вираженням, який може все ще включати залучення та відновлення.';

  @override
  String get metric_65_name => 'Валідуючий стиль конфлікту';

  @override
  String get metric_65_description =>
      'Вимірює, чи партнери визнають перспективу один одного під час незгоди.';

  @override
  String get metric_66_name => 'Ворожий стиль конфлікту';

  @override
  String get metric_66_description =>
      'Позначає часту критику, зневагу, захисність, атаки та конфронтаційне фреймінгування.';

  @override
  String get metric_67_name => 'Взір ворожості-відчуження';

  @override
  String get metric_67_description =>
      'Визначає холодну ворожість, емоційне відчуження, зневагу та низьку мотивацію відновлення.';

  @override
  String get metric_68_name => 'Готовність до компромісу';

  @override
  String get metric_68_description =>
      'Шукає гнучкість, переговори, пропозиції середини та жертви, що поважають обидві потреби.';

  @override
  String get metric_69_name => 'Прийняття впливу';

  @override
  String get metric_69_description =>
      'Вимірює відкритість до впливу почуттів, потреб або перспективи партнера.';

  @override
  String get metric_70_name => 'Сигнали заблокованого конфлікту';

  @override
  String get metric_70_description =>
      'Позначає повторювані невирішені проблеми, пов\'язані з цінностями, мріями, ідентичністю або хронічною несумісністю.';

  @override
  String get metric_71_name => 'Фреймінг вирішуваної проблеми';

  @override
  String get metric_71_description =>
      'Виявляє практичні, конкретні визначення проблем, що можуть призвести до конкретних угод.';

  @override
  String get metric_72_name => 'Відсилання спільного значення';

  @override
  String get metric_72_description =>
      'Шукає цінності, ритуали, цілі, спогади або мову ідентичності, що створює спільну історію стосунків.';

  @override
  String get metric_73_name => 'Свідомість карти любові';

  @override
  String get metric_73_description =>
      'Оцінює знання внутрішнього світу партнера, стресорів, уподобань, страхів та повсякденного життя.';

  @override
  String get metric_74_name => 'Прихильність та захоплення';

  @override
  String get metric_74_description =>
      'Визначає вдячність, повагу, тепло, компліменти, подяку та позитивне ставлення.';

  @override
  String get metric_75_name => 'Дисбаланс емоційної праці';

  @override
  String get metric_75_description =>
      'Позначає одного партнера, що несе непропорційне планування, заспокоєння, запам\'ятовування, пояснення або підтримку стосунків.';

  @override
  String get metric_76_name => 'Знецінення ментального навантаження';

  @override
  String get metric_76_description =>
      'Виявляє мінімізацію невидимої планувальної роботи, домашньої координації, планування або відстеження відповідальності.';

  @override
  String get metric_77_name => 'Вказівки зброєної некомпетентності';

  @override
  String get metric_77_description =>
      'Шукає твердження про нездатність, плутанину або безпорадність, щоб уникнути справедливої відповідальності.';

  @override
  String get metric_78_name => 'Чутливість до тригерів травми';

  @override
  String get metric_78_description =>
      'Вимірює обізнаність про тригери, реакції на травму та обережне поводження з вразливими темами.';

  @override
  String get metric_79_name => 'Вказівки гіпервигідності';

  @override
  String get metric_79_description =>
      'Позначає сканування на небезпеку, надмірний моніторинг тону, страх помилок або постійну емоційну пильність.';

  @override
  String get metric_80_name => 'Мова страху покинутості';

  @override
  String get metric_80_description =>
      'Виявляє страх бути покинутим, заміненим, ігнорованим, відкинутим або емоційно покинутим.';

  @override
  String get metric_81_name => 'Взір пошуку заспокоєння';

  @override
  String get metric_81_description =>
      'Відстежує повторювані прохання про доказ любові, зобов\'язання, безпеку або продовження інтересу.';

  @override
  String get metric_82_name => 'Цикл переслідувача-віддаляючого';

  @override
  String get metric_82_description =>
      'Визначає одного партнера, що ескалює переслідування за близькістю, поки інший збільшує дистанцію.';

  @override
  String get metric_83_name => 'Накопичення ображення';

  @override
  String get metric_83_description =>
      'Шукає збережені скарги, повторювані посилання на минуле, гіркоту та невирішений емоційний борг.';

  @override
  String get metric_84_name => 'Поведінка підрахунку очок';

  @override
  String get metric_84_description =>
      'Позначає транзакційний підрахунок недоліків, послуг, жертв або помилок для отримання важеля.';

  @override
  String get metric_85_name => 'Умовна прихильність';

  @override
  String get metric_85_description =>
      'Виявляє любов, схвалення, доступ або тепло, що пропонуються лише тоді, коли досягнуто відповідності.';

  @override
  String get metric_86_name => 'Індикатори бомбардування любов\'ю';

  @override
  String get metric_86_description =>
      'Позначає інтенсивну прихильність, обіцянки, тиск або ідеалізацію, використані для прискорення прив\'язування або контролю.';

  @override
  String get metric_87_name => 'Спроби втягування';

  @override
  String get metric_87_description =>
      'Визначає спроби втягнути когось назад через провину, ностальгію, обіцянки, кризи або раптову прихильність.';

  @override
  String get metric_88_name => 'Взір DARVO';

  @override
  String get metric_88_description =>
      'Виявляє заперечення, атаку та зворотне перетворення жертви-злочинця при зустрічі зі шкідою.';

  @override
  String get metric_89_name => 'Взір позиції жертви';

  @override
  String get metric_89_description =>
      'Позначає повторюване самовictimizування, що уникає відповідальності або перенаправляє увагу від завданої шкоди.';

  @override
  String get metric_90_name => 'Фреймінг моральної переваги';

  @override
  String get metric_90_description =>
      'Шукає праведність, претензії на чистоту або моральну перевагу, використані для домінування в конфлікті.';

  @override
  String get metric_91_name => 'Знищення характеру';

  @override
  String get metric_91_description =>
      'Виявляє широкі атаки на ідентичність, цілісність, психічне здоров\'я або цінність замість конкретної поведінки.';

  @override
  String get metric_92_name => 'Індикатори триангуляції';

  @override
  String get metric_92_description =>
      'Позначає залучення третіх сторін у конфлікт для тиску, порівняння, валідації або дестабілізації партнера.';

  @override
  String get metric_93_name => 'Тиск соціального порівняння';

  @override
  String get metric_93_description =>
      'Шукає порівняння з колишніми, друзями, іншими парами або ідеалами, використані для сорому або примусу.';

  @override
  String get metric_94_name => 'Підтримка автономії';

  @override
  String get metric_94_description =>
      'Вимірює повагу до незалежних виборів, дружби, цілей, кордонів та особистої агенції.';

  @override
  String get metric_95_name => 'Повага до згоди та вибору';

  @override
  String get metric_95_description =>
      'Оцінює, чи рішення приймаються вільно без тиску, провини, загроз або маніпуляції.';

  @override
  String get metric_96_name => 'Спільне планування';

  @override
  String get metric_96_description =>
      'Шукає спільний розклад, спільні рішення, координовані відповідальності та практичне виконання.';

  @override
  String get metric_97_name => 'Виконання відновлення';

  @override
  String get metric_97_description =>
      'Вимірює, чи обіцяні зміни пізніше відображаються в поведінці, а не лише в словах.';

  @override
  String get metric_98_name => 'Доказ зміненої поведінки';

  @override
  String get metric_98_description =>
      'Перевіряє спостережувані, повторювані дії, що показують навчання, коригування або зменшену шкідливу поведінку.';

  @override
  String get metric_99_name => 'Мова емоційної безпеки';

  @override
  String get metric_99_description =>
      'Визначає мову, що запрошує до чесності, знижує страх, захищає гідність та заспокоює безпечний вираз.';

  @override
  String get metric_100_name => 'Невизначеність стосунків';

  @override
  String get metric_100_description =>
      'Виявляє невизначеність, змішані зобов\'язання, притягування-відштовхування або незрозуміле бажання продовжувати.';

  @override
  String get unableToOpenConversations => 'Не вдається відкрити розмови';

  @override
  String get unableToOpenConversationsBody =>
      'Сталася помилка під час завантаження ваших розмов. Будь ласка, спробуйте ще раз.';

  @override
  String get unableToLoadConversationsBody =>
      'Не вдається завантажити розмови. Перевірте дозволи та спробуйте ще раз.';

  @override
  String get errorLoadingConversationsBody =>
      'Помилка завантаження розмов. Будь ласка, спробуйте ще раз.';

  @override
  String get smsPermissionRequired => 'Потрібен дозвіл SMS';

  @override
  String get smsPermissionRequiredBody =>
      'Для аналізу SMS-розмов нам потрібен дозвіл на читання ваших повідомлень. Ваша конфіденційність важлива — повідомлення аналізуються лише локально і ніколи не зберігаються на наших серверах.';

  @override
  String get grantSmsPermission => 'Надати дозвіл SMS';

  @override
  String get noSmsConversationsFound => 'SMS-розмов не знайдено';

  @override
  String get noConversationsMatchSearch =>
      'Немає розмов, що відповідають вашому пошуку';

  @override
  String get noSmsMessagesOnDevice =>
      'У вас немає SMS-повідомлень на цьому пристрої';

  @override
  String get tryDifferentSearch => 'Спробуйте інший пошуковий запит';

  @override
  String get clearSearch => 'Очистити пошук';

  @override
  String selectedFile(String filename) {
    return 'Вибрано: $filename';
  }

  @override
  String get invalidFile => 'Недійсний файл';

  @override
  String get fileImport => 'Імпорт файлу';

  @override
  String get fileImportNotImplemented =>
      'Аналіз файлів ще не реалізовано для цього типу файлу.';

  @override
  String get errorPickingFile =>
      'Не вдається відкрити файл. Будь ласка, спробуйте ще раз.';

  @override
  String get readyToCapture => 'Готовий до захоплення';

  @override
  String get readyToCaptureBody =>
      'Перейдіть зараз до програми повідомлень і почніть робити знімки екрана.\n\nПоверніться до цієї програми, коли закінчите, і натисніть \"Завершити та обробити\".';

  @override
  String get noScreenshotsToProcess => 'Немає знімків екрана для обробки.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Обробка знімка екрана $current з $total...';
  }

  @override
  String get noMessagesFound => 'Повідомлення не знайдено';

  @override
  String get noMessagesFoundBody =>
      'Не вдалося витягти повідомлення зі знімків екрана.\n\nПереконайтеся, що знімки чітко показують розмову.';

  @override
  String loadedMessages(int count) {
    return '$count повідомлень завантажено зі знімків екрана';
  }

  @override
  String get processingError => 'Помилка обробки';

  @override
  String get processingErrorBody =>
      'Помилка під час обробки знімків екрана. Будь ласка, спробуйте ще раз.';

  @override
  String metricListSavedAs(String name) {
    return 'Ваші вибори збережено як \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Вибори \"$name\" отримано та застосовано.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count повідомлень завантажено з $name';
  }

  @override
  String get loadButton => 'Завантажити';

  @override
  String get photoPermissionRequired =>
      'Дозвіл бібліотеки фотографій необхідний для виявлення знімків екрана.';

  @override
  String get initializingConnection => 'Ініціалізація безпечного з\'єднання...';

  @override
  String get configurationRequired => 'Конфігурація необхідна';

  @override
  String get goBack => 'Назад';

  @override
  String get enableDateRangeFiltering =>
      'Увімкнути фільтрацію за діапазоном дат';

  @override
  String get clearSelectedDateRange => 'Очистити вибраний діапазон дат';

  @override
  String get largeThreadNoticeTitle => 'ПОВІДОМЛЕННЯ КОРИСТУВАЧУ';

  @override
  String get largeThreadNoticeBody =>
      'При роботі з винятково великими текстовими потоками деякі екрани завантаження в цій програмі можуть іноді перевищувати півтори хвилини.\n\nПрограма не зависає. Якщо ви бачите обертовий індикатор стану, програма все ще завантажується.\n\nБудь ласка, будьте терплячими в цих випадках, оскільки час завантаження може бути довшим за звичайний порівняно з іншими програмами, особливо при роботі з великим набором даних, таким як потік із 50 000 повідомлень.';

  @override
  String get neverShowThisAgain => 'Більше не показувати це повідомлення';

  @override
  String loadingConversationWith(String name) {
    return 'Завантаження розмови\nз $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Відкрийте програму повідомлень і виберіть розмову\n2. Прокрутіть до найстарішого повідомлення, яке хочете проаналізувати\n3. Натисніть \"Почати захоплення\" нижче\n4. Робіть знімки екрана, прокручуючи розмову\n5. Коли закінчите, натисніть \"Завершити та обробити\"';

  @override
  String get howToCaptureIosMessages => 'Як захоплювати повідомлення iOS';

  @override
  String get deepSeekApiKey => 'Ключ API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Введіть свій ключ API DeepSeek, щоб увімкнути аналіз ШІ.';

  @override
  String get getYourApiKeyFrom =>
      'Отримайте свій ключ API на: https://platform.deepseek.com';

  @override
  String get apiKey => 'Ключ API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Ваш ключ API безпечно зберігається на вашому пристрої і ніколи не передається.';

  @override
  String get pleaseEnterApiKey => 'Будь ласка, введіть ключ API';

  @override
  String get apiKeySavedSuccessfully => 'Ключ API успішно збережено!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Будь ласка, будьте терплячими, довші текстові потоки даних завантажуються доволі довго';

  @override
  String get almostThereBigOne => 'Майже готово, Вау, це мало бути великим';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Будь ласка, будьте терплячими, великі набори даних можуть призвести до часу завантаження понад півтори хвилини';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Продовжую завантажувати масивний потік з $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Повідомлень не знайдено у вибраному діапазоні дат. Виберіть інші дати або очистіть фільтр дати.';

  @override
  String get purchaseCustomMetricTileTitle => 'Придбати кастомну метрику';

  @override
  String get purchaseCustomMetricTileDescription =>
      'За разову плату \$4.99 введіть назву та визначення кастомної метрики, які назавжди збережуться поряд з іншими вашими метриками для використання в будь-якому майбутньому аналізі. Придбайте необмежену кількість кастомних метрик.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Придбати кастомну метрику';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'З вас буде стягнуто \$4.99 (разово) для розблокування одного слота кастомної метрики.\n\nНазва та визначення вашої кастомної метрики є постійними і не можуть бути змінені після збереження, тому будь ласка, обирайте уважно.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Придбати — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Назва кастомної метрики';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Введіть назву для вашої кастомної метрики:';

  @override
  String get purchaseCustomMetricNameHint => 'Назва метрики';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Підтвердити назву метрики';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Ви ввели:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Це ФІНАЛЬНО і НІКОЛИ не може бути змінено.';

  @override
  String get purchaseCustomMetricReenterName => 'Ой — Ввести назву знову';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Зберегти назву метрики';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Визначити: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Введіть значення вашої кастомної метрики: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Опишіть, що означає ця метрика, які поведінки вона шукає та як застосовується до динаміки стосунків...';

  @override
  String get purchaseCustomMetricReenter => 'Ой — Ввести знову';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Зберегти значення';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Попередній перегляд вашої кастомної метрики';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Так виглядатиме ваша плитка:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Це ваш ОСТАННІЙ ШАНС передумати.\nПісля підтвердження назва та визначення є постійними.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Скасувати все';

  @override
  String get purchaseCustomMetricCommit => 'Підтвердити кастомну метрику';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" додано до ваших метрик! Тепер ви можете вибрати її для аналізу.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Обробка покупки...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Очікується підтвердження від магазину.\nБудь ласка, не закривайте додаток.';

  @override
  String get next => 'Далі';

  @override
  String get cancelNotReady => 'Скасувати — Я не готовий';

  @override
  String get packGoodLabel => 'Добрий';

  @override
  String get packBadLabel => 'Злий';

  @override
  String get packUglyLabel => 'Потворний';

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
