// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Yapay Zeka İlişki Toksisite Analizörü';

  @override
  String get psychologicalMetrics => 'Psikolojik Metrikler';

  @override
  String get metricsDescription =>
      'Daha az seçilen metrik, bu davranışların daha derin ve yoğun bir analizini sağlar. Daha fazla seçilen metrik, metrik başına daha az ayrıntıyla daha geniş bir rapor sağlar.';

  @override
  String get selectSMS => 'SMS / RCS Sohbet Seç';

  @override
  String get selectDiscordChannel => 'Discord Kanalı Seç';

  @override
  String get lightMode => 'Açık';

  @override
  String get darkMode => 'Koyu';

  @override
  String get discordSetupTitle => 'Discord Nasıl Ayarlanır';

  @override
  String get discordSetupDescription =>
      'Uygulamada Discord kanal analizini etkinleştirmek için şu adımları izleyin:';

  @override
  String get discordStep1Title => 'Discord Bot Oluştur';

  @override
  String get discordStep1Description =>
      'discord.com/developers adresine gidin, yeni bir uygulama oluşturun ve bir bot ekleyin. Bot token\'ını kopyalayın.';

  @override
  String get discordStep2Title => 'Bot Ayrıcalıklarını Etkinleştir';

  @override
  String get discordStep2Description =>
      'Bot ayarlarında \'Message Content Intent\' ve \'Server Members Intent\' özelliklerini etkinleştirin.';

  @override
  String get discordStep3Title => 'Botu Sunucuya Davet Et';

  @override
  String get discordStep3Description =>
      'Gerekli izinlerle botu Discord sunucunuza davet etmek için OAuth2 URL oluşturucuyu kullanın.';

  @override
  String get discordStep4Title => 'Uygulamada Yapılandır';

  @override
  String get discordStep4Description =>
      'Bot token\'ınızı uygulama ayarlarına girin (yardıma ihtiyacınız varsa desteğe başvurun).';

  @override
  String get discordStep5Title => 'Kanal Seç';

  @override
  String get discordStep5Description =>
      '\'Discord Kanalı Seç\'e dokunun, sunucunuzu seçin, ardından analiz edilecek kanalı seçin.';

  @override
  String get gotIt => 'Anladım';

  @override
  String get selectFile => 'Dosya Seç';

  @override
  String get analyzeSelectedMetrics => 'Seçili metrikleri analiz et';

  @override
  String get analyze20RandomMetrics => '20 rastgele metriği analiz et';

  @override
  String get membershipOptions => 'Üyelik Seçenekleri';

  @override
  String get free => 'Ücretsiz';

  @override
  String get oneTimeUnlock => 'Tek seferlik rapor kilidi açma';

  @override
  String get standard => 'Standart';

  @override
  String get discordAddon => 'Discord Eklentisi';

  @override
  String get analyze => 'Analiz Et';

  @override
  String get report => 'Rapor';

  @override
  String get pdfReport => 'PDF Raporu';

  @override
  String get openPdf => 'PDF Aç';

  @override
  String get sharePdf => 'PDF Paylaş';

  @override
  String get printPdf => 'PDF Yazdır';

  @override
  String get closePdfPreview => 'PDF Önizleme Penceresini Kapat';

  @override
  String get openPdfPreview => 'PDF Önizleme Penceresini Aç';

  @override
  String get pdfPreviewDescription =>
      'Gömülü PDF penceresi, raporu kompakt tutmak için kapalı olarak başlar.';

  @override
  String get notNow => 'Şimdi değil';

  @override
  String get unlockThisReport => 'Bu raporun kilidini aç - \$20';

  @override
  String get joinStandard => 'Standart\'a katıl - \$9.99/ay';

  @override
  String get instantUnlockTitle => 'Anında rapor kilidi açma - \$20';

  @override
  String get instantUnlockDescription =>
      'Bu, yalnızca mevcut raporun kilidini açmak için tek seferlik bir satın alımdır. Abonelik gerekmez. Gelecekteki raporlar ayrı kilit açma işlemleri veya üyelik gerektirecektir.\n\nÖdemeye devam edilsin mi?';

  @override
  String get purchaseFor20 => '\$20\'a satın al';

  @override
  String get share => 'Paylaş';

  @override
  String get print => 'Yazdır';

  @override
  String get save => 'Kaydet';

  @override
  String get cancel => 'İptal';

  @override
  String get ok => 'Tamam';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get error => 'Hata';

  @override
  String get success => 'Başarılı';

  @override
  String get conversations => 'Konuşmalar';

  @override
  String get messages => 'Mesajlar';

  @override
  String get selectConversation => 'Konuşma seç';

  @override
  String get selectSmsConversation => 'SMS / RCS Sohbet Seç';

  @override
  String get searchConversations => 'Konuşmalarda ara...';

  @override
  String get loadingConversations => 'Konuşmalar yükleniyor...';

  @override
  String get errorLoadingConversations => 'Konuşmaları yükleme hatası';

  @override
  String get selectConversationToAnalyze => 'Analiz etmek için konuşma seçin';

  @override
  String get analyzeWithSelectedMetrics => 'Seçili metriklerle analiz et';

  @override
  String get loadConversationAndSelectMetric =>
      'Bir konuşma yükleyin ve en az bir metrik seçin';

  @override
  String get selectAtLeastOneMetric =>
      'Raporu çalıştırmak için en az bir metrik seçilmelidir.';

  @override
  String get spinningMetricWheel => 'Metrik çarkı döndürülüyor...';

  @override
  String get loadConversationToAnalyze =>
      'Analiz edilecek bir konuşma yükleyin';

  @override
  String get noConversationsFound => 'Konuşma bulunamadı';

  @override
  String get permissionsRequired => 'İzinler Gerekli';

  @override
  String get smsPermission => 'Metin Mesajları';

  @override
  String get contactsPermission => 'Kişiler';

  @override
  String get smsPermissionDescription =>
      'İlişki kalıpları için SMS konuşmalarınızı analiz etmek üzere';

  @override
  String get contactsPermissionDescription =>
      'Telefon numaraları yerine kişi adlarını göstermek için';

  @override
  String get analyzingMessage =>
      'Psikolojik analiziniz yapay zeka tarafından oluşturulurken lütfen bekleyin...';

  @override
  String get analyzingStatus => 'Konuşma analiz ediliyor...';

  @override
  String get analyzingSubMessage =>
      'Lütfen sabırlı olun, bu işlem bağlantı hızınıza ve seçilen metrik miktarına bağlı olarak bir dakikaya kadar sürebilir';

  @override
  String get unlockFullReport => 'Bu raporun tamamının kilidini aç ve göster';

  @override
  String get fullReportLocked => 'Tam Rapor Kilitli';

  @override
  String get upgradeToUnlock =>
      'Tüm metrikler ve ayrıntılı içgörülerle tam psikolojik analiz raporunun kilidini açmak için üyeliğinizi yükseltin.';

  @override
  String get language => 'Dil';

  @override
  String get english => 'İngilizce';

  @override
  String get spanish => 'İspanyolca';

  @override
  String get french => 'Fransızca';

  @override
  String get german => 'Almanca';

  @override
  String get italian => 'İtalyanca';

  @override
  String get portuguese => 'Portekizce';

  @override
  String get dutch => 'Felemenkçe';

  @override
  String get russian => 'Rusça';

  @override
  String get chinese => 'Çince';

  @override
  String get japanese => 'Japonca';

  @override
  String get korean => 'Korece';

  @override
  String get arabic => 'Arapça';

  @override
  String get hindi => 'Hintçe';

  @override
  String get turkish => 'Türkçe';

  @override
  String get polish => 'Lehçe';

  @override
  String get ukrainian => 'Ukraynaca';

  @override
  String get runAnotherAnalysis => 'Başka bir analiz çalıştırılsın mı?';

  @override
  String get becomeMemberTitle => 'Tam analiz raporunu almak için üye olun';

  @override
  String get becomeMemberSubtitle =>
      'Analiz etmeniz gereken konuşmalara ve raporlara uygun erişim düzeyini seçin.';

  @override
  String get benefitAnalyzeSms => 'SMS metin mesajlarını analiz et';

  @override
  String get benefitReportPreview => 'Bir rapor önizlemesi çalıştır';

  @override
  String get benefitViewPartialReport => 'Raporun yaklaşık %25\'ini görüntüle';

  @override
  String get benefitLockedDetails => 'Tam rapor ayrıntıları kilitli';

  @override
  String get currentFreeAccess => 'Mevcut ücretsiz erişim';

  @override
  String get benefitUnlockCurrentReport => 'Bu mevcut tam raporun kilidini aç';

  @override
  String get benefitNoSubscription => 'Abonelik yok';

  @override
  String get benefitSavePrintShareThis => 'Bu raporu kaydet, yazdır ve paylaş';

  @override
  String get benefitBestSingleAnalysis =>
      'Yalnızca bir analize ihtiyacınız varsa en iyisi';

  @override
  String get unlockThisReportShort => 'Bu raporun kilidini aç';

  @override
  String get benefitFullSmsReport => 'Tam SMS analiz raporu';

  @override
  String get benefitSavePrintSharePdf =>
      'PDF raporlarını kaydet, yazdır ve paylaş';

  @override
  String get benefitTenReports => '24 saatlik dönem başına 10 rapor';

  @override
  String get benefitBestTextReview =>
      'Metin mesajı ilişki incelemesi için en iyisi';

  @override
  String get benefitDateRangeFilter => 'Tarih aralığına göre analizi filtrele';

  @override
  String get signUpStandard => 'Standart Üyeliğe kaydol';

  @override
  String get benefitAddToStandard => 'Standart Üyeliğe ekle';

  @override
  String get benefitAnalyzeDiscord => 'Discord sunucu sohbetlerini analiz et';

  @override
  String get benefitRequiresBot => 'Bot kurulumu gerektirir';

  @override
  String get benefitBestGamers =>
      'Oyuncular ve Discord toplulukları için en iyisi';

  @override
  String get addDiscordAnalysis => 'Discord analizi ekle';

  @override
  String get requiresStandardMembership => 'Standart Üyelik gerektirir';

  @override
  String get comingSoon => 'Yakında';

  @override
  String get comingSoonWithNextUpdate => 'Bir sonraki güncellemede yakında:';

  @override
  String get proMembershipTier => 'Pro Üyelik Düzeyi - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus Üyelik Düzeyi - \$24.99';

  @override
  String get proGetsLabel => 'Pro şunları içerir:';

  @override
  String get proGetsDescription =>
      'Aşağıdaki gibi diğer tüm popüler mesajlaşma ve sosyal medya platformlarındaki sohbet dizilerini analiz edin:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-posta ve takvim';

  @override
  String get proPlusGetsLabel => 'Pro-Plus şunları içerir:';

  @override
  String get proPlusGetsDescription =>
      'Pro\'daki her şey, ayrıca indirimli fiyatla Discord eklentisi.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Satın alma başarılı! Raporun kilidi açıldı.';

  @override
  String get purchaseFailed => 'Satın alma başarısız. Lütfen tekrar deneyin.';

  @override
  String get membershipActivated => 'Üyelik etkinleştirildi!';

  @override
  String get dateRangeFilter => 'Tarih Aralığı Filtresi';

  @override
  String get dateRangeOptional => '(isteğe bağlı)';

  @override
  String get startDate => 'Başlangıç Tarihi';

  @override
  String get endDate => 'Bitiş Tarihi';

  @override
  String get clear => 'Temizle';

  @override
  String get dateRangeRequiresMembership =>
      'Standard üyeliği veya üzeri gerektirir';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'En fazla $max seçin. Şu anki: $current';
  }

  @override
  String get clearSelections => 'Seçimleri temizle';

  @override
  String analyzeRandomMetrics(Object count) {
    return '$count rastgele metrik analiz et';
  }

  @override
  String get saveSelections => 'Seçimleri Kaydet';

  @override
  String get loadSelections => 'Seçimleri Yükle';

  @override
  String get saveMetricListName => 'Metrik Listesini Kaydet';

  @override
  String get enterListName => 'Bu metrik listesi için bir ad girin:';

  @override
  String get chooseSavedMetrics => 'Kaydedilen metrik listesini seçin:';

  @override
  String get noSavedLists =>
      'Şu anda yüklenecek kaydedilmiş metrik listesi yok.';

  @override
  String get metricListSaved => 'Metrik listesi başarıyla kaydedildi.';

  @override
  String get metricListLoaded => 'Metrik listesi başarıyla yüklendi.';

  @override
  String get filters => 'Filtreler';

  @override
  String get sortBy => 'Sırala:';

  @override
  String get recent => 'Son';

  @override
  String get name => 'İsim';

  @override
  String get count => 'Sayı';

  @override
  String get namedOnly => 'Sadece adlandırılmış';

  @override
  String get minMessages => 'Min. mesaj:';

  @override
  String get minimumMessages => 'Minimum mesaj:';

  @override
  String get executiveSummary => 'Yönetici Özeti';

  @override
  String get metricScores => 'Metrik Puanları';

  @override
  String get contextualEvidenceExamples => 'Bağlamsal Kanıt Örnekleri';

  @override
  String get neutralSynthesis => 'Nötr Sentez';

  @override
  String analysisOfSender(Object sender) {
    return '$sender Analizi (Gönderen)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return '$receiver Analizi (Alıcı)';
  }

  @override
  String get finalConclusion => 'Sonuç';

  @override
  String get metric_1_name => 'Aşağılama';

  @override
  String get metric_1_description =>
      'Üstünlük, tiksinti, alay, göz devirme dili veya bir partneri diğerinin altına koyan hakaretleri arar.';

  @override
  String get metric_2_name => 'Savunmacılık';

  @override
  String get metric_2_description =>
      'Refleksif kendini koruma, karşı saldırı, mazeretler ve diğer kişinin şikayetini düşünmeyi reddetmeyi izler.';

  @override
  String get metric_3_name => 'Duvar Örücü';

  @override
  String get metric_3_description =>
      'Katılmaktan kaçınmak için kapanma, geri çekilme, yok sayma, cevap vermeyi reddetme veya konuşmaları sonlandırma tanımlar.';

  @override
  String get metric_4_name => 'Eleştiri';

  @override
  String get metric_4_description =>
      'Belirli davranışların, ihtiyaçların veya olayların yerine karakter veya kişiliğe yapılan saldırıları tespit eder.';

  @override
  String get metric_5_name => 'Gaslighting Göstergeleri';

  @override
  String get metric_5_description =>
      'Birinin hafızasını, algısını, aklını veya deneyiminin meşruiyetini sorgulamasına neden olmaya çalışan girişimleri işaretler.';

  @override
  String get metric_6_name => 'Suç Kaydırma';

  @override
  String get metric_6_description =>
      'Sorumluluğun doğrudan kabul edilmesi yerine diğer partnere yönlendirilip yönlendirilmediğini ölçer.';

  @override
  String get metric_7_name => 'Tırmanma Deseni';

  @override
  String get metric_7_description =>
      'Ton, suçlamalar, yoğunluk veya tehditlerin çözüme doğru hareket etmek yerine artıp artmadığını değerlendirir.';

  @override
  String get metric_8_name => 'Onarım Girişimi Tanıma';

  @override
  String get metric_8_description =>
      'Özürler, mizah, duraklar, rahatlama veya barış tekliflerinin farkına varılıp varılmadığını kontrol eder.';

  @override
  String get metric_9_name => 'Sorumluluk Dili';

  @override
  String get metric_9_description =>
      'Zararın net sahipliğini, belirli sorumluluğu ve davranışı değiştirme isteğini arar.';

  @override
  String get metric_10_name => 'Sınır Saygısı';

  @override
  String get metric_10_description =>
      'Zaman, gizlilik, beden, duygular veya temas etrafındaki belirtilen sınırların saygı görip görmediğini değerlendirir.';

  @override
  String get metric_11_name => 'Zorlayıcı Kontrol Göstergeleri';

  @override
  String get metric_11_description =>
      'Tehdit, kısıtlama, izleme, bağımlılık veya seçimler ve hareket üzerinde kontrol desenlerini işaretler.';

  @override
  String get metric_12_name => 'Tehdit Dili';

  @override
  String get metric_12_description =>
      'Güvenlik, terk etme, ifşa, misilleme veya cezayı içeren açık veya dolaylı tehditleri tanımlar.';

  @override
  String get metric_13_name => 'Görmezden Gelme';

  @override
  String get metric_13_description =>
      'Endişeleri görmezden gelme, ihtiyaçları önemsiz olarak ele alma veya sıkıntıyı ciddiye almamayı reddetmeyi tespit eder.';

  @override
  String get metric_14_name => 'Geçersiz Kılma';

  @override
  String get metric_14_description =>
      'Başka bir kişinin duygularını kabul etmek yerine inkar, alay veya düzeltmeyi ölçer.';

  @override
  String get metric_15_name => 'Empati İfadesi';

  @override
  String get metric_15_description =>
      'Perspektif alma, bakım, duygusal tanıma ve diğer kişinin deneyimiyle ilgili endişeyi arar.';

  @override
  String get metric_16_name => 'Karşılıklılık';

  @override
  String get metric_16_description =>
      'Dikkatin, çabanın, özrün, uzlaşmanın ve duygusal desteğin her iki yönde de akıp akmadığını değerlendirir.';

  @override
  String get metric_17_name => 'Duygusal Düzenleme';

  @override
  String get metric_17_description =>
      'Yere bağlı kalma, durma, kendini sakinleştirme ve patlayıcı reaktivite olmadan iletişim kurma yeteneğini değerlendirir.';

  @override
  String get metric_18_name => 'Zarar Olarak Kullanılan İroni';

  @override
  String get metric_18_description =>
      'Küçümsemek, cezalandırmak, aşağılamak veya düşmanlığı mizah olarak gizlemek için kullanılan ironiyi işaretler.';

  @override
  String get metric_19_name => 'İsim Takma';

  @override
  String get metric_19_description =>
      'Aşağılayıcı etiketler, hakaretler, kişiye yönelik küfürler veya kimlik tabanlı saldırıları tanımlar.';

  @override
  String get metric_20_name => 'Sessiz Tedavi Deseni';

  @override
  String get metric_20_description =>
      'Ceza, kontrol, kaçınma veya bağlantı geri çekilmesi olarak kullanılan sessizliği izler.';

  @override
  String get metric_21_name => 'Kıskançlık Çerçevesi';

  @override
  String get metric_21_description =>
      'Şüphe, sahiplenme, suçlamalar veya ilgi kanıtı olarak sunulan kıskançlığı değerlendirir.';

  @override
  String get metric_22_name => 'İzolasyon Baskısı';

  @override
  String get metric_22_description =>
      'Partneri arkadaşlardan, aileden, destek sistemlerinden veya dış bakış açılarından ayırmaya çalışan çabaları işaretler.';

  @override
  String get metric_23_name => 'Finansal Kontrol Göstergeleri';

  @override
  String get metric_23_description =>
      'Para, harcama, istihdam, hesaplara erişim veya finansal bağımsızlık üzerindeki kontrolü arar.';

  @override
  String get metric_24_name => 'Gizlilik İhlali Göstergeleri';

  @override
  String get metric_24_description =>
      'Casusluk, şifre talebi, cihaz kontrolü, konum takibi veya gizlilik ihlallerini tespit eder.';

  @override
  String get metric_25_name => 'Özrün Özgünlüğü';

  @override
  String get metric_25_description =>
      'Özürlerin belirsiz kalmak yerine tam zararı, etkiyi ve gelecekteki düzeltmeyi adlandırıp adlandırmadığını ölçer.';

  @override
  String get metric_26_name => 'Bağışlama Baskısı';

  @override
  String get metric_26_description =>
      'Onarım gerçekleşmeden önce ilerlemeyi, hızlıca bağışlamayı veya zararı tartışmayı bırakmayı talepleri işaretler.';

  @override
  String get metric_27_name => 'Küçümseme';

  @override
  String get metric_27_description =>
      'Zararı küçümsemeyi, ciddi endişeleri dramatik olarak adlandırmayı veya sorumluluktan kaçınmak için etkiyi azaltmayı tespit eder.';

  @override
  String get metric_28_name => 'Yansıtma';

  @override
  String get metric_28_description =>
      'Konuşmacının kendi davranışını, motivasyonlarını veya çözülmemiş duygularını yansıtan suçlamaları arar.';

  @override
  String get metric_29_name => 'Kesme Deseni';

  @override
  String get metric_29_description =>
      'Kesmeyi, sözünü kesmeyi, tamamlamayı reddetmeyi veya konuşma dönüşlerini kontrol etmeyi izler.';

  @override
  String get metric_30_name => 'Konu Sapması';

  @override
  String get metric_30_description =>
      'Konuyu değiştirmeyi, ilgisiz sorunları gündeme getirmeyi veya merkezi endişeden kaçınmayı tanımlar.';

  @override
  String get metric_31_name => 'Çözüm Odaklılık';

  @override
  String get metric_31_description =>
      'Mesajların çözümlere, netliğe, anlaşmalara ve sonraki adımlara doğru hedeflenip hedeflenmediğini ölçer.';

  @override
  String get metric_32_name => 'Ortak Problem Çözme';

  @override
  String get metric_32_description =>
      'İşbirlikçi dili, paylaşılan sorumluluğu, beyin fırtınasını ve çalışabilir uzlaşmalar bulma isteğini değerlendirir.';

  @override
  String get metric_33_name => 'Duygusal Sel';

  @override
  String get metric_33_description =>
      'Çatışma sırasında bunalmayı, paniği, kapanmayı, sarmalamayı veya işleme yeteneksizliği tespit eder.';

  @override
  String get metric_34_name => 'Korku Yanıtı İpuçları';

  @override
  String get metric_34_description =>
      'Yatıştırma, dikkatli kelime seçimi, dehşet, güvenlik endişeleri veya partnerin tepkisinden korkmayı arar.';

  @override
  String get metric_35_name => 'İddiaların Tutarlılığı';

  @override
  String get metric_35_description =>
      'Hesapların mesajlar ve zaman boyunca dahili olarak tutarlı kalıp kalmadığını değerlendirir.';

  @override
  String get metric_36_name => 'Kanıta Dayalı Anımsama';

  @override
  String get metric_36_description =>
      'İddiaların somut olayları, alıntıları, zaman çizelgelerini veya gözlemlenebilir davranışı referans verip vermediğini kontrol eder.';

  @override
  String get metric_37_name => 'Talep Geri Çekme Deseni';

  @override
  String get metric_37_description =>
      'Bir partnerin cevap veya değişiklik peşinde koşarken diğerinin kaçındığını, kapattığını veya çıktığını izler.';

  @override
  String get metric_38_name => 'Güç Dengesizliği Göstergeleri';

  @override
  String get metric_38_description =>
      'Eşitsiz karar gücünü, sonuçlardan korkuyu, bağımlılığı, tehdidi veya tek taraflı kontrolü işaretler.';

  @override
  String get metric_39_name => 'Saygılı Anlaşmazlık';

  @override
  String get metric_39_description =>
      'Çatışmanın aşağılama olmadan onuru, merakı ve anlaşmazlığı koruyup korumadığını ölçer.';

  @override
  String get metric_40_name => 'Kopma ve Onarım Döngüsü';

  @override
  String get metric_40_description =>
      'Çatışmayı tanıma, yeniden bağlanma ve gerçek onarımın takip edip etmediğini değerlendirir.';

  @override
  String get metric_41_name => 'Sevgi Geri Çekme';

  @override
  String get metric_41_description =>
      'Ceza veya kaldıraç olarak sevginin, sıcaklığın, seksin, dikkatin veya rahatlamanın tutulduğunu tespit eder.';

  @override
  String get metric_42_name => 'Kamu Mahcubiyeti Referansları';

  @override
  String get metric_42_description =>
      'Partneri başkalarının önünde utandıran tehditleri, şakaları veya eylemleri işaretler.';

  @override
  String get metric_43_name => 'Madde Bağlı Çatışma İpuçları';

  @override
  String get metric_43_description =>
      'Saldırganlık, güvenilmezlik, çatışma veya zararla bağlantılı alkol veya uyuşturucu kullanımını arar.';

  @override
  String get metric_44_name => 'Ebeveynlik Çatışması Baskısı';

  @override
  String get metric_44_description =>
      'Çatışma veya kaldıraçta kullanılan çocukları, velayeti, ebeveynlik rollerini veya ebeveyn suçluluğunu tanımlar.';

  @override
  String get metric_45_name => 'Cinsel Sınır Saygısı';

  @override
  String get metric_45_description =>
      'Rıza, baskı, reddetme, rahatlık, zamanlama ve cinsel özerkliğe saygıyı değerlendirir.';

  @override
  String get metric_46_name => 'Dijital Taciz Göstergeleri';

  @override
  String get metric_46_description =>
      'Tekrarlanan istenmeyen mesajları, spam çağrıları, çevrimiçi baskıyı, gözetimi veya platform tabanlı tehdidi izler.';

  @override
  String get metric_47_name => 'İzleme veya Gözetleme Dili';

  @override
  String get metric_47_description =>
      'Konum kontrolü, kanıt talebi, davranış takibi veya sürekli doğrulamayı işaretler.';

  @override
  String get metric_48_name => 'Gelecek Odaklılık';

  @override
  String get metric_48_description =>
      'Partnerlerin gelecekteki iyileştirmeyi, taahhütleri, planları veya yapıcı yönü tartışıp tartışmadığını ölçer.';

  @override
  String get metric_49_name => 'Güvenlik Planlama Sinyalleri';

  @override
  String get metric_49_description =>
      'Yardım arama, mesafe oluşturma, zararı belgeleme veya fiziksel/duygusal güvenlik planlama girişimlerini arar.';

  @override
  String get metric_50_name => 'Ortak De-Eskalasyon Girişimleri';

  @override
  String get metric_50_description =>
      'Durakları, sakinleştirici dili, daha yumuşak tonu, zaman aşımını ve her iki partnerin yoğunluğu azaltma girişimlerini izler.';

  @override
  String get metric_51_name => 'Güvenli Bağlanma İpuçları';

  @override
  String get metric_51_description =>
      'Güveni, doğrudan rahatlamayı, duygusal erişilebilirliği ve yakınlık ve bağımsızlıkla rahatlığı tanımlar.';

  @override
  String get metric_52_name => 'Anksiyöz Bağlanma Aktivasyonu';

  @override
  String get metric_52_description =>
      'Protest davranışını, acil rahatlama ihtiyaçlarını, terk etme korkusunu ve mesafeye karşı artmış hassasiyeti işaretler.';

  @override
  String get metric_53_name => 'Kaçıngan Bağlanma Uzaklaşması';

  @override
  String get metric_53_description =>
      'Duygusal küçümsemeyi, bağımsızlık savunmalarını, zayıflıktan geri çekilmeyi veya ihtiyaçlarla rahatsızlığı tespit eder.';

  @override
  String get metric_54_name => 'Düzensiz Bağlanma Sinyalleri';

  @override
  String get metric_54_description =>
      'Yaklaş-kaç döngülerini, ihtiyaçla karışık korkuyu, kaotik reaksiyonları veya kafa karıştırıcı yakınlık desenlerini arar.';

  @override
  String get metric_55_name => 'Duygusal Teklifler ve Yanıtlar';

  @override
  String get metric_55_description =>
      'Dikkat, rahatlık veya bağlantı için davetleri ve bunların kabul edilip edilmediğini veya kaçırıldığını ölçer.';

  @override
  String get metric_56_name => 'Bağlantıdan Uzaklaşma';

  @override
  String get metric_56_description =>
      'Yakınlık veya destek için teklifleri görmezden gelmeyi, reddetmeyi veya yanıt vermeyi başarmamayı işaretler.';

  @override
  String get metric_57_name => 'Bağlantıya Karşı Dönme';

  @override
  String get metric_57_description =>
      'Sevgi, zayıflık veya onarım girişimlerine karşı düşmanca veya cezalandırıcı yanıtları tespit eder.';

  @override
  String get metric_58_name => 'Pozitif Duygu Geçersiz Kılma';

  @override
  String get metric_58_description =>
      'Cömertliği, şüphe faydasını, sevgiyi ve çatışmayı bakım yoluyla yorumlamayı arar.';

  @override
  String get metric_59_name => 'Negatif Duygu Geçersiz Kılma';

  @override
  String get metric_59_description =>
      'Kötü niyet varsaymayı, tarafsız mesajları olumsuz yorumlamayı ve sürekli düşmanca çerçevelendirmeyi işaretler.';

  @override
  String get metric_60_name => 'Sert Başlangıç Deseni';

  @override
  String get metric_60_description =>
      'Bir talep yerine suçlama, saldırı, aşağılama veya suçla başlayan konuşmaları tanımlar.';

  @override
  String get metric_61_name => 'Yumuşak Başlangıç Deseni';

  @override
  String get metric_61_description =>
      'Duyguları, ihtiyaçları, belirli talepleri ve suçlayıcı olmayan dili kullanan nazif açılışları arar.';

  @override
  String get metric_62_name => 'Fizyolojik Kendini Sakinleştirme';

  @override
  String get metric_62_description =>
      'Çatışmaya devam etmeden önce durmayı, nefes almayı, alan almayı veya bedeni düzenleme girişimlerini değerlendirir.';

  @override
  String get metric_63_name => 'Çatışma Kaçınma Deseni';

  @override
  String get metric_63_description =>
      'Gerekli konuların, rahatsızlığın, anlaşmazlığın veya duygusal dürüstlüğün tekrarlanan kaçınmasını izler.';

  @override
  String get metric_64_name => 'Değişken Çatışma Stili';

  @override
  String get metric_64_description =>
      'Hala katılım ve onarım içerebilecek doğrudan ifade ile yüksek yoğunluklu çatışmayı tespit eder.';

  @override
  String get metric_65_name => 'Doğrulayan Çatışma Stili';

  @override
  String get metric_65_description =>
      'Partnerlerin anlaşmazlık sırasında birbirlerinin bakış açısını kabul edip etmediğini ölçer.';

  @override
  String get metric_66_name => 'Düşmanca Çatışma Stili';

  @override
  String get metric_66_description =>
      'Sık eleştiri, aşağılama, savunmacılık, saldırılar ve çatışmacı çerçevelendirmeyi işaretler.';

  @override
  String get metric_67_name => 'Düşmanca-Ayrık Desen';

  @override
  String get metric_67_description =>
      'Soğuk düşmanlığı, duygusal kopmayı, aşağılamayı ve düşük onarım motivasyonunu tanımlar.';

  @override
  String get metric_68_name => 'Uzlaşma İsteği';

  @override
  String get metric_68_description =>
      'Esnekliği, müzakereyi, orta zemin önerilerini ve her iki ihtiyacı da sayan fedakarlıkları arar.';

  @override
  String get metric_69_name => 'Etki Kabulü';

  @override
  String get metric_69_description =>
      'Partnerin duygularından, ihtiyaçlarından veya bakış açısından etkilenmeye açıklığı ölçer.';

  @override
  String get metric_70_name => 'Kilitlenmiş Çatışma Sinyalleri';

  @override
  String get metric_70_description =>
      'Değerlere, rüyalar, kimlik veya kronik uyumsuzluğa bağlı tekrarlanan çözülmemiş sorunları işaretler.';

  @override
  String get metric_71_name => 'Çözülebilir Problem Çerçevesi';

  @override
  String get metric_71_description =>
      'Belirli anlaşmalara yol açabilecek pratik, somut problem tanımlarını tespit eder.';

  @override
  String get metric_72_name => 'Paylaşılan Anlam Referansları';

  @override
  String get metric_72_description =>
      'Paylaşılan bir ilişki hikayesi oluşturan değerleri, ritüelleri, hedefleri, anıları veya kimlik dilini arar.';

  @override
  String get metric_73_name => 'Aşk Haritası Farkındalığı';

  @override
  String get metric_73_description =>
      'Partnerin iç dünyasını, stres faktörlerini, tercihlerini, korkularını ve günlük yaşamını bilgisini değerlendirir.';

  @override
  String get metric_74_name => 'Sevgi ve Hayranlık';

  @override
  String get metric_74_description =>
      'Takdiri, saygıyı, sıcaklığı, iltifatları, minnettarlığı ve olumlu bakışı tanımlar.';

  @override
  String get metric_75_name => 'Duygusal Emek Dengesizliği';

  @override
  String get metric_75_description =>
      'Orantısız planlama, sakinleştirme, hatırlama, açıklama veya ilişki bakımını taşıyan bir partneri işaretler.';

  @override
  String get metric_76_name => 'Zihinsel Yük Görmezden Gelme';

  @override
  String get metric_76_description =>
      'Görünmez planlama işini, ev koordinasyonunu, planlamayı veya sorumluluk takibini küçümsemeyi tespit eder.';

  @override
  String get metric_77_name => 'Silahlandırılmış Yetersizlik İpuçları';

  @override
  String get metric_77_description =>
      'Adil sorumluluktan kaçınmak için yetersizlik, kafa karışıklığı veya çaresizlik iddiasını arar.';

  @override
  String get metric_78_name => 'Travma Tetikleyici Hassasiyeti';

  @override
  String get metric_78_description =>
      'Tetikleyicilerin, travma yanıtlarının ve hassas konuların dikkatli ele alınmasının farkındalığını ölçer.';

  @override
  String get metric_79_name => 'Aşırı Tetikte Olma İpuçları';

  @override
  String get metric_79_description =>
      'Tehdit için taramayı, tonun aşırı izlenmesini, hata korkusunu veya sürekli duygusal uyanıklığı işaretler.';

  @override
  String get metric_80_name => 'Terk Etme Korkusu Dili';

  @override
  String get metric_80_description =>
      'Terk edilme, değiştirilme, görmezden gelinme, atılma veya duygusal olarak terk edilme korkusunu tespit eder.';

  @override
  String get metric_81_name => 'Rahatlama Arama Deseni';

  @override
  String get metric_81_description =>
      'Aşk, taahhüt, güvenlik veya devam eden ilgi kanıtı için tekrarlanan talepleri izler.';

  @override
  String get metric_82_name => 'Kovalayıcı-Uzaklaşan Döngü';

  @override
  String get metric_82_description =>
      'Bir partnerin yakınlık için kovalamayı tırmandırırken diğerinin mesafeyi artırdığını tanımlar.';

  @override
  String get metric_83_name => 'Kırgınlık Birikimi';

  @override
  String get metric_83_description =>
      'Depolanan şikayetleri, tekrarlanan geçmiş referanslarını, acıyı ve çözülmemiş duygusal borcu arar.';

  @override
  String get metric_84_name => 'Puan Tutma Davranışı';

  @override
  String get metric_84_description =>
      'Kaldıraç elde etmek için hataların, iyiliklerin, fedakarlıkların veya hataların işlemeli sayımını işaretler.';

  @override
  String get metric_85_name => 'Koşullu Sevgi';

  @override
  String get metric_85_description =>
      'Sadece uyum sağlandığında sunulan sevgiyi, onayı, erişimi veya sıcaklığı tespit eder.';

  @override
  String get metric_86_name => 'Aşk Bombardımanı Göstergeleri';

  @override
  String get metric_86_description =>
      'Bağlanmayı veya kontrolü hızlandırmak için kullanılan yoğun sevgiyi, vaatleri, baskıyı veya idealizasyonu işaretler.';

  @override
  String get metric_87_name => 'Geri Çekme Girişimleri';

  @override
  String get metric_87_description =>
      'Suçluluk, nostalji, vaatler, krizler veya ani sevgi yoluyla birini geri çekmeye çalışan girişimleri tanımlar.';

  @override
  String get metric_88_name => 'DARVO Deseni';

  @override
  String get metric_88_description =>
      'Zarar hakkında karşı karşıya kalındığında inkar, saldırı ve ters-kurban-suçlu yanıtları tespit eder.';

  @override
  String get metric_89_name => 'Kurban Duruşu Deseni';

  @override
  String get metric_89_description =>
      'Sorumluluktan kaçınan veya neden olunan zarardan dikkati yönlendiren tekrarlanan öz-victimizasyonu işaretler.';

  @override
  String get metric_90_name => 'Ahlaki Üstünlük Çerçevesi';

  @override
  String get metric_90_description =>
      'Çatışmayı domine etmek için kullanılan doğruluğu, saflık iddialarını veya ahlaki üstünlüğü arar.';

  @override
  String get metric_91_name => 'Karakter Suikastı';

  @override
  String get metric_91_description =>
      'Belirli davranış yerine kimlik, dürüstlük, akıl sağlığı veya değere yönelik geniş saldırıları tespit eder.';

  @override
  String get metric_92_name => 'Üçlü İndikatörler';

  @override
  String get metric_92_description =>
      'Partneri baskılamak, karşılaştırmak, doğrulamak veya destabilize etmek için çatışmaya üçüncü tarafları getirmeyi işaretler.';

  @override
  String get metric_93_name => 'Sosyal Karşılaştırma Baskısı';

  @override
  String get metric_93_description =>
      'Utandırmak veya zorlamak için kullanılan eslerle, arkadaşlarla, diğer çiftlerle veya ideallerle karşılaştırmaları arar.';

  @override
  String get metric_94_name => 'Özerklik Desteği';

  @override
  String get metric_94_description =>
      'Bağımsız seçimlere, dostluklara, hedeflere, sınırlara ve kişisel temsile saygıyı ölçer.';

  @override
  String get metric_95_name => 'Rıza ve Seçim Saygısı';

  @override
  String get metric_95_description =>
      'Kararların baskı, suçluluk, tehdit veya manipülasyon olmadan özgürce alınıp alınmadığını değerlendirir.';

  @override
  String get metric_96_name => 'İşbirlikçi Planlama';

  @override
  String get metric_96_description =>
      'Paylaşılan planlamayı, ortak kararları, koordineli sorumlulukları ve pratik takibi arar.';

  @override
  String get metric_97_name => 'Onarım Takibi';

  @override
  String get metric_97_description =>
      'Vaat edilen değişikliklerin daha sonra davranışta yansıtıp yansıtılmadığını, sadece kelimelerde değil, ölçer.';

  @override
  String get metric_98_name => 'Değişmiş Davranış Kanıtı';

  @override
  String get metric_98_description =>
      'Öğrenmeyi, ayarlamayı veya azaltılmış zararlı davranışı gösteren gözlemlenebilir, tekrarlanan eylemleri kontrol eder.';

  @override
  String get metric_99_name => 'Duygusal Güvenlik Dili';

  @override
  String get metric_99_description =>
      'Dürüstlüğü davet eden, korkuyu düşüren, onuru koruyan ve güvenli ifadeyi rahatlatan dili tanımlar.';

  @override
  String get metric_100_name => 'İlişki Belirsizliği';

  @override
  String get metric_100_description =>
      'Belirsizliği, karışık taahhütü, it-çek mesajlaşmasını veya devam etme isteğinin belirsizliğini tespit eder.';

  @override
  String get unableToOpenConversations => 'Konuşmalar açılamıyor';

  @override
  String get unableToOpenConversationsBody =>
      'Konuşmalarınız yüklenirken bir hata oluştu. Lütfen tekrar deneyin.';

  @override
  String get unableToLoadConversationsBody =>
      'Konuşmalar yüklenemiyor. Lütfen izinlerinizi kontrol edin ve tekrar deneyin.';

  @override
  String get errorLoadingConversationsBody =>
      'Konuşma yükleme hatası. Lütfen tekrar deneyin.';

  @override
  String get smsPermissionRequired => 'SMS izni gerekli';

  @override
  String get smsPermissionRequiredBody =>
      'SMS konuşmalarını analiz etmek için mesajlarınızı okuma iznine ihtiyacımız var. Gizliliğiniz önemlidir — mesajlar sadece yerel olarak analiz edilir ve asla sunucularımızda saklanmaz.';

  @override
  String get grantSmsPermission => 'SMS izni ver';

  @override
  String get noSmsConversationsFound => 'SMS konuşması bulunamadı';

  @override
  String get noConversationsMatchSearch => 'Aramanızla eşleşen konuşma yok';

  @override
  String get noSmsMessagesOnDevice => 'Bu cihazda SMS mesajınız yok';

  @override
  String get tryDifferentSearch => 'Farklı bir arama terimi deneyin';

  @override
  String get clearSearch => 'Aramayı temizle';

  @override
  String selectedFile(String filename) {
    return 'Seçilen: $filename';
  }

  @override
  String get invalidFile => 'Geçersiz dosya';

  @override
  String get fileImport => 'Dosya içe aktar';

  @override
  String get fileImportNotImplemented =>
      'Bu dosya türü için dosya analizi henüz uygulanmadı.';

  @override
  String get errorPickingFile => 'Dosya açılamıyor. Lütfen tekrar deneyin.';

  @override
  String get readyToCapture => 'Yakalamaya hazır';

  @override
  String get readyToCaptureBody =>
      'Şimdi Mesajlar uygulamasına gidin ve ekran görüntüsü almaya başlayın.\n\nBittiğinde bu uygulamaya geri dönün ve \"Bitir ve İşle\" düğmesine basın.';

  @override
  String get noScreenshotsToProcess => 'İşlenecek ekran görüntüsü yok.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Ekran görüntüsü $current / $total işleniyor...';
  }

  @override
  String get noMessagesFound => 'Mesaj bulunamadı';

  @override
  String get noMessagesFoundBody =>
      'Ekran görüntülerinden mesaj çıkarılamadı.\n\nEkran görüntülerinin konuşmayı net gösterdiğinden emin olun.';

  @override
  String loadedMessages(int count) {
    return 'Ekran görüntülerinden $count mesaj yüklendi';
  }

  @override
  String get processingError => 'İşleme hatası';

  @override
  String get processingErrorBody =>
      'Ekran görüntüleri işlenirken hata oluştu. Lütfen tekrar deneyin.';

  @override
  String metricListSavedAs(String name) {
    return 'Seçimleriniz \"$name\" olarak kaydedildi.';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Seçimler \"$name\" alındı ve uygulandı.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$name üzerinden $count mesaj yüklendi';
  }

  @override
  String get loadButton => 'Yükle';

  @override
  String get photoPermissionRequired =>
      'Ekran görüntülerini algılamak için fotoğraf kitaplığı izni gerekli.';

  @override
  String get initializingConnection => 'Güvenli bağlantı başlatılıyor...';

  @override
  String get configurationRequired => 'Yapılandırma gerekli';

  @override
  String get goBack => 'Geri';

  @override
  String get enableDateRangeFiltering =>
      'Tarih aralığı filtrelemeyi etkinleştir';

  @override
  String get clearSelectedDateRange => 'Seçilen tarih aralığını temizle';

  @override
  String get largeThreadNoticeTitle => 'KULLANICIYA BİLDİRİM';

  @override
  String get largeThreadNoticeBody =>
      'Özellikle büyük metin dizileriyle çalışırken, bu uygulamadaki bazı yükleme ekranları bazen bir buçuk dakikayı aşabilir.\n\nUygulama donmuyor. Dönen bir durum göstergesi görüyorsanız, uygulama hala yükleniyor demektir.\n\nBu durumlarda sabırlı olun, çünkü yükleme süresi diğer uygulamalara göre daha uzun olabilir, özellikle 50.000 mesaj içeren bir dizi gibi büyük bir veri setiyle çalışırken.';

  @override
  String get neverShowThisAgain => 'Bu mesajı tekrar gösterme';

  @override
  String loadingConversationWith(String name) {
    return 'Konuşma yükleniyor\n$name ile…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Mesajlar uygulamasını açın ve konuşmayı seçin\n2. Analiz etmek istediğiniz en eski mesaja kadar kaydırın\n3. Aşağıdaki \"Yakalamayı Başlat\" düğmesine basın\n4. Konuşmayı kaydırırken ekran görüntüsü alın\n5. Bittiğinde \"Bitir ve İşle\" düğmesine basın';

  @override
  String get howToCaptureIosMessages => 'iOS mesajları nasıl yakalanır';

  @override
  String get deepSeekApiKey => 'DeepSeek API Anahtarı';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'AI analizini etkinleştirmek için DeepSeek API anahtarınızı girin.';

  @override
  String get getYourApiKeyFrom =>
      'API anahtarınızı şuradan alın: https://platform.deepseek.com';

  @override
  String get apiKey => 'API Anahtarı';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'API anahtarınız cihazınızda güvenli bir şekilde saklanır ve asla paylaşılmaz.';

  @override
  String get pleaseEnterApiKey => 'Lütfen bir API anahtarı girin';

  @override
  String get apiKeySavedSuccessfully => 'API anahtarı başarıyla kaydedildi!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Lütfen sabırlı olun, daha uzun metin dizisi veri kümeleri yüklenmek için oldukça zaman alır';

  @override
  String get almostThereBigOne =>
      'Neredeyse bitti, Vay canına, bu büyük olmalı';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Lütfen sabırlı olun, büyük veri kümeleri bir buçuk dakikadan fazla yükleme sürelerine neden olabilir';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Devam ediyor, $name ile devasa diziyi yükleniyor…';
  }

  @override
  String get noMessagesInDateRange =>
      'Seçilen tarih aralığında mesaj bulunamadı. Lütfen farklı tarihler seçin veya tarih filtresini temizleyin.';

  @override
  String get purchaseCustomMetricTileTitle => 'Özel Metrik Satın Al';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Tek seferlik \$4.99 ücretle, kalıcı olarak diğer metriklerinizin yanına kaydedilen ve gelecekteki herhangi bir analizde kullanılabilen özel bir metrik adı ve tanımı girin. Sınırsız özel metrik satın alın.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Özel Metrik Satın Al';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Bir özel metrik slotunun kilidini açmak için \$4.99 (tek seferlik) ücretlendirileceksiniz.\n\nÖzel metrik adınız ve tanımınız kaydedildikten sonra kalıcıdır ve asla değiştirilemez, bu yüzden lütfen dikkatlice seçin.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Satın Al — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Özel Metrik Adı';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Özel metriğiniz için ad girin:';

  @override
  String get purchaseCustomMetricNameHint => 'Metrik Adı';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Metrik Adını Onayla';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Girdiniz:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Bu SON ve asla değiştirilemez.';

  @override
  String get purchaseCustomMetricReenterName => 'Hayır — Adı Yeniden Gir';

  @override
  String get purchaseCustomMetricSaveName => 'Tamam — Metrik Adını Kaydet';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Tanımla: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Özel Metriğinizin anlamını girin: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Bu metriğin ne anlama geldiğini, hangi davranışları aradığını ve ilişki dinamiklerine nasıl uygulandığını açıklayın...';

  @override
  String get purchaseCustomMetricReenter => 'Hayır — Yeniden Gir';

  @override
  String get purchaseCustomMetricSaveMeaning => 'Tamam — Anlamı Kaydet';

  @override
  String get purchaseCustomMetricPreviewTitle => 'Özel Metriğinizi Önizleyin';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Kutucuğunuz böyle görünecek:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Fikrinizi değiştirmek için SON ŞANSINIZ.\nOnaylandıktan sonra, ad ve tanım kalıcıdır.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Her Şeyi İptal Et';

  @override
  String get purchaseCustomMetricCommit => 'Özel Metrike Bağlan';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" metriklerinize eklendi! Artık analiz için seçebilirsiniz.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Satın Alma İşleniyor...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Mağaza onayı bekleniyor.\nLütfen uygulamayı kapatmayın.';

  @override
  String get next => 'Sonraki';

  @override
  String get cancelNotReady => 'İptal — Hazır Değildim';

  @override
  String get packGoodLabel => 'İyi';

  @override
  String get packBadLabel => 'Kötü';

  @override
  String get packUglyLabel => 'Çirkin';

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
