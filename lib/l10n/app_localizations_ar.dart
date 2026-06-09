// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'محلل سمية العلاقات بالذكاء الاصطناعي';

  @override
  String get psychologicalMetrics => 'المقاييس النفسية';

  @override
  String get metricsDescription =>
      'يؤدي اختيار عدد أقل من المقاييس إلى تحليل أعمق وأكثر تركيزًا لتلك السلوكيات. يؤدي اختيار عدد أكبر من المقاييس إلى تقرير أوسع مع تفاصيل أقل لكل مقياس.';

  @override
  String get selectSMS => 'اختر الرسائل القصيرة / RCS Chat';

  @override
  String get selectDiscordChannel => 'اختر قناة Discord';

  @override
  String get lightMode => 'فاتح';

  @override
  String get darkMode => 'داكن';

  @override
  String get discordSetupTitle => 'كيفية إعداد Discord';

  @override
  String get discordSetupDescription =>
      'اتبع هذه الخطوات لتمكين تحليل قنوات Discord في التطبيق:';

  @override
  String get discordStep1Title => 'إنشاء بوت Discord';

  @override
  String get discordStep1Description =>
      'اذهب إلى discord.com/developers، أنشئ تطبيقًا جديدًا وأضف بوتًا إليه. انسخ رمز البوت.';

  @override
  String get discordStep2Title => 'تمكين امتيازات البوت';

  @override
  String get discordStep2Description =>
      'في إعدادات البوت، قم بتمكين \'Message Content Intent\' و \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'دعوة البوت إلى الخادم';

  @override
  String get discordStep3Description =>
      'استخدم مولد عنوان URL OAuth2 لدعوة البوت إلى خادم Discord الخاص بك بالأذونات المطلوبة.';

  @override
  String get discordStep4Title => 'التكوين في التطبيق';

  @override
  String get discordStep4Description =>
      'أدخل رمز البوت الخاص بك في إعدادات التطبيق (اتصل بالدعم إذا كنت بحاجة إلى مساعدة).';

  @override
  String get discordStep5Title => 'اختيار القناة';

  @override
  String get discordStep5Description =>
      'اضغط على \'اختيار قناة Discord\'، اختر الخادم الخاص بك، ثم حدد القناة للتحليل.';

  @override
  String get gotIt => 'فهمت';

  @override
  String get selectFile => 'اختر ملفًا';

  @override
  String get analyzeSelectedMetrics => 'تحليل المقاييس المحددة';

  @override
  String get analyze20RandomMetrics => 'تحليل 20 مقياسًا عشوائيًا';

  @override
  String get membershipOptions => 'خيارات العضوية';

  @override
  String get free => 'مجاني';

  @override
  String get oneTimeUnlock => 'فتح التقرير لمرة واحدة';

  @override
  String get standard => 'قياسي';

  @override
  String get discordAddon => 'إضافة Discord';

  @override
  String get analyze => 'تحليل';

  @override
  String get report => 'تقرير';

  @override
  String get pdfReport => 'تقرير PDF';

  @override
  String get openPdf => 'فتح PDF';

  @override
  String get sharePdf => 'مشاركة PDF';

  @override
  String get printPdf => 'طباعة PDF';

  @override
  String get closePdfPreview => 'إغلاق نافذة معاينة PDF';

  @override
  String get openPdfPreview => 'فتح نافذة معاينة PDF';

  @override
  String get pdfPreviewDescription =>
      'تبدأ نافذة PDF المضمنة مغلقة للحفاظ على التقرير مضغوطًا.';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get unlockThisReport => 'فتح هذا التقرير - \$20';

  @override
  String get joinStandard => 'الاشتراك في القياسي - \$9.99/شهر';

  @override
  String get instantUnlockTitle => 'فتح فوري للتقرير - \$20';

  @override
  String get instantUnlockDescription =>
      'هذه عملية شراء لمرة واحدة لفتح التقرير الحالي فقط. لا يلزم اشتراك. ستتطلب التقارير المستقبلية عمليات فتح منفصلة أو عضوية.\n\nالمتابعة بالدفع؟';

  @override
  String get purchaseFor20 => 'شراء مقابل \$20';

  @override
  String get share => 'مشاركة';

  @override
  String get print => 'طباعة';

  @override
  String get save => 'حفظ';

  @override
  String get cancel => 'إلغاء';

  @override
  String get ok => 'موافق';

  @override
  String get loading => 'جارٍ التحميل...';

  @override
  String get error => 'خطأ';

  @override
  String get success => 'نجاح';

  @override
  String get conversations => 'المحادثات';

  @override
  String get messages => 'الرسائل';

  @override
  String get selectConversation => 'اختر محادثة';

  @override
  String get selectSmsConversation => 'اختر الرسائل القصيرة / RCS Chat';

  @override
  String get searchConversations => 'البحث في المحادثات...';

  @override
  String get loadingConversations => 'جارٍ تحميل المحادثات...';

  @override
  String get errorLoadingConversations => 'خطأ في تحميل المحادثات';

  @override
  String get selectConversationToAnalyze => 'اختر المحادثة للتحليل';

  @override
  String get analyzeWithSelectedMetrics => 'التحليل بالمقاييس المحددة';

  @override
  String get loadConversationAndSelectMetric =>
      'حمّل محادثة واختر مقياسًا واحدًا على الأقل';

  @override
  String get selectAtLeastOneMetric =>
      'يجب تحديد مقياس واحد على الأقل لتشغيل التقرير.';

  @override
  String get spinningMetricWheel => 'تدوير عجلة المقاييس...';

  @override
  String get loadConversationToAnalyze => 'حمّل محادثة لتحليلها';

  @override
  String get noConversationsFound => 'لم يتم العثور على محادثات';

  @override
  String get permissionsRequired => 'الأذونات مطلوبة';

  @override
  String get smsPermission => 'الرسائل النصية';

  @override
  String get contactsPermission => 'جهات الاتصال';

  @override
  String get smsPermissionDescription =>
      'لتحليل محادثات الرسائل القصيرة الخاصة بك بحثًا عن أنماط العلاقات';

  @override
  String get contactsPermissionDescription =>
      'لعرض أسماء جهات الاتصال بدلاً من أرقام الهواتف';

  @override
  String get analyzingMessage =>
      'يرجى الانتظار بينما يتم إنشاء تحليلك النفسي بواسطة الذكاء الاصطناعي...';

  @override
  String get analyzingStatus => 'جارٍ تحليل المحادثة...';

  @override
  String get analyzingSubMessage =>
      'يرجى التحلي بالصبر، قد تستغرق هذه العملية ما يصل إلى دقيقة حسب سرعة اتصالك وكمية المقاييس المحددة';

  @override
  String get unlockFullReport => 'فتح وعرض هذا التقرير بالكامل';

  @override
  String get fullReportLocked => 'التقرير الكامل مقفل';

  @override
  String get upgradeToUnlock =>
      'قم بترقية عضويتك لفتح تقرير التحليل النفسي الكامل مع جميع المقاييس والرؤى التفصيلية.';

  @override
  String get language => 'اللغة';

  @override
  String get english => 'الإنجليزية';

  @override
  String get spanish => 'الإسبانية';

  @override
  String get french => 'الفرنسية';

  @override
  String get german => 'الألمانية';

  @override
  String get italian => 'الإيطالية';

  @override
  String get portuguese => 'البرتغالية';

  @override
  String get dutch => 'الهولندية';

  @override
  String get russian => 'الروسية';

  @override
  String get chinese => 'الصينية';

  @override
  String get japanese => 'اليابانية';

  @override
  String get korean => 'الكورية';

  @override
  String get arabic => 'العربية';

  @override
  String get hindi => 'الهندية';

  @override
  String get turkish => 'التركية';

  @override
  String get polish => 'البولندية';

  @override
  String get ukrainian => 'الأوكرانية';

  @override
  String get runAnotherAnalysis => 'تشغيل تحليل آخر؟';

  @override
  String get becomeMemberTitle => 'كن عضوًا للحصول على تقرير التحليل الكامل';

  @override
  String get becomeMemberSubtitle =>
      'اختر مستوى الوصول الذي يناسب المحادثات والتقارير التي تحتاج إلى تحليلها.';

  @override
  String get benefitAnalyzeSms => 'تحليل الرسائل النصية القصيرة';

  @override
  String get benefitReportPreview => 'تشغيل معاينة التقرير';

  @override
  String get benefitViewPartialReport => 'عرض حوالي 25% من التقرير';

  @override
  String get benefitLockedDetails => 'تفاصيل التقرير الكامل مقفلة';

  @override
  String get currentFreeAccess => 'الوصول المجاني الحالي';

  @override
  String get benefitUnlockCurrentReport => 'فتح هذا التقرير الكامل الحالي';

  @override
  String get benefitNoSubscription => 'بدون اشتراك';

  @override
  String get benefitSavePrintShareThis => 'حفظ وطباعة ومشاركة هذا التقرير';

  @override
  String get benefitBestSingleAnalysis =>
      'الأفضل إذا كنت تحتاج إلى تحليل واحد فقط';

  @override
  String get unlockThisReportShort => 'فتح هذا التقرير';

  @override
  String get benefitFullSmsReport => 'تقرير تحليل الرسائل القصيرة الكامل';

  @override
  String get benefitSavePrintSharePdf => 'حفظ وطباعة ومشاركة تقارير PDF';

  @override
  String get benefitTenReports => '10 تقارير لكل فترة 24 ساعة';

  @override
  String get benefitBestTextReview =>
      'الأفضل لمراجعة العلاقات عبر الرسائل النصية';

  @override
  String get benefitDateRangeFilter => 'تصفية التحليل حسب نطاق التاريخ';

  @override
  String get signUpStandard => 'الاشتراك في العضوية القياسية';

  @override
  String get benefitAddToStandard => 'الإضافة إلى العضوية القياسية';

  @override
  String get benefitAnalyzeDiscord => 'تحليل محادثات خوادم Discord';

  @override
  String get benefitRequiresBot => 'يتطلب تثبيت البوت';

  @override
  String get benefitBestGamers => 'الأفضل للاعبين ومجتمعات Discord';

  @override
  String get addDiscordAnalysis => 'إضافة تحليل Discord';

  @override
  String get requiresStandardMembership => 'يتطلب العضوية القياسية';

  @override
  String get comingSoon => 'قريبًا';

  @override
  String get comingSoonWithNextUpdate => 'قريبًا مع التحديث القادم:';

  @override
  String get proMembershipTier => 'مستوى عضوية Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'مستوى عضوية Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'يشمل Pro:';

  @override
  String get proGetsDescription =>
      'حلل سلاسل المحادثات من جميع منصات المراسلة ووسائل التواصل الاجتماعي الشائعة الأخرى مثل:';

  @override
  String get proPlatformsList =>
      'LinkedIn وWhatsApp وInstagram وFacebook Messenger وTelegram وX (Twitter) والبريد الإلكتروني والتقويم';

  @override
  String get proPlusGetsLabel => 'يشمل Pro-Plus:';

  @override
  String get proPlusGetsDescription =>
      'كل ما في Pro، بالإضافة إلى إضافة Discord بسعر مخفض.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'تمت عملية الشراء بنجاح! تم فتح التقرير.';

  @override
  String get purchaseFailed => 'فشلت عملية الشراء. يرجى المحاولة مرة أخرى.';

  @override
  String get membershipActivated => 'تم تفعيل العضوية!';

  @override
  String get dateRangeFilter => 'فلتر نطاق التاريخ';

  @override
  String get dateRangeOptional => '(اختياري)';

  @override
  String get startDate => 'تاريخ البدء';

  @override
  String get endDate => 'تاريخ الانتهاء';

  @override
  String get clear => 'مسح';

  @override
  String get dateRangeRequiresMembership => 'يتطلب عضوية Standard أو أعلى';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'حدد حتى $max. الحالي: $current';
  }

  @override
  String get clearSelections => 'مسح التحديدات';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'تحليل $count مؤشرات عشوائية';
  }

  @override
  String get saveSelections => 'حفظ التحديدات';

  @override
  String get loadSelections => 'تحميل الاختيارات';

  @override
  String get saveMetricListName => 'حفظ قائمة المؤشرات';

  @override
  String get enterListName => 'أدخل اسمًا لهذه القائمة:';

  @override
  String get chooseSavedMetrics => 'اختر قائمة المؤشرات المحفوظة:';

  @override
  String get noSavedLists =>
      'لا توجد قوائم مؤشرات محفوظة للتحميل في الوقت الحالي.';

  @override
  String get metricListSaved => 'تم حفظ قائمة المؤشرات بنجاح.';

  @override
  String get metricListLoaded => 'تم تحميل قائمة المؤشرات بنجاح.';

  @override
  String get filters => 'المرشحات';

  @override
  String get sortBy => 'ترتيب حسب:';

  @override
  String get recent => 'الأحدث';

  @override
  String get name => 'الاسم';

  @override
  String get count => 'العدد';

  @override
  String get namedOnly => 'المسمى فقط';

  @override
  String get minMessages => 'أقل رسائل:';

  @override
  String get minimumMessages => 'الحد الأدنى للرسائل:';

  @override
  String get executiveSummary => 'الملخص التنفيذي';

  @override
  String get metricScores => 'درجات المؤشرات';

  @override
  String get contextualEvidenceExamples => 'أمثلة الأدلة السياقية';

  @override
  String get neutralSynthesis => 'التركيب المحايد';

  @override
  String analysisOfSender(Object sender) {
    return 'تحليل $sender (المرسل)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'تحليل $receiver (المستلم)';
  }

  @override
  String get finalConclusion => 'الخاتمة النهائية';

  @override
  String get metric_1_name => 'الازدراء';

  @override
  String get metric_1_description =>
      'يبحث عن التفوق، الاشمئزاز، السخرية، لغة تدوير العينين، أو الإهانات التي تضع شريكًا واحدًا تحت الآخر.';

  @override
  String get metric_2_name => 'الدفاعية';

  @override
  String get metric_2_description =>
      'يتتبع الحماية الذاتية الانعكاسية، الهجمات المضادة، الأعذار، والرفض النظر في شكوى الشخص الآخر.';

  @override
  String get metric_3_name => 'الإغلاق';

  @override
  String get metric_3_description =>
      'يحدد الإغلاق، الانسحاب، التجاهل، رفض الإجابة، أو إنهاء المحادثات لتجنب المشاركة.';

  @override
  String get metric_4_name => 'النقد';

  @override
  String get metric_4_description =>
      'يكتشف الهجمات على الشخصية أو الشخص بدلاً من السلوكيات المحددة، الاحتياجات، أو الحوادث.';

  @override
  String get metric_5_name => 'مؤشرات التلاعب النفسي';

  @override
  String get metric_5_description =>
      'يحدد محاولات جعل شخص يشك في الذاكرة، الإدراك، العقل، أو شرعية تجربته.';

  @override
  String get metric_6_name => 'تحويل اللوم';

  @override
  String get metric_6_description =>
      'يقيس ما إذا كان يتم إعادة توجيه المسؤولية إلى الشريك الآخر بدلاً من الاعتراف بها مباشرة.';

  @override
  String get metric_7_name => 'نمط التصعيد';

  @override
  String get metric_7_description =>
      'يقيم ما إذا كان النبرة، الاتهامات، الشدة، أو التهديدات تزيد بدلاً من التحرك نحو الحل.';

  @override
  String get metric_8_name => 'التعرف على محاولات الإصلاح';

  @override
  String get metric_8_description =>
      'يتحقق ما إذا كانت الاعتذارات، الفكاهة، التوقفات، الطمأنة، أو عروض السلام يتم ملاحظتها وقبولها.';

  @override
  String get metric_9_name => 'لغة المسؤولية';

  @override
  String get metric_9_description =>
      'يبحث عن ملكية واضحة للضرر، مسؤولية محددة، والرغبة في تغيير السلوك.';

  @override
  String get metric_10_name => 'احترام الحدود';

  @override
  String get metric_10_description =>
      'يقيم ما إذا كانت الحدود المحددة حول الوقت، الخصوصية، الجسم، العواطف، أو الاتصال محترمة.';

  @override
  String get metric_11_name => 'مؤشرات السيطرة القسرية';

  @override
  String get metric_11_description =>
      'يحدد أنماط التخويد، التقييد، المراقبة، الاعتماد، أو السيطرة على الخيارات والحركة.';

  @override
  String get metric_12_name => 'لغة التهديد';

  @override
  String get metric_12_description =>
      'يحدد التهديدات الصريحة أو الضمنية التي تتضمن السلامة، التخلي، الكشف، الانتقام، أو العقاب.';

  @override
  String get metric_13_name => 'الإهمال';

  @override
  String get metric_13_description =>
      'يكتشف تجاهل المخاوف، معاملة الاحتياجات على أنها غير مهمة، أو رفض أخذ الضيق بجدية.';

  @override
  String get metric_14_name => 'الإبطال';

  @override
  String get metric_14_description =>
      'يقيس الإنكار، السخرية، أو تصحيح عواطف شخص آخر بدلاً من الاعتراف بها.';

  @override
  String get metric_15_name => 'تعبير التعاطف';

  @override
  String get metric_15_description =>
      'يبحث عن تبني المنظور، الرعاية، الاعتراف العاطفي، والقلق تجاه تجربة الشخص الآخر.';

  @override
  String get metric_16_name => 'التبادلية';

  @override
  String get metric_16_description =>
      'يقيم ما إذا كان الانتباه، الجهد، الاعتذار، التنازل، والدعم العاطفي يتدفق في كلا الاتجاهين.';

  @override
  String get metric_17_name => 'التنظيم العاطفي';

  @override
  String get metric_17_description =>
      'يقيم القدرة على البقاء متجذرًا، التوقف، تهدئة الذات، والتواصل دون تفاعل انفجاري.';

  @override
  String get metric_18_name => 'السخرية المستخدمة كضرر';

  @override
  String get metric_18_description =>
      'يحدد السخرية المستخدمة للتقليل، العقاب، الإهانة، أو إخفاء العدائية كفكاهة.';

  @override
  String get metric_19_name => 'الشتائم';

  @override
  String get metric_19_description =>
      'يحدد التسميات المهينة، الإهانات، الشتائم الموجهة للشخص، أو الهجمات القائمة على الهوية.';

  @override
  String get metric_20_name => 'نمط المعاملة الصامتة';

  @override
  String get metric_20_description =>
      'يتتبع الصمت المستخدم كعقاب، سيطرة، تجنب، أو سحب الاتصال.';

  @override
  String get metric_21_name => 'إطار الغيرة';

  @override
  String get metric_21_description =>
      'يقيم الشك، التملك، الاتهامات، أو الغيرة المقدمة كدليل على الاهتمام.';

  @override
  String get metric_22_name => 'ضغط العزلة';

  @override
  String get metric_22_description =>
      'يحدد الجهود لفصل الشريك عن الأصدقاء، العائلة، أنظمة الدعم، أو وجهات النظر الخارجية.';

  @override
  String get metric_23_name => 'مؤشرات السيطرة المالية';

  @override
  String get metric_23_description =>
      'يبحث عن السيطرة على المال، الإنفاق، التوظيف، الوصول إلى الحسابات، أو الاستقلال المالي.';

  @override
  String get metric_24_name => 'مؤشرات انتهاك الخصوصية';

  @override
  String get metric_24_description =>
      'يكتشف التجسس، مطالبات كلمة المرور، فحص الأجهزة، تتبع الموقع، أو انتهاكات الخصوصية.';

  @override
  String get metric_25_name => 'تحديد الاعتذار';

  @override
  String get metric_25_description =>
      'يقيس ما إذا كانت الاعتذارات تسمي الضرر الدقيق، التأثير، والتصحيح المستقبلي بدلاً من البقاء غامضة.';

  @override
  String get metric_26_name => 'ضغط المسامحة';

  @override
  String get metric_26_description =>
      'يحدد مطالبات بالمضي قدمًا، المسامحة بسرعة، أو التوقف عن مناقشة الضرر قبل حدوث الإصلاح.';

  @override
  String get metric_27_name => 'التقليل';

  @override
  String get metric_27_description =>
      'يكتشف التقليل من الضرر، تسمية المخاوف الجدية درامية، أو تقليل التأثير لتجنب المسؤولية.';

  @override
  String get metric_28_name => 'الإسقاط';

  @override
  String get metric_28_description =>
      'يبحث عن الاتهامات التي تعكس سلوك المتحدث، دوافعه، أو مشاعره غير المحلولة.';

  @override
  String get metric_29_name => 'نمط المقاطعة';

  @override
  String get metric_29_description =>
      'يتتبع قطع، التحدث فوق، رفض الإكمال، أو التحكم في أدوار المحادثة.';

  @override
  String get metric_30_name => 'تحويل الموضوع';

  @override
  String get metric_30_description =>
      'يحدد تغيير الموضوع، إثارة قضايا غير ذات صلة، أو تجنب القلق المركزي.';

  @override
  String get metric_31_name => 'التوجه نحو الحل';

  @override
  String get metric_31_description =>
      'يقيس ما إذا كانت الرسائل تهدف إلى الحلول، الوضوح، الاتفاقات، والخطوات التالية.';

  @override
  String get metric_32_name => 'حل المشكلات المشترك';

  @override
  String get metric_32_description =>
      'يقيم اللغة التعاونية، المسؤولية المشتركة، العصف الذهني، والرغبة في إيجاد تنازلات قابلة للعمل.';

  @override
  String get metric_33_name => 'الفيضان العاطفي';

  @override
  String get metric_33_description =>
      'يكتسب الإرهاق، الذعر، الإغلاق، الدوران، أو عدم القدرة على المعالجة أثناء النزاع.';

  @override
  String get metric_34_name => 'إشارات استجابة الخوف';

  @override
  String get metric_34_description =>
      'يبحث عن التهدئة، الصياغة الحذرة، الرعب، مخاوف السلامة، أو الخوف من رد فعل الشريك.';

  @override
  String get metric_35_name => 'اتساق المطالبات';

  @override
  String get metric_35_description =>
      'يقيم ما إذا كانت الروايات تظل متسقة داخليًا عبر الرسائل والوقت.';

  @override
  String get metric_36_name => 'التذكر القائم على الأدلة';

  @override
  String get metric_36_description =>
      'يتحقق ما إذا كانت المطالبات تشير إلى أحداث ملموسة، اقتباسات، جداول زمنية، أو سلوك قابل للملاحظة.';

  @override
  String get metric_37_name => 'نمط طلب الانسحاب';

  @override
  String get metric_37_description =>
      'يتتبع شريكًا واحدًا يسعى للحصول على إجابات أو تغيير بينما يتجنب الآخر، يغلق، أو يخرج.';

  @override
  String get metric_38_name => 'مؤشرات عدم توازن القوة';

  @override
  String get metric_38_description =>
      'يحدد قوة قرار غير متكافئة، الخوف من العواقب، الاعتماد، التخويد، أو السيطرة الأحادية.';

  @override
  String get metric_39_name => 'الاختلاف المحترم';

  @override
  String get metric_39_description =>
      'يقيس ما إذا كان النزاع يحافظ على الكرامة، الفضول، والاختلاف دون تدهور.';

  @override
  String get metric_40_name => 'دورة الانقطاع والإصلاح';

  @override
  String get metric_40_description =>
      'يقيم ما إذا كان النزاع يتبعه الاعتراف، إعادة الاتصال، والإصلاح الفعلي.';

  @override
  String get metric_41_name => 'سحب المودة';

  @override
  String get metric_41_description =>
      'يكتشف حبس الحب، الدفء، الجنس، الانتباه، أو الطمأنة كعقاب أو رافعة.';

  @override
  String get metric_42_name => 'مراجع الإهانة العامة';

  @override
  String get metric_42_description =>
      'يحدد التهديدات، النكات، أو الإجراءات التي تخجل الشريك أمام الآخرين.';

  @override
  String get metric_43_name => 'إشارات النزاع المرتبط بالمادة';

  @override
  String get metric_43_description =>
      'يبحث عن استخدام الكحول أو المخدرات المرتبط بالعدوان، عدم الموثوقية، النزاع، أو الضرر.';

  @override
  String get metric_44_name => 'ضغط نزاع الأبوة';

  @override
  String get metric_44_description =>
      'يحدد الأطفال، الحضانة، أدوار الأبوة، أو ذنب الوالدين المستخدم في النزاع أو كرافعة.';

  @override
  String get metric_45_name => 'احترام الحدود الجنسية';

  @override
  String get metric_45_description =>
      'يقيم احترام الموافقة، الضغط، الرفض، الراحة، التوقيت، والاستقلال الجنسي.';

  @override
  String get metric_46_name => 'مؤشرات المضايقة الرقمية';

  @override
  String get metric_46_description =>
      'يتتبع الرسائل غير المرغوب فيها المتكررة، مكالمات البريد العشوائي، الضغط عبر الإنترنت، المراقبة، أو التخويد القائم على المنصة.';

  @override
  String get metric_47_name => 'لغة المراقبة أو التجسس';

  @override
  String get metric_47_description =>
      'يحدد التحقق من المكان، طلب الإثبات، تتبع السلوك، أو التحقق المستمر.';

  @override
  String get metric_48_name => 'التوجه المستقبلي';

  @override
  String get metric_48_description =>
      'يقيس ما إذا كان الشركاء يناقشون التحسين المستقبلي، الالتزامات، الخطط، أو الاتجاه البناء.';

  @override
  String get metric_49_name => 'إشارات تخطيط السلامة';

  @override
  String get metric_49_description =>
      'يبحث عن محاولات طلب المساعدة، إنشاء مسافة، توثيق الضرر، أو التخطيط للسلامة الجسدية/العاطفية.';

  @override
  String get metric_50_name => 'محاولات التصعيد المشترك';

  @override
  String get metric_50_description =>
      'يتتبع التوقفات، اللغة المهدئة، نبرة أكثر نعومة، المهلات، ومحاولات كلا الشريكين لتقليل الشدة.';

  @override
  String get metric_51_name => 'إشارات التعلق الآمن';

  @override
  String get metric_51_description =>
      'يحدد الثقة، الطمأنة المباشرة، التوافر العاطفي، والراحة مع القرب والاستقلال.';

  @override
  String get metric_52_name => 'تنشيط التعلق القلق';

  @override
  String get metric_52_description =>
      'يحدد سلوك الاحتجاج، احتياجات الطمأنة العاجلة، الخوف من التخلي، والحساسية المتزايدة للمسافة.';

  @override
  String get metric_53_name => 'تباعد التعلق التجنبي';

  @override
  String get metric_53_description =>
      'يكتشف التقليل العاطفي، دفاعات الاستقلال، الانسحاب من الضعف، أو الانزعاج مع الاحتياجات.';

  @override
  String get metric_54_name => 'إشارات التعلق غير المنظم';

  @override
  String get metric_54_description =>
      'يبحث عن دورات الاقتراب-الابتعاد، الخوف المختلط بالحاجة، ردود الفعل الفوضوية، أو أنماط العلاقة المربكة.';

  @override
  String get metric_55_name => 'العروض العاطفية والردود';

  @override
  String get metric_55_description =>
      'يقيس دعوات الانتباه، الراحة، أو الاتصال وما إذا كانت مقبولة أو فائتة.';

  @override
  String get metric_56_name => 'الابتعاد عن الاتصال';

  @override
  String get metric_56_description =>
      'يحدد تجاهل، رفض، أو الفشل في الرد على العروض للقرب أو الدعم.';

  @override
  String get metric_57_name => 'التحول ضد الاتصال';

  @override
  String get metric_57_description =>
      'يكتشف ردود الفعل العدائية أو العقابية على محاولات المودة، الضعف، أو الإصلاح.';

  @override
  String get metric_58_name => 'تجاوز المشاعر الإيجابية';

  @override
  String get metric_58_description =>
      'يبحث عن الكرم، الشك المعقول، المودة، وتفسير النزاع من خلال الرعاية.';

  @override
  String get metric_59_name => 'تجاوز المشاعر السلبية';

  @override
  String get metric_59_description =>
      'يحدد افتراض النية السيئة، تفسير الرسائل المحايدة بشكل سلبي، والإطار العدائي المستمر.';

  @override
  String get metric_60_name => 'نمط البداية القاسية';

  @override
  String get metric_60_description =>
      'يحدد المحادثات التي تبدأ بالاتهام، الهجوم، الازدراء، أو اللوم بدلاً من الطلب.';

  @override
  String get metric_61_name => 'نمط البداية الناعمة';

  @override
  String get metric_61_description =>
      'يبحث عن افتتاحات لطيفة باستخدام المشاعر، الاحتياجات، الطلبات المحددة، واللغة غير الاتهامية.';

  @override
  String get metric_62_name => 'التهئة الذاتية الفسيولوجية';

  @override
  String get metric_62_description =>
      'يقيم محاولات التوقف، التنفس، أخذ مساحة، أو تنظيم الجسم قبل متابعة النزاع.';

  @override
  String get metric_63_name => 'نمط تجنب النزاع';

  @override
  String get metric_63_description =>
      'يتتبع التجنب المتكرر للمواضيع الضرورية، الانزعاج، الاختلاف، أو الصدق العاطفي.';

  @override
  String get metric_64_name => 'أسلوب النزاع المتقلب';

  @override
  String get metric_64_description =>
      'يكتشف نزاعًا عالي الشدة مع تعبير مباشر قد لا يزال يشمل المشاركة والإصلاح.';

  @override
  String get metric_65_name => 'أسلوب النزاع المصدق';

  @override
  String get metric_65_description =>
      'يقيس ما إذا كان الشركاء يعترفون بمنظور بعضهم البعض أثناء الاختلاف.';

  @override
  String get metric_66_name => 'أسلوب النزاع العدائي';

  @override
  String get metric_66_description =>
      'يحدد النقد المتكرر، الازدراء، الدفاعية، الهجمات، والإطار العدائي.';

  @override
  String get metric_67_name => 'نمط العداء المنفصل';

  @override
  String get metric_67_description =>
      'يحدد العداء البارد، الانفصال العاطفي، الازدراء، ودافع الإصلاح المنخفض.';

  @override
  String get metric_68_name => 'الرغبة في التنازل';

  @override
  String get metric_68_description =>
      'يبحث عن المرونة، التفاوض، المقترحات الوسطية، والتضحيات التي تحترم كلا الاحتياجين.';

  @override
  String get metric_69_name => 'قبول التأثير';

  @override
  String get metric_69_description =>
      'يقيس الانفتاح على التأثر بمشاعر الشريك، الاحتياجات، أو المنظور.';

  @override
  String get metric_70_name => 'إشارات النزاع المحصور';

  @override
  String get metric_70_description =>
      'يحدد القضايا غير المحلولة المتكررة المرتبطة بالقيم، الأحلام، الهوية، أو عدم التوافق المزمن.';

  @override
  String get metric_71_name => 'إطار المشكلة القابلة للحل';

  @override
  String get metric_71_description =>
      'يكتشف تعريفات المشاكل العملية والمحددة التي يمكن أن تؤدي إلى اتفاقيات محددة.';

  @override
  String get metric_72_name => 'مراجع المعنى المشترك';

  @override
  String get metric_72_description =>
      'يبحث عن القيم، الطقوس، الأهداف، الذكريات، أو لغة الهوية التي تخلق قصة علاقة مشتركة.';

  @override
  String get metric_73_name => 'وعي خريطة الحب';

  @override
  String get metric_73_description =>
      'يقيم معرفة العالم الداخلي للشريك، الضغوط، التفضيلات، المخاوف، والحياة اليومية.';

  @override
  String get metric_74_name => 'المودة والإعجاب';

  @override
  String get metric_74_description =>
      'يحدد التقدير، الاحترام، الدفء، المجاملات، الامتنان، والنظرة الإيجابية.';

  @override
  String get metric_75_name => 'عدم التوازن في العمل العاطفي';

  @override
  String get metric_75_description =>
      'يحدد شريكًا واحدًا يحمل تخطيطًا غير متناسب، تهدئة، تذكرًا، شرحًا، أو صيانة العلاقة.';

  @override
  String get metric_76_name => 'رفض الحمل الذهني';

  @override
  String get metric_76_description =>
      'يكتشف تقليل عمل التخطيط غير المرئي، التنسيق المنزلي، الجدولة، أو تتبع المسؤولية.';

  @override
  String get metric_77_name => 'إشارات العجز المسلح';

  @override
  String get metric_77_description =>
      'يبحث عن ادعاء العجز، الارتباك، أو العجز لتجنب المسؤولية العادلة.';

  @override
  String get metric_78_name => 'حساسية محفزات الصدمة';

  @override
  String get metric_78_description =>
      'يقيس الوعي بالمحفزات، استجابات الصدمة، والمعالجة الحذرة للمواضيع الضعيفة.';

  @override
  String get metric_79_name => 'إشارات اليقظة المفرطة';

  @override
  String get metric_79_description =>
      'يحدد المسح بحثًا عن الخطر، المراقبة المفرطة للنبرة، الخوف من الأخطاء، أو اليقظة العاطفية المستمرة.';

  @override
  String get metric_80_name => 'لغة الخوف من التخلي';

  @override
  String get metric_80_description =>
      'يكتشف الخوف من الترك، الاستبدال، التجاهل، التخلص، أو التخلي العاطفي.';

  @override
  String get metric_81_name => 'نمط طلب الطمأنة';

  @override
  String get metric_81_description =>
      'يتتبع الطلبات المتكررة لإثبات الحب، الالتزام، السلامة، أو الاهتمام المستمر.';

  @override
  String get metric_82_name => 'دورة المطارد-المتباعد';

  @override
  String get metric_82_description =>
      'يحدد شريكًا واحدًا يتصاعد في السعي للقرب بينما يزيد الآخر المسافة.';

  @override
  String get metric_83_name => 'تراكم الاستياء';

  @override
  String get metric_83_description =>
      'يبحث عن الشكاوى المخزنة، المراجع الماضية المتكررة، المرارة، والدين العاطفي غير المحلول.';

  @override
  String get metric_84_name => 'سلوك احتساب النقاط';

  @override
  String get metric_84_description =>
      'يحدد العد المعاملاتي للأخطاء، الأفضال، التضحيات، أو الأخطاء للحصول على رافعة.';

  @override
  String get metric_85_name => 'المودة المشروطة';

  @override
  String get metric_85_description =>
      'يكتشف الحب، الموافقة، الوصول، أو الدفء المقدم فقط عند تحقيق الامتثال.';

  @override
  String get metric_86_name => 'مؤشرات قصف الحب';

  @override
  String get metric_86_description =>
      'يحدد المودة المكثفة، الوعود، الضغط، أو المثالية المستخدمة لتسريع التعلق أو السيطرة.';

  @override
  String get metric_87_name => 'محاولات السحب';

  @override
  String get metric_87_description =>
      'يحدد محاولات سحب شخص ما من خلال الذنب، الحنين، الوعود، الأزمات، أو المودة المفاجئة.';

  @override
  String get metric_88_name => 'نمط DARVO';

  @override
  String get metric_88_description =>
      'يكتشف ردود فعل الإنكار، الهجوم، وعكس الضحية-المعتدي عند مواجهة الضرر.';

  @override
  String get metric_89_name => 'نمط موقف الضحية';

  @override
  String get metric_89_description =>
      'يحدد التضحية الذاتية المتكررة التي تتجنب المسؤولية أو تعيد توجيه الانتباه عن الضرر المسبب.';

  @override
  String get metric_90_name => 'إطار التفوق الأخلاقي';

  @override
  String get metric_90_description =>
      'يبحث عن الاستقامة، مطالب النقاء، أو التفوق الأخلاقي المستخدم للسيطرة على النزاع.';

  @override
  String get metric_91_name => 'اغتيال الشخصية';

  @override
  String get metric_91_description =>
      'يكتشف الهجمات الواسعة على الهوية، النزاهة، الصحة العقلية، أو القيمة بدلاً من السلوك المحدد.';

  @override
  String get metric_92_name => 'مؤشرات التثليث';

  @override
  String get metric_92_description =>
      'يحدد إدخال أطراف ثالثة في النزاع للضغط، المقارنة، التحقق، أو زعزعة استقرار الشريك.';

  @override
  String get metric_93_name => 'ضغط المقارنة الاجتماعية';

  @override
  String get metric_93_description =>
      'يبحث عن المقارنات مع السابقين، الأصدقاء، الأزواج الآخرين، أو المثل المستخدمة للإخزال أو الإكراه.';

  @override
  String get metric_94_name => 'دعم الاستقلال';

  @override
  String get metric_94_description =>
      'يقيس احترام الاختيارات المستقلة، الصداقات، الأهداف، الحدود، والوكالة الشخصية.';

  @override
  String get metric_95_name => 'احترام الموافقة والاختيار';

  @override
  String get metric_95_description =>
      'يقيم ما إذا كانت القرارات تتخذ بحرية دون ضغط، ذنب، تهديدات، أو تلاعب.';

  @override
  String get metric_96_name => 'التخطيط التعاوني';

  @override
  String get metric_96_description =>
      'يبحث عن الجدولة المشتركة، القرارات المشتركة، المسؤوليات المنسقة، والمتابعة العملية.';

  @override
  String get metric_97_name => 'متابعة الإصلاح';

  @override
  String get metric_97_description =>
      'يقيس ما إذا كانت التغييرات الموعودة تنعكس لاحقًا في السلوك، وليس فقط الكلمات.';

  @override
  String get metric_98_name => 'دليل السلوك المتغير';

  @override
  String get metric_98_description =>
      'يتحقق من الإجراءات القابلة للملاحظة والمتكررة التي تظهر التعلم، التعديل، أو تقليل السلوك الضار.';

  @override
  String get metric_99_name => 'لغة السلامة العاطفية';

  @override
  String get metric_99_description =>
      'يحدد اللغة التي تدعو إلى الصدق، تقلل الخوف، تحمي الكرامة، وتطمئن التعبير الآمن.';

  @override
  String get metric_100_name => 'تردد العلاقة';

  @override
  String get metric_100_description =>
      'يكتشف عدم اليقين، الالتزام المختلط، رسائل الدفع والسحب، أو الرغبة غير الواضحة في الاستمرار.';

  @override
  String get unableToOpenConversations => 'لا يمكن فتح المحادثات';

  @override
  String get unableToOpenConversationsBody =>
      'حدث خطأ أثناء تحميل محادثاتك. يرجى المحاولة مرة أخرى.';

  @override
  String get unableToLoadConversationsBody =>
      'لا يمكن تحميل المحادثات. يرجى التحقق من الأذونات والمحاولة مرة أخرى.';

  @override
  String get errorLoadingConversationsBody =>
      'خطأ في تحميل المحادثات. يرجى المحاولة مرة أخرى.';

  @override
  String get smsPermissionRequired => 'إذن SMS مطلوب';

  @override
  String get smsPermissionRequiredBody =>
      'لتحليل محادثات SMS، نحتاج إلى إذن لقراءة رسائلك. خصوصيتك مهمة — يتم تحليل الرسائل محليًا فقط ولا يتم تخزينها أبدًا على خوادمنا.';

  @override
  String get grantSmsPermission => 'منح إذن SMS';

  @override
  String get noSmsConversationsFound => 'لم يتم العثور على محادثات SMS';

  @override
  String get noConversationsMatchSearch => 'لا توجد محادثات تطابق بحثك';

  @override
  String get noSmsMessagesOnDevice => 'ليس لديك رسائل SMS على هذا الجهاز';

  @override
  String get tryDifferentSearch => 'جرب مصطلح بحث مختلف';

  @override
  String get clearSearch => 'مسح البحث';

  @override
  String selectedFile(String filename) {
    return 'محدد: $filename';
  }

  @override
  String get invalidFile => 'ملف غير صالح';

  @override
  String get fileImport => 'استيراد ملف';

  @override
  String get fileImportNotImplemented =>
      'تحليل الملفات غير مطبق بعد لنوع الملف هذا.';

  @override
  String get errorPickingFile => 'لا يمكن فتح الملف. يرجى المحاولة مرة أخرى.';

  @override
  String get readyToCapture => 'جاهز لالتقاط';

  @override
  String get readyToCaptureBody =>
      'انتقل الآن إلى تطبيق الرسائل وابدأ في أخذ لقطات الشاشة.\n\nعد إلى هذا التطبيق عند الانتهاء واضغط على \"إنهاء ومعالجة\".';

  @override
  String get noScreenshotsToProcess => 'لا توجد لقطات شاشة للمعالجة.';

  @override
  String processingScreenshot(int current, int total) {
    return 'معالجة لقطة الشاشة $current من $total...';
  }

  @override
  String get noMessagesFound => 'لم يتم العثور على رسائل';

  @override
  String get noMessagesFoundBody =>
      'لا يمكن استخراج رسائل من لقطات الشاشة.\n\nتأكد من أن لقطات الشاشة تظهر المحادثة بوضوح.';

  @override
  String loadedMessages(int count) {
    return '$count رسائل محملة من لقطات الشاشة';
  }

  @override
  String get processingError => 'خطأ في المعالجة';

  @override
  String get processingErrorBody =>
      'خطأ في معالجة لقطات الشاشة. يرجى المحاولة مرة أخرى.';

  @override
  String metricListSavedAs(String name) {
    return 'تم حفظ اختياراتك باسم \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'تم استرجاع الاختيارات \"$name\" وتطبيقها.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count رسائل محملة من $name';
  }

  @override
  String get loadButton => 'تحميل';

  @override
  String get photoPermissionRequired =>
      'إذن مكتبة الصور مطلوب للكشف عن لقطات الشاشة.';

  @override
  String get initializingConnection => 'تهيئة الاتصال الآمن...';

  @override
  String get configurationRequired => 'تكوين مطلوب';

  @override
  String get goBack => 'رجوع';

  @override
  String get enableDateRangeFiltering => 'تمكين التصفية حسب نطاق التاريخ';

  @override
  String get clearSelectedDateRange => 'مسح نطاق التاريخ المحدد';

  @override
  String get largeThreadNoticeTitle => 'إشعار للمستخدم';

  @override
  String get largeThreadNoticeBody =>
      'عند التعامل مع سلاسل نصية كبيرة بشكل استثنائي، قد تتجاوز بعض شاشات التحميل في هذا التطبيق دقيقة ونصف أحيانًا.\n\nالتطبيق لا يتوقف. إذا رأيت مؤشر حالة يدور، التطبيق لا يزال قيد التحميل.\n\nيرجى الصبر في هذه الحالات، حيث قد يكون وقت التحميل أطول من المعتاد مقارنة بالتطبيقات الأخرى، خاصة عند التعامل مع مجموعة بيانات كبيرة مثل سلسلة مع 50000 رسالة.';

  @override
  String get neverShowThisAgain => 'عدم عرض هذه الرسالة مرة أخرى';

  @override
  String loadingConversationWith(String name) {
    return 'تحميل المحادثة\nمع $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. افتح تطبيق الرسائل وحدد المحادثة\n2. انتقل إلى أقدم رسالة تريد تحليلها\n3. اضغط على \"بدء الالتقاط\" أدناه\n4. التقط لقطات الشاشة أثناء التمرير عبر المحادثة\n5. عند الانتهاء، اضغط على \"إنهاء ومعالجة\"';

  @override
  String get howToCaptureIosMessages => 'كيفية التقاط رسائل iOS';

  @override
  String get deepSeekApiKey => 'مفتاح API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'أدخل مفتاح API DeepSeek الخاص بك لتمكين تحليل الذكاء الاصطناعي.';

  @override
  String get getYourApiKeyFrom =>
      'احصل على مفتاح API من: https://platform.deepseek.com';

  @override
  String get apiKey => 'مفتاح API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'يتم تخزين مفتاح API الخاص بك بشكل آمن على جهازك ولا يتم مشاركته أبدًا.';

  @override
  String get pleaseEnterApiKey => 'الرجاء إدخال مفتاح API';

  @override
  String get apiKeySavedSuccessfully => 'تم حفظ مفتاح API بنجاح!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'يرجى الصبر، مجموعات البيانات لمسارات النصوص الأطول تستغرق وقتًا طويلاً للتحميل';

  @override
  String get almostThereBigOne => 'قريبًا، واو، يجب أن يكون هذا كبيرًا';

  @override
  String get pleaseBePatientLargeDatasets =>
      'يرجى الصبر، مجموعات البيانات الكبيرة قد تؤدي إلى أوقات تحميل تزيد عن دقيقة ونصف';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'متابعة تحميل المسار الضخم مع $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'لم يتم العثور على رسائل في نطاق التاريخ المحدد. يرجى تحديد تواريخ مختلفة أو مسح مرشح التاريخ.';

  @override
  String get purchaseCustomMetricTileTitle => 'شراء مقياس مخصص';

  @override
  String get purchaseCustomMetricTileDescription =>
      'مقابل رسوم لمرة واحدة قدرها 4.99 دولار، أدخل اسم مقياس مخصص وتعريف يتم حفظه بشكل دائم إلى جانب مقاييسك الأخرى للاستخدام في أي تحليل مستقبلي. اشترِ مقاييس مخصصة غير محدودة.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'شراء مقياس مخصص';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'سيتم خصم 4.99 دولار من حسابك (لمرة واحدة) لفتح خانة مقياس مخصص واحدة.\n\nاسم المقياس المخصص وتعريفه دائمان ولا يمكن تغييرهما أبدًا بمجرد الحفظ، لذا يرجى الاختيار بعناية.';

  @override
  String get purchaseCustomMetricConfirmButton => 'شراء — 4.99 دولار';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'اسم المقياس المخصص';

  @override
  String get purchaseCustomMetricEnterNamePrompt => 'أدخل اسم المقياس المخصص:';

  @override
  String get purchaseCustomMetricNameHint => 'اسم المقياس';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'تأكيد اسم المقياس';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'لقد أدخلت:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  هذا نهائي ولا يمكن تغييره أبدًا.';

  @override
  String get purchaseCustomMetricReenterName => 'عذرًا — إعادة إدخال الاسم';

  @override
  String get purchaseCustomMetricSaveName => 'موافق — حفظ اسم المقياس';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'تعريف: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'أدخل معنى المقياس المخصص: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'صف ما يعنيه هذا المقياس، والسلوكيات التي يبحث عنها، وكيفية تطبيقه على ديناميكيات العلاقة...';

  @override
  String get purchaseCustomMetricReenter => 'عذرًا — إعادة الإدخال';

  @override
  String get purchaseCustomMetricSaveMeaning => 'موافق — حفظ المعنى';

  @override
  String get purchaseCustomMetricPreviewTitle => 'معاينة المقياس المخصص';

  @override
  String get purchaseCustomMetricPreviewSubtitle => 'هكذا ستبدو لوحتك:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  هذه فرصتك الأخيرة للتراجع.\nبمجرد الالتزام، يصبح الاسم والتعريف دائمين.';

  @override
  String get purchaseCustomMetricCancelEverything => 'إلغاء كل شيء';

  @override
  String get purchaseCustomMetricCommit => 'الالتزام بالمقياس المخصص';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ تمت إضافة \"$name\" إلى مقاييسك! يمكنك الآن اختياره للتحليل.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'جاري معالجة الشراء...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'في انتظار تأكيد المتجر.\nيرجى عدم إغلاق التطبيق.';

  @override
  String get next => 'التالي';

  @override
  String get cancelNotReady => 'إلغاء — لم أكن مستعدًا';

  @override
  String get packGoodLabel => 'الجيد';

  @override
  String get packBadLabel => 'السيء';

  @override
  String get packUglyLabel => 'القبيح';

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
