// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'ИИ-анализатор токсичности отношений';

  @override
  String get psychologicalMetrics => 'Психологические метрики';

  @override
  String get metricsDescription =>
      'Меньшее количество выбранных метрик дает более глубокий и сконцентрированный анализ этого поведения. Большее количество выбранных метрик дает более широкий отчет с меньшей детализацией по каждой метрике.';

  @override
  String get selectSMS => 'Выбрать SMS / RCS Чат';

  @override
  String get selectDiscordChannel => 'Выбрать канал Discord';

  @override
  String get lightMode => 'Светлая';

  @override
  String get darkMode => 'Тёмная';

  @override
  String get discordSetupTitle => 'Как Настроить Discord';

  @override
  String get discordSetupDescription =>
      'Следуйте этим шагам, чтобы включить анализ каналов Discord в приложении:';

  @override
  String get discordStep1Title => 'Создать Бот Discord';

  @override
  String get discordStep1Description =>
      'Перейдите на discord.com/developers, создайте новое приложение и добавьте бота. Скопируйте токен бота.';

  @override
  String get discordStep2Title => 'Включить Привилегии Бота';

  @override
  String get discordStep2Description =>
      'В настройках бота включите \'Message Content Intent\' и \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Пригласить Бота на Сервер';

  @override
  String get discordStep3Description =>
      'Используйте генератор URL OAuth2, чтобы пригласить бота на свой сервер Discord с необходимыми разрешениями.';

  @override
  String get discordStep4Title => 'Настроить в Приложении';

  @override
  String get discordStep4Description =>
      'Введите свой токен бота в настройках приложения (обратитесь в поддержку, если нужна помощь).';

  @override
  String get discordStep5Title => 'Выбрать Канал';

  @override
  String get discordStep5Description =>
      'Нажмите \'Выбрать Канал Discord\', выберите свой сервер, затем выберите канал для анализа.';

  @override
  String get gotIt => 'Понятно';

  @override
  String get selectFile => 'Выбрать файл';

  @override
  String get analyzeSelectedMetrics => 'Анализировать выбранные метрики';

  @override
  String get analyze20RandomMetrics => 'Анализировать 20 случайных метрик';

  @override
  String get membershipOptions => 'Варианты подписки';

  @override
  String get free => 'Бесплатно';

  @override
  String get oneTimeUnlock => 'Разовая разблокировка отчета';

  @override
  String get standard => 'Стандарт';

  @override
  String get discordAddon => 'Дополнение Discord';

  @override
  String get analyze => 'Анализировать';

  @override
  String get report => 'Отчет';

  @override
  String get pdfReport => 'PDF-отчет';

  @override
  String get openPdf => 'Открыть PDF';

  @override
  String get sharePdf => 'Поделиться PDF';

  @override
  String get printPdf => 'Печать PDF';

  @override
  String get closePdfPreview => 'Закрыть окно предпросмотра PDF';

  @override
  String get openPdfPreview => 'Открыть окно предпросмотра PDF';

  @override
  String get pdfPreviewDescription =>
      'Встроенное окно PDF изначально закрыто, чтобы отчет оставался компактным.';

  @override
  String get notNow => 'Не сейчас';

  @override
  String get unlockThisReport => 'Разблокировать этот отчет - \$20';

  @override
  String get joinStandard => 'Подписаться на Стандарт - \$9.99/мес';

  @override
  String get instantUnlockTitle => 'Мгновенная разблокировка отчета - \$20';

  @override
  String get instantUnlockDescription =>
      'Это разовая покупка для разблокировки только текущего отчета. Подписка не требуется. Будущие отчеты потребуют отдельных разблокировок или подписки.\n\nПродолжить оплату?';

  @override
  String get purchaseFor20 => 'Купить за \$20';

  @override
  String get share => 'Поделиться';

  @override
  String get print => 'Печать';

  @override
  String get save => 'Сохранить';

  @override
  String get cancel => 'Отмена';

  @override
  String get ok => 'ОК';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Ошибка';

  @override
  String get success => 'Успешно';

  @override
  String get conversations => 'Беседы';

  @override
  String get messages => 'Сообщения';

  @override
  String get selectConversation => 'Выбрать беседу';

  @override
  String get selectSmsConversation => 'Выбрать SMS / RCS беседу';

  @override
  String get searchConversations => 'Поиск бесед...';

  @override
  String get loadingConversations => 'Загрузка бесед...';

  @override
  String get errorLoadingConversations => 'Ошибка загрузки бесед';

  @override
  String get selectConversationToAnalyze => 'Выберите беседу для анализа';

  @override
  String get analyzeWithSelectedMetrics =>
      'Анализировать с выбранными метриками';

  @override
  String get loadConversationAndSelectMetric =>
      'Загрузите беседу и выберите хотя бы одну метрику';

  @override
  String get selectAtLeastOneMetric =>
      'Для запуска отчета необходимо выбрать хотя бы одну метрику.';

  @override
  String get spinningMetricWheel => 'Вращение колеса метрик...';

  @override
  String get loadConversationToAnalyze => 'Загрузите беседу для анализа';

  @override
  String get noConversationsFound => 'Беседы не найдены';

  @override
  String get permissionsRequired => 'Требуются разрешения';

  @override
  String get smsPermission => 'Текстовые сообщения';

  @override
  String get contactsPermission => 'Контакты';

  @override
  String get smsPermissionDescription =>
      'Для анализа ваших SMS-бесед на предмет шаблонов отношений';

  @override
  String get contactsPermissionDescription =>
      'Для отображения имен контактов вместо номеров телефонов';

  @override
  String get analyzingMessage =>
      'Подождите, пока ваш психологический анализ генерируется ИИ...';

  @override
  String get analyzingStatus => 'Анализ беседы...';

  @override
  String get analyzingSubMessage =>
      'Пожалуйста, будьте терпеливы, этот процесс может занять до минуты в зависимости от скорости вашего соединения и количества выбранных метрик';

  @override
  String get unlockFullReport => 'Разблокировать и показать весь этот отчет';

  @override
  String get fullReportLocked => 'Полный отчет заблокирован';

  @override
  String get upgradeToUnlock =>
      'Обновите свою подписку, чтобы разблокировать полный отчет психологического анализа со всеми метриками и подробными выводами.';

  @override
  String get language => 'Язык';

  @override
  String get english => 'Английский';

  @override
  String get spanish => 'Испанский';

  @override
  String get french => 'Французский';

  @override
  String get german => 'Немецкий';

  @override
  String get italian => 'Итальянский';

  @override
  String get portuguese => 'Португальский';

  @override
  String get dutch => 'Нидерландский';

  @override
  String get russian => 'Русский';

  @override
  String get chinese => 'Китайский';

  @override
  String get japanese => 'Японский';

  @override
  String get korean => 'Корейский';

  @override
  String get arabic => 'Арабский';

  @override
  String get hindi => 'Хинди';

  @override
  String get turkish => 'Турецкий';

  @override
  String get polish => 'Польский';

  @override
  String get ukrainian => 'Украинский';

  @override
  String get runAnotherAnalysis => 'Запустить ещё один анализ?';

  @override
  String get becomeMemberTitle =>
      'Станьте участником, чтобы получить полный отчёт анализа';

  @override
  String get becomeMemberSubtitle =>
      'Выберите уровень доступа, соответствующий беседам и отчётам, которые вам нужно проанализировать.';

  @override
  String get benefitAnalyzeSms => 'Анализ текстовых SMS-сообщений';

  @override
  String get benefitReportPreview => 'Запуск предпросмотра отчёта';

  @override
  String get benefitViewPartialReport => 'Просмотр около 25% отчёта';

  @override
  String get benefitLockedDetails => 'Полные сведения отчёта заблокированы';

  @override
  String get currentFreeAccess => 'Текущий бесплатный доступ';

  @override
  String get benefitUnlockCurrentReport => 'Разблокировать этот полный отчёт';

  @override
  String get benefitNoSubscription => 'Без подписки';

  @override
  String get benefitSavePrintShareThis =>
      'Сохранить, распечатать и поделиться этим отчётом';

  @override
  String get benefitBestSingleAnalysis =>
      'Идеально, если вам нужен только один анализ';

  @override
  String get unlockThisReportShort => 'Разблокировать этот отчёт';

  @override
  String get benefitFullSmsReport => 'Полный отчёт анализа SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Сохранять, печатать и делиться PDF-отчётами';

  @override
  String get benefitTenReports => '10 отчётов за 24-часовой период';

  @override
  String get benefitBestTextReview =>
      'Идеально для анализа отношений по текстовым сообщениям';

  @override
  String get benefitDateRangeFilter => 'Фильтровать анализ по диапазону дат';

  @override
  String get signUpStandard => 'Подписаться на Стандарт';

  @override
  String get benefitAddToStandard => 'Добавить к подписке Стандарт';

  @override
  String get benefitAnalyzeDiscord => 'Анализ чатов серверов Discord';

  @override
  String get benefitRequiresBot => 'Требуется установка бота';

  @override
  String get benefitBestGamers => 'Идеально для геймеров и сообществ Discord';

  @override
  String get addDiscordAnalysis => 'Добавить анализ Discord';

  @override
  String get requiresStandardMembership => 'Требуется подписка Стандарт';

  @override
  String get comingSoon => 'Скоро';

  @override
  String get comingSoonWithNextUpdate => 'Скоро в следующем обновлении:';

  @override
  String get proMembershipTier => 'Уровень подписки Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Уровень подписки Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro включает:';

  @override
  String get proGetsDescription =>
      'Анализируйте переписки со всех остальных популярных платформ обмена сообщениями и социальных сетей, таких как:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), электронная почта и календарь';

  @override
  String get proPlusGetsLabel => 'Pro-Plus включает:';

  @override
  String get proPlusGetsDescription =>
      'Всё, что есть в Pro, плюс дополнение Discord по сниженной цене.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Покупка успешна! Отчёт разблокирован.';

  @override
  String get purchaseFailed =>
      'Покупка не удалась. Пожалуйста, попробуйте снова.';

  @override
  String get membershipActivated => 'Подписка активирована!';

  @override
  String get dateRangeFilter => 'Фильтр Диапазона Дат';

  @override
  String get dateRangeOptional => '(необязательно)';

  @override
  String get startDate => 'Начальная Дата';

  @override
  String get endDate => 'Конечная Дата';

  @override
  String get clear => 'Очистить';

  @override
  String get dateRangeRequiresMembership =>
      'Требует Standard подписку или выше';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Выбрать до $max. Текущий: $current';
  }

  @override
  String get clearSelections => 'Очистить выбор';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Анализировать $count случайных метрик';
  }

  @override
  String get saveSelections => 'Сохранить Выбор';

  @override
  String get loadSelections => 'Загрузить Выборы';

  @override
  String get saveMetricListName => 'Сохранить Список Метрик';

  @override
  String get enterListName => 'Введите имя для этого списка метрик:';

  @override
  String get chooseSavedMetrics => 'Выберите сохраненный список метрик:';

  @override
  String get noSavedLists =>
      'Нет сохраненных списков метрик для загрузки в данный момент.';

  @override
  String get metricListSaved => 'Список метрик успешно сохранен.';

  @override
  String get metricListLoaded => 'Список метрик успешно загружен.';

  @override
  String get filters => 'Фильтры';

  @override
  String get sortBy => 'Сортировать по:';

  @override
  String get recent => 'Недавние';

  @override
  String get name => 'Имя';

  @override
  String get count => 'Количество';

  @override
  String get namedOnly => 'Только с именем';

  @override
  String get minMessages => 'Мин. сообщений:';

  @override
  String get minimumMessages => 'Минимум сообщений:';

  @override
  String get executiveSummary => 'Исполнительное резюме';

  @override
  String get metricScores => 'Оценки метрик';

  @override
  String get contextualEvidenceExamples => 'Контекстуальные примеры';

  @override
  String get neutralSynthesis => 'Нейтральный синтез';

  @override
  String analysisOfSender(Object sender) {
    return 'Анализ $sender (Отправитель)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Анализ $receiver (Получатель)';
  }

  @override
  String get finalConclusion => 'Окончательный вывод';

  @override
  String get metric_1_name => 'Презрение';

  @override
  String get metric_1_description =>
      'Ищет превосходство, отвращение, насмешки, язык закатывания глаз или оскорбления, которые ставят одного партнера ниже другого.';

  @override
  String get metric_2_name => 'Защитная реакция';

  @override
  String get metric_2_description =>
      'Отслеживает рефлексивную самозащиту, контратаки, оправдания и отказ учитывать жалобу другого человека.';

  @override
  String get metric_3_name => 'Блокирование';

  @override
  String get metric_3_description =>
      'Идентифицирует закрытие, отстранение, игнорирование, отказ отвечать или завершение разговоров, чтобы избежать вовлечения.';

  @override
  String get metric_4_name => 'Критика';

  @override
  String get metric_4_description =>
      'Обнаруживает атаки на характер или личность вместо конкретного поведения, потребностей или инцидентов.';

  @override
  String get metric_5_name => 'Индикаторы газлайтинга';

  @override
  String get metric_5_description =>
      'Отмечает попытки заставить кого-то сомневаться в памяти, восприятии, психическом здоровье или легитимности их опыта.';

  @override
  String get metric_6_name => 'Перекладывание вины';

  @override
  String get metric_6_description =>
      'Измеряет, перекладывается ли ответственность на другого партнера вместо прямого признания.';

  @override
  String get metric_7_name => 'Паттерн эскалации';

  @override
  String get metric_7_description =>
      'Оценивает, увеличиваются ли тон, обвинения, интенсивность или угрозы вместо движения к решению.';

  @override
  String get metric_8_name => 'Распознавание попыток исправления';

  @override
  String get metric_8_description =>
      'Проверяет, замечены и приняты ли извинения, юмор, паузы, успокоение или предложения мира.';

  @override
  String get metric_9_name => 'Язык ответственности';

  @override
  String get metric_9_description =>
      'Ищет четкое признание вреда, конкретную ответственность и готовность изменить поведение.';

  @override
  String get metric_10_name => 'Уважение границ';

  @override
  String get metric_10_description =>
      'Оценивает, соблюдаются ли установленные ограничения вокруг времени, конфиденциальности, тела, эмоций или контакта.';

  @override
  String get metric_11_name => 'Индикаторы принудительного контроля';

  @override
  String get metric_11_description =>
      'Отмечает паттерны запугивания, ограничения, мониторинга, зависимости или контроля над выбором и движениями.';

  @override
  String get metric_12_name => 'Язык угроз';

  @override
  String get metric_12_description =>
      'Идентифицирует явные или подразумеваемые угрозы, касающиеся безопасности, оставления, разоблачения, возмездия или наказания.';

  @override
  String get metric_13_name => 'Пренебрежение';

  @override
  String get metric_13_description =>
      'Обнаруживает отмахивание от проблем, отношение к потребностям как к неважным или отказ серьезно относиться к страданиям.';

  @override
  String get metric_14_name => 'Обесценивание';

  @override
  String get metric_14_description =>
      'Измеряет отрицание, насмешки или исправление эмоций другого человека вместо их признания.';

  @override
  String get metric_15_name => 'Выражение эмпатии';

  @override
  String get metric_15_description =>
      'Ищет принятие перспективы, заботу, эмоциональное признание и беспокойство об опыте другого человека.';

  @override
  String get metric_16_name => 'Взаимность';

  @override
  String get metric_16_description =>
      'Оценивает, текут ли внимание, усилия, извинения, компромисс и эмоциональная поддержка в обоих направлениях.';

  @override
  String get metric_17_name => 'Эмоциональная регуляция';

  @override
  String get metric_17_description =>
      'Оценивает способность оставаться заземленным, делать паузу, успокаивать себя и общаться без взрывной реактивности.';

  @override
  String get metric_18_name => 'Сарказм как вред';

  @override
  String get metric_18_description =>
      'Отмечает сарказм, используемый для унижения, наказания, унижения или маскировки враждебности как юмора.';

  @override
  String get metric_19_name => 'Оскорбления';

  @override
  String get metric_19_description =>
      'Идентифицирует пренебрежительные ярлыки, оскорбления, нецензурную лексику, направленную на человека, или атаки на основе идентичности.';

  @override
  String get metric_20_name => 'Паттерн молчания';

  @override
  String get metric_20_description =>
      'Отслеживает использование молчания как наказания, контроля, избегания или отстранения от связи.';

  @override
  String get metric_21_name => 'Рамка ревности';

  @override
  String get metric_21_description =>
      'Оценивает подозрение, собственничество, обвинения или ревность, представленные как доказательство заботы.';

  @override
  String get metric_22_name => 'Давление изоляции';

  @override
  String get metric_22_description =>
      'Отмечает усилия по отделению партнера от друзей, семьи, систем поддержки или внешних перспектив.';

  @override
  String get metric_23_name => 'Индикаторы финансового контроля';

  @override
  String get metric_23_description =>
      'Ищет контроль над деньгами, расходами, занятостью, доступом к счетам или финансовой независимостью.';

  @override
  String get metric_24_name => 'Индикаторы нарушения конфиденциальности';

  @override
  String get metric_24_description =>
      'Обнаруживает шпионаж, требования паролей, проверки устройств, отслеживание местоположения или нарушения конфиденциальности.';

  @override
  String get metric_25_name => 'Специфичность извинений';

  @override
  String get metric_25_description =>
      'Измеряет, называют ли извинения точный вред, влияние и будущую коррекцию вместо того, чтобы оставаться расплывчатыми.';

  @override
  String get metric_26_name => 'Давление прощения';

  @override
  String get metric_26_description =>
      'Отмечает требования двигаться дальше, быстро простить или перестать обсуждать вред до того, как произойдет исправление.';

  @override
  String get metric_27_name => 'Минимизация';

  @override
  String get metric_27_description =>
      'Обнаруживает преуменьшение вреда, называние серьезных проблем драматичными или уменьшение влияния, чтобы избежать ответственности.';

  @override
  String get metric_28_name => 'Проекция';

  @override
  String get metric_28_description =>
      'Ищет обвинения, которые отражают собственное поведение, мотивы или нерешенные чувства говорящего.';

  @override
  String get metric_29_name => 'Паттерн прерывания';

  @override
  String get metric_29_description =>
      'Отслеживает перебивание, разговор поверх других, отказ завершать или контроль над разговорными очередями.';

  @override
  String get metric_30_name => 'Отклонение темы';

  @override
  String get metric_30_description =>
      'Идентифицирует смену темы, подъем несвязанных проблем или избегание основной проблемы.';

  @override
  String get metric_31_name => 'Ориентация на решение';

  @override
  String get metric_31_description =>
      'Измеряет, направлены ли сообщения на решения, ясность, соглашения и следующие шаги.';

  @override
  String get metric_32_name => 'Взаимное решение проблем';

  @override
  String get metric_32_description =>
      'Оценивает совместный язык, общую ответственность, мозговой штурм и готовность найти работоспособные компромиссы.';

  @override
  String get metric_33_name => 'Эмоциональное наводнение';

  @override
  String get metric_33_description =>
      'Обнаруживает перегрузку, панику, закрытие, спираль или неспособность обрабатывать во время конфликта.';

  @override
  String get metric_34_name => 'Сигналы реакции страха';

  @override
  String get metric_34_description =>
      'Ищет успокоение, осторожный выбор слов, ужас, проблемы безопасности или страх реакции партнера.';

  @override
  String get metric_35_name => 'Согласованность утверждений';

  @override
  String get metric_35_description =>
      'Оценивает, остаются ли отчеты внутренне согласованными в сообщениях и во времени.';

  @override
  String get metric_36_name => 'Воспоминание на основе доказательств';

  @override
  String get metric_36_description =>
      'Проверяет, ссылаются ли утверждения на конкретные события, цитаты, временные шкалы или наблюдаемое поведение.';

  @override
  String get metric_37_name => 'Паттерн требования и отстранения';

  @override
  String get metric_37_description =>
      'Отслеживает одного партнера, ищущего ответы или изменения, пока другой избегает, закрывается или уходит.';

  @override
  String get metric_38_name => 'Индикаторы дисбаланса власти';

  @override
  String get metric_38_description =>
      'Отмечает неравную власть принятия решений, страх последствий, зависимость, запугивание или односторонний контроль.';

  @override
  String get metric_39_name => 'Уважительное несогласие';

  @override
  String get metric_39_description =>
      'Измеряет, сохраняет ли конфликт достоинство, любопытство и несогласие без деградации.';

  @override
  String get metric_40_name => 'Цикл разрыва и исправления';

  @override
  String get metric_40_description =>
      'Оценивает, следует ли за конфликтом признание, восстановление связи и фактическое исправление.';

  @override
  String get metric_41_name => 'Отстранение привязанности';

  @override
  String get metric_41_description =>
      'Обнаруживает, что любовь, тепло, секс, внимание или успокоение удерживаются как наказание или рычаг.';

  @override
  String get metric_42_name => 'Ссылки на публичное унижение';

  @override
  String get metric_42_description =>
      'Отмечает угрозы, шутки или действия, которые смущают партнера перед другими.';

  @override
  String get metric_43_name => 'Сигналы конфликта, связанного с веществами';

  @override
  String get metric_43_description =>
      'Ищет использование алкоголя или наркотиков, связанное с агрессией, ненадежностью, конфликтом или вредом.';

  @override
  String get metric_44_name => 'Давление родительского конфликта';

  @override
  String get metric_44_description =>
      'Идентифицирует детей, опеку, родительские роли или родительскую вину, используемые в конфликте или как рычаг.';

  @override
  String get metric_45_name => 'Уважение сексуальных границ';

  @override
  String get metric_45_description =>
      'Оценивает уважение к согласию, давлению, отказу, комфорту, времени и сексуальной автономии.';

  @override
  String get metric_46_name => 'Индикаторы цифрового преследования';

  @override
  String get metric_46_description =>
      'Отслеживает повторяющиеся нежелательные сообщения, спам-звонки, онлайн-давление, слежку или запугивание на основе платформ.';

  @override
  String get metric_47_name => 'Язык мониторинга или слежки';

  @override
  String get metric_47_description =>
      'Отмечает проверку местонахождения, требование доказательств, отслеживание поведения или постоянную проверку.';

  @override
  String get metric_48_name => 'Ориентация на будущее';

  @override
  String get metric_48_description =>
      'Измеряет, обсуждают ли партнеры будущее улучшение, обязательства, планы или конструктивное направление.';

  @override
  String get metric_49_name => 'Сигналы планирования безопасности';

  @override
  String get metric_49_description =>
      'Ищет попытки найти помощь, создать дистанцию, задокументировать вред или спланировать физическую/эмоциональную безопасность.';

  @override
  String get metric_50_name => 'Взаимные попытки деэскалации';

  @override
  String get metric_50_description =>
      'Отслеживает паузы, успокаивающий язык, более мягкий тон, тайм-ауты и попытки обоих партнеров снизить интенсивность.';

  @override
  String get metric_51_name => 'Сигналы надежной привязанности';

  @override
  String get metric_51_description =>
      'Идентифицирует доверие, прямое успокоение, эмоциональную доступность и комфорт с близостью и независимостью.';

  @override
  String get metric_52_name => 'Активация тревожной привязанности';

  @override
  String get metric_52_description =>
      'Отмечает протестное поведение, срочные потребности в успокоении, страх оставления и повышенную чувствительность к дистанции.';

  @override
  String get metric_53_name => 'Дистанцирование избегающей привязанности';

  @override
  String get metric_53_description =>
      'Обнаруживает эмоциональную минимизацию, защиты независимости, отстранение от уязвимости или дискомфорт с потребностями.';

  @override
  String get metric_54_name => 'Сигналы дезорганизованной привязанности';

  @override
  String get metric_54_description =>
      'Ищет циклы приближения-избегания, страх, смешанный с потребностью, хаотические реакции или сбивающие паттерны близости.';

  @override
  String get metric_55_name => 'Эмоциональные предложения и ответы';

  @override
  String get metric_55_description =>
      'Измеряет приглашения к вниманию, комфорту или связи и принимаются ли они или пропускаются.';

  @override
  String get metric_56_name => 'Отстранение от связи';

  @override
  String get metric_56_description =>
      'Отмечает игнорирование, отклонение или отказ отвечать на предложения близости или поддержки.';

  @override
  String get metric_57_name => 'Противостояние связи';

  @override
  String get metric_57_description =>
      'Обнаруживает враждебные или карательные реакции на попытки привязанности, уязвимости или исправления.';

  @override
  String get metric_58_name => 'Позитивное переопределение настроения';

  @override
  String get metric_58_description =>
      'Ищет щедрость, пользу сомнения, нежность и интерпретацию конфликта через заботу.';

  @override
  String get metric_59_name => 'Негативное переопределение настроения';

  @override
  String get metric_59_description =>
      'Отмечает предположение о плохих намерениях, негативную интерпретацию нейтральных сообщений и устойчивую враждебную рамку.';

  @override
  String get metric_60_name => 'Паттерн жесткого начала';

  @override
  String get metric_60_description =>
      'Идентифицирует разговоры, которые начинаются с обвинения, атаки, презрения или вины вместо просьбы.';

  @override
  String get metric_61_name => 'Паттерн мягкого начала';

  @override
  String get metric_61_description =>
      'Ищет мягкие открытия с использованием чувств, потребностей, конкретных запросов и не обвиняющего языка.';

  @override
  String get metric_62_name => 'Физиологическое самоуспокоение';

  @override
  String get metric_62_description =>
      'Оценивает попытки сделать паузу, дышать, взять пространство или регулировать тело перед продолжением конфликта.';

  @override
  String get metric_63_name => 'Паттерн избегания конфликта';

  @override
  String get metric_63_description =>
      'Отслеживает повторяющееся избегание необходимых тем, дискомфорт, несогласие или эмоциональную честность.';

  @override
  String get metric_64_name => 'Волатильный стиль конфликта';

  @override
  String get metric_64_description =>
      'Обнаруживает конфликт высокой интенсивности с прямым выражением, который может все еще включать вовлечение и исправление.';

  @override
  String get metric_65_name => 'Валидирующий стиль конфликта';

  @override
  String get metric_65_description =>
      'Измеряет, признают ли партнеры перспективу друг друга, будучи несогласными.';

  @override
  String get metric_66_name => 'Враждебный стиль конфликта';

  @override
  String get metric_66_description =>
      'Отмечает частую критику, презрение, защитность, атаки и противоречивую рамку.';

  @override
  String get metric_67_name => 'Паттерн враждебного отстранения';

  @override
  String get metric_67_description =>
      'Идентифицирует холодную враждебность, эмоциональное отстранение, презрение и низкую мотивацию исправления.';

  @override
  String get metric_68_name => 'Готовность к компромиссу';

  @override
  String get metric_68_description =>
      'Ищет гибкость, переговоры, предложения среднего пути и жертвы, которые уважают обе потребности.';

  @override
  String get metric_69_name => 'Принятие влияния';

  @override
  String get metric_69_description =>
      'Измеряет открытость к влиянию чувств, потребностей или перспективы партнера.';

  @override
  String get metric_70_name => 'Сигналы тупикового конфликта';

  @override
  String get metric_70_description =>
      'Отмечает повторяющиеся нерешенные проблемы, связанные с ценностями, мечтами, идентичностью или хронической несовместимостью.';

  @override
  String get metric_71_name => 'Рамка решаемой проблемы';

  @override
  String get metric_71_description =>
      'Обнаруживает практические, конкретные определения проблем, которые могут привести к конкретным соглашениям.';

  @override
  String get metric_72_name => 'Ссылки на общее значение';

  @override
  String get metric_72_description =>
      'Ищет ценности, ритуалы, цели, воспоминания или язык идентичности, который создает общую историю отношений.';

  @override
  String get metric_73_name => 'Осознанность карты любви';

  @override
  String get metric_73_description =>
      'Оценивает знание внутреннего мира партнера, стрессоров, предпочтений, страхов и повседневной жизни.';

  @override
  String get metric_74_name => 'Нежность и восхищение';

  @override
  String get metric_74_description =>
      'Идентифицирует признательность, уважение, тепло, комплименты, благодарность и позитивное отношение.';

  @override
  String get metric_75_name => 'Дисбаланс эмоционального труда';

  @override
  String get metric_75_description =>
      'Отмечает одного партнера, несущего непропорциональное планирование, успокоение, запоминание, объяснение или поддержание отношений.';

  @override
  String get metric_76_name => 'Отклонение ментальной нагрузки';

  @override
  String get metric_76_description =>
      'Обнаруживает минимизацию невидимой работы по планированию, домашнюю координацию, планирование или отслеживание ответственности.';

  @override
  String get metric_77_name => 'Сигналы вооруженной некомпетентности';

  @override
  String get metric_77_description =>
      'Ищет утверждение о неспособности, путанице или беспомощности, чтобы избежать справедливой ответственности.';

  @override
  String get metric_78_name => 'Чувствительность к триггерам травмы';

  @override
  String get metric_78_description =>
      'Измеряет осознанность триггеров, реакции на травму и осторожное обращение с уязвимыми темами.';

  @override
  String get metric_79_name => 'Сигналы гипербдительности';

  @override
  String get metric_79_description =>
      'Отмечает сканирование на опасность, чрезмерный мониторинг тона, страх ошибок или постоянную эмоциональную бдительность.';

  @override
  String get metric_80_name => 'Язык страха оставления';

  @override
  String get metric_80_description =>
      'Обнаруживает страх быть оставленным, замененным, проигнорированным, отброшенным или эмоционально покинутым.';

  @override
  String get metric_81_name => 'Паттерн поиска успокоения';

  @override
  String get metric_81_description =>
      'Отслеживает повторяющиеся запросы доказательства любви, обязательства, безопасности или продолжающегося интереса.';

  @override
  String get metric_82_name => 'Цикл преследователь-дистанцирующийся';

  @override
  String get metric_82_description =>
      'Идентифицирует одного партнера, эскалирующего преследование близости, пока другой увеличивает дистанцию.';

  @override
  String get metric_83_name => 'Накопление обиды';

  @override
  String get metric_83_description =>
      'Ищет хранящиеся обиды, повторяющиеся ссылки на прошлое, горечь и нерешенный эмоциональный долг.';

  @override
  String get metric_84_name => 'Поведение подсчета очков';

  @override
  String get metric_84_description =>
      'Отмечает транзакционный подсчет ошибок, услуг, жертв или ошибок для получения рычага.';

  @override
  String get metric_85_name => 'Условная привязанность';

  @override
  String get metric_85_description =>
      'Обнаруживает любовь, одобрение, доступ или тепло, предлагаемые только при достижении соответствия.';

  @override
  String get metric_86_name => 'Индикаторы любовной бомбардировки';

  @override
  String get metric_86_description =>
      'Отмечает интенсивную привязанность, обещания, давление или идеализацию, используемые для ускорения привязанности или контроля.';

  @override
  String get metric_87_name => 'Попытки хуверинга';

  @override
  String get metric_87_description =>
      'Идентифицирует попытки вернуть кого-то через вину, ностальгию, обещания, кризисы или внезапную привязанность.';

  @override
  String get metric_88_name => 'Паттерн DARVO';

  @override
  String get metric_88_description =>
      'Обнаруживает отрицание, атаку и инверсию жертва-обидчик при конфронтации с вредом.';

  @override
  String get metric_89_name => 'Паттерн позиции жертвы';

  @override
  String get metric_89_description =>
      'Отмечает повторяющуюся само-жертвенность, которая избегает ответственности или перенаправляет внимание от причиненного вреда.';

  @override
  String get metric_90_name => 'Рамка морального превосходства';

  @override
  String get metric_90_description =>
      'Ищет праведность, претензии на чистоту или этическое превосходство, используемое для доминирования в конфликте.';

  @override
  String get metric_91_name => 'Убийство характера';

  @override
  String get metric_91_description =>
      'Обнаруживает широкие атаки на идентичность, целостность, психическое здоровье или ценность вместо конкретного поведения.';

  @override
  String get metric_92_name => 'Индикаторы триангуляции';

  @override
  String get metric_92_description =>
      'Отмечает привлечение третьих сторон в конфликт для давления, сравнения, валидации или дестабилизации партнера.';

  @override
  String get metric_93_name => 'Давление социального сравнения';

  @override
  String get metric_93_description =>
      'Ищет сравнения с бывшими, друзьями, другими парами или идеалами, используемые для стыда или принуждения.';

  @override
  String get metric_94_name => 'Поддержка автономии';

  @override
  String get metric_94_description =>
      'Измеряет уважение к независимому выбору, дружбе, целям, границам и личному агентству.';

  @override
  String get metric_95_name => 'Уважение согласия и выбора';

  @override
  String get metric_95_description =>
      'Оценивает, принимаются ли решения свободно без давления, вины, угроз или манипуляции.';

  @override
  String get metric_96_name => 'Совместное планирование';

  @override
  String get metric_96_description =>
      'Ищет общее планирование, совместные решения, скоординированные обязанности и практическое выполнение.';

  @override
  String get metric_97_name => 'Выполнение исправления';

  @override
  String get metric_97_description =>
      'Измеряет, отражаются ли обещанные изменения позже в поведении, а не только в словах.';

  @override
  String get metric_98_name => 'Доказательство измененного поведения';

  @override
  String get metric_98_description =>
      'Проверяет наблюдаемые, повторяющиеся действия, показывающие обучение, корректировку или сниженное вредное поведение.';

  @override
  String get metric_99_name => 'Язык эмоциональной безопасности';

  @override
  String get metric_99_description =>
      'Идентифицирует язык, который приглашает к честности, снижает страх, защищает достоинство и успокаивает безопасное выражение.';

  @override
  String get metric_100_name => 'Реляционная амбивалентность';

  @override
  String get metric_100_description =>
      'Обнаруживает неопределенность, смешанное обязательство, сообщения толкай-тянай или неясное желание продолжать.';

  @override
  String get unableToOpenConversations => 'Не удается открыть беседы';

  @override
  String get unableToOpenConversationsBody =>
      'Произошла ошибка при загрузке ваших бесед. Пожалуйста, попробуйте снова.';

  @override
  String get unableToLoadConversationsBody =>
      'Не удается загрузить беседы. Проверьте разрешения и попробуйте снова.';

  @override
  String get errorLoadingConversationsBody =>
      'Ошибка при загрузке бесед. Пожалуйста, попробуйте снова.';

  @override
  String get smsPermissionRequired => 'Требуется разрешение SMS';

  @override
  String get smsPermissionRequiredBody =>
      'Для анализа SMS-бесед нам нужно разрешение на чтение ваших сообщений. Ваша конфиденциальность важна — сообщения анализируются только локально и никогда не сохраняются на наших серверах.';

  @override
  String get grantSmsPermission => 'Предоставить разрешение SMS';

  @override
  String get noSmsConversationsFound => 'SMS-беседы не найдены';

  @override
  String get noConversationsMatchSearch =>
      'Нет бесед, соответствующих вашему поиску';

  @override
  String get noSmsMessagesOnDevice =>
      'У вас нет SMS-сообщений на этом устройстве';

  @override
  String get tryDifferentSearch => 'Попробуйте другой поисковый запрос';

  @override
  String get clearSearch => 'Очистить поиск';

  @override
  String selectedFile(String filename) {
    return 'Выбрано: $filename';
  }

  @override
  String get invalidFile => 'Недопустимый файл';

  @override
  String get fileImport => 'Импорт файла';

  @override
  String get fileImportNotImplemented =>
      'Анализ файлов еще не реализован для этого типа файла.';

  @override
  String get errorPickingFile =>
      'Не удается открыть файл. Пожалуйста, попробуйте снова.';

  @override
  String get readyToCapture => 'Готов к захвату';

  @override
  String get readyToCaptureBody =>
      'Перейдите в приложение сообщений сейчас и начните делать скриншоты.\n\nВернитесь в это приложение, когда закончите, и нажмите \"Завершить и обработать\".';

  @override
  String get noScreenshotsToProcess => 'Нет скриншотов для обработки.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Обработка скриншота $current из $total...';
  }

  @override
  String get noMessagesFound => 'Сообщения не найдены';

  @override
  String get noMessagesFoundBody =>
      'Не удалось извлечь сообщения из скриншотов.\n\nУбедитесь, что скриншоты четко показывают беседу.';

  @override
  String loadedMessages(int count) {
    return '$count сообщений загружено из скриншотов';
  }

  @override
  String get processingError => 'Ошибка обработки';

  @override
  String get processingErrorBody =>
      'Ошибка при обработке скриншотов. Пожалуйста, попробуйте снова.';

  @override
  String metricListSavedAs(String name) {
    return 'Ваши выборы сохранены как \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Выборы \"$name\" были получены и применены.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count сообщений загружено из $name';
  }

  @override
  String get loadButton => 'Загрузить';

  @override
  String get photoPermissionRequired =>
      'Разрешение библиотеки фотографий требуется для обнаружения скриншотов.';

  @override
  String get initializingConnection =>
      'Инициализация безопасного соединения...';

  @override
  String get configurationRequired => 'Требуется конфигурация';

  @override
  String get goBack => 'Назад';

  @override
  String get enableDateRangeFiltering => 'Включить фильтрацию по диапазону дат';

  @override
  String get clearSelectedDateRange => 'Очистить выбранный диапазон дат';

  @override
  String get largeThreadNoticeTitle => 'УВЕДОМЛЕНИЕ ПОЛЬЗОВАТЕЛЮ';

  @override
  String get largeThreadNoticeBody =>
      'При работе с исключительно большими текстовыми потоками некоторые экраны загрузки в этом приложении могут превышать полторы минуты.\n\nПриложение не зависает. Если вы видите вращающийся индикатор состояния, приложение все еще загружается.\n\nПожалуйста, будьте терпеливы в этих случаях, так как время загрузки может быть дольше обычного по сравнению с другими приложениями, особенно при работе с большим набором данных, таким как поток с 50 000 сообщений.';

  @override
  String get neverShowThisAgain => 'Больше не показывать это сообщение';

  @override
  String loadingConversationWith(String name) {
    return 'Загрузка беседы\nс $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Откройте приложение Сообщения и выберите беседу\n2. Прокрутите до самого старого сообщения, которое хотите проанализировать\n3. Нажмите \"Начать захват\" ниже\n4. Делайте скриншоты, прокручивая беседу\n5. Когда закончите, нажмите \"Завершить и обработать\"';

  @override
  String get howToCaptureIosMessages => 'Как захватывать сообщения iOS';

  @override
  String get deepSeekApiKey => 'Ключ API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Введите ваш ключ API DeepSeek для включения ИИ-анализа.';

  @override
  String get getYourApiKeyFrom =>
      'Получите ваш ключ API на: https://platform.deepseek.com';

  @override
  String get apiKey => 'Ключ API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Ваш ключ API безопасно хранится на вашем устройстве и никогда не передается.';

  @override
  String get pleaseEnterApiKey => 'Пожалуйста, введите ключ API';

  @override
  String get apiKeySavedSuccessfully => 'Ключ API успешно сохранен!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Пожалуйста, будьте терпеливы, наборы данных более длинных текстовых потоков загружаются довольно долго';

  @override
  String get almostThereBigOne =>
      'Почти готово, Wow, это должно было быть большим';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Пожалуйста, будьте терпеливы, большие наборы данных могут привести к времени загрузки более полутора минут';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Продолжаю загружать массивный поток с $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Сообщения не найдены в выбранном диапазоне дат. Выберите другие даты или очистите фильтр даты.';

  @override
  String get purchaseCustomMetricTileTitle => 'Купить Пользовательскую Метрику';

  @override
  String get purchaseCustomMetricTileDescription =>
      'За единовременную плату \$4.99 введите имя и определение пользовательской метрики, которые будут навсегда сохранены рядом с вашими другими метриками для использования в любом будущем анализе. Покупайте неограниченное количество пользовательских метрик.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Купить Пользовательскую Метрику';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'С вас будет снята плата \$4.99 (единовременно) для разблокировки одного слота пользовательской метрики.\n\nИмя и определение вашей пользовательской метрики являются постоянными и никогда не могут быть изменены после сохранения, поэтому выбирайте тщательно.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Купить — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Название Пользовательской Метрики';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Введите название вашей пользовательской метрики:';

  @override
  String get purchaseCustomMetricNameHint => 'Название Метрики';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Подтвердите Название Метрики';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Вы ввели:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Это ОКОНЧАТЕЛЬНО и НИКОГДА не может быть изменено.';

  @override
  String get purchaseCustomMetricReenterName => 'Упс — Введите Название Заново';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Сохранить Название Метрики';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Определить: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Введите значение вашей Пользовательской Метрики: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Опишите, что означает эта метрика, какие поведения она отслеживает и как применяется к динамике отношений...';

  @override
  String get purchaseCustomMetricReenter => 'Упс — Ввести Заново';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Сохранить Значение';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Предпросмотр Вашей Пользовательской Метрики';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Вот как будет выглядеть ваш блок:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Это ваш ПОСЛЕДНИЙ ШАНС передумать.\nПосле подтверждения название и определение становятся постоянными.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Отменить Всё';

  @override
  String get purchaseCustomMetricCommit =>
      'Подтвердить Пользовательскую Метрику';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" добавлено в ваши метрики! Теперь вы можете выбрать её для анализа.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Обработка Покупки...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Ожидание подтверждения от магазина.\nПожалуйста, не закрывайте приложение.';

  @override
  String get next => 'Далее';

  @override
  String get cancelNotReady => 'Отмена — Я не был(а) готов(а)';

  @override
  String get packGoodLabel => 'Хороший';

  @override
  String get packBadLabel => 'Плохой';

  @override
  String get packUglyLabel => 'Злой';

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
