// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'AI 관계 독성 분석기';

  @override
  String get psychologicalMetrics => '심리적 지표';

  @override
  String get metricsDescription =>
      '선택한 지표가 적을수록 해당 행동에 대한 더 깊고 집중적인 분석이 이루어집니다. 선택한 지표가 많을수록 지표당 세부 정보가 적은 더 광범위한 보고서가 생성됩니다.';

  @override
  String get selectSMS => 'SMS / RCS 채팅 선택';

  @override
  String get selectDiscordChannel => '채널 선택';

  @override
  String get lightMode => '라이트';

  @override
  String get darkMode => '다크';

  @override
  String get discordSetupTitle => 'Discord 설정 방법';

  @override
  String get discordSetupDescription =>
      '앱에서 Discord 채널 분석을 활성화하려면 다음 단계를 따르십시오:';

  @override
  String get discordStep1Title => 'Discord 봇 만들기';

  @override
  String get discordStep1Description =>
      'discord.com/developers로 이동하여 새 애플리케이션을 만들고 봇을 추가합니다. 봇 토큰을 복사합니다.';

  @override
  String get discordStep2Title => '봇 권한 활성화';

  @override
  String get discordStep2Description =>
      '봇 설정에서 \'Message Content Intent\' 및 \'Server Members Intent\'를 활성화합니다.';

  @override
  String get discordStep3Title => '봇을 서버에 초대';

  @override
  String get discordStep3Description =>
      'OAuth2 URL 생성기를 사용하여 필요한 권한으로 봇을 Discord 서버에 초대합니다.';

  @override
  String get discordStep4Title => '앱에서 구성';

  @override
  String get discordStep4Description =>
      '앱 설정에 봇 토큰을 입력합니다 (도움이 필요하면 지원팀에 문의하세요).';

  @override
  String get discordStep5Title => '채널 선택';

  @override
  String get discordStep5Description =>
      '\'Discord 채널 선택\'을 탭하고 서버를 선택한 다음 분석할 채널을 선택합니다.';

  @override
  String get discordBotConfiguration => '봇 구성';

  @override
  String get discordBotConfigTitle => 'Discord Bot Configuration';

  @override
  String get discordBotTokenSetupTitle => 'Bot Token Setup';

  @override
  String get discordBotTokenSetupDescription =>
      'Enter your Discord bot token below. This is required to access your Discord servers and channels.';

  @override
  String get discordWhereToFindToken => 'Where to find your bot token:';

  @override
  String get discordStepDiscordDevelopers => 'Go to discord.com/developers';

  @override
  String get discordStepClickApplication => 'Click on your application';

  @override
  String get discordStepGoToBot => 'Go to \"Bot\" section';

  @override
  String get discordStepResetToken => 'Click \"Reset Token\" if needed';

  @override
  String get discordStepCopyToken => 'Copy the token and paste it below';

  @override
  String get discordNeverShareToken => '⚠️ Never share this token with anyone!';

  @override
  String get discordBotTokenLabel => 'Bot Token';

  @override
  String get discordBotTokenHint => 'Paste your Discord bot token here';

  @override
  String get discordTokenRequiredError => 'Please enter your bot token';

  @override
  String get discordTokenTooShortError => 'Token appears too short';

  @override
  String get discordSaveToken => 'Save Token';

  @override
  String get discordSaving => 'Saving...';

  @override
  String get discordTestConnection => 'Test Connection';

  @override
  String get discordViewFullSetup => 'View Full Setup Instructions';

  @override
  String get discordTokenSavedSuccess => 'Bot token saved successfully';

  @override
  String get discordTokenSaveFailed => 'Failed to save';

  @override
  String get discordConnectionTestNotImplemented =>
      'Connection test not yet implemented';

  @override
  String get discordReadyToConfigureTitle => 'Ready to configure your bot?';

  @override
  String get discordReadyToConfigureDescription =>
      'Once you\'ve created your Discord bot following the steps above, enter your bot token in the settings to start analyzing.';

  @override
  String get gotIt => '알겠습니다';

  @override
  String get selectFile => '파일 선택';

  @override
  String get analyzeSelectedMetrics => '선택한 지표 분석';

  @override
  String get analyze20RandomMetrics => '무작위 지표 20개 분석';

  @override
  String get membershipOptions => '멤버십 옵션';

  @override
  String get free => '무료';

  @override
  String get oneTimeUnlock => '일회성 보고서 잠금 해제';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Discord Addon';

  @override
  String get analyze => '분석';

  @override
  String get report => '보고서';

  @override
  String get pdfReport => 'PDF 보고서';

  @override
  String get openPdf => 'PDF 열기';

  @override
  String get sharePdf => 'PDF 공유';

  @override
  String get printPdf => 'PDF 인쇄';

  @override
  String get closePdfPreview => 'PDF 미리보기 창 닫기';

  @override
  String get openPdfPreview => 'PDF 미리보기 창 열기';

  @override
  String get pdfPreviewDescription => '보고서를 간결하게 유지하기 위해 PDF 창은 닫힌 상태로 시작합니다.';

  @override
  String get notNow => '지금 아님';

  @override
  String get unlockThisReport => '이 보고서 잠금 해제 - \$20';

  @override
  String get joinStandard => 'Standard 가입 - \$9.99/월';

  @override
  String get instantUnlockTitle => '즉시 보고서 잠금 해제 - \$20';

  @override
  String get instantUnlockDescription => '현재 보고서만 잠금 해제하는 일회성 구매입니다. 구독 없음.';

  @override
  String get purchaseFor20 => '\$20에 구매';

  @override
  String get share => '공유';

  @override
  String get print => '인쇄';

  @override
  String get save => '저장';

  @override
  String get cancel => '취소';

  @override
  String get ok => 'OK';

  @override
  String get loading => '로딩 중...';

  @override
  String get error => '오류';

  @override
  String get success => '성공';

  @override
  String get conversations => '대화';

  @override
  String get messages => '메시지';

  @override
  String get selectConversation => '대화 선택';

  @override
  String get selectSmsConversation => 'SMS / RCS 채팅 선택';

  @override
  String get searchConversations => '대화 검색...';

  @override
  String get loadingConversations => '대화 로딩 중...';

  @override
  String get errorLoadingConversations => '대화 로딩 오류';

  @override
  String get selectConversationToAnalyze => '분석할 대화 선택';

  @override
  String get analyzeWithSelectedMetrics => '선택한 지표로 분석';

  @override
  String get loadConversationAndSelectMetric => '대화를 불러오고 지표를 하나 이상 선택하세요';

  @override
  String get selectAtLeastOneMetric => '보고서를 실행하려면 지표를 하나 이상 선택해야 합니다.';

  @override
  String get spinningMetricWheel => '지표를 무작위로 선택 중...';

  @override
  String get loadConversationToAnalyze => '분석할 대화를 불러오세요';

  @override
  String get noConversationsFound => '대화를 찾을 수 없습니다';

  @override
  String get permissionsRequired => '권한 필요';

  @override
  String get smsPermission => '문자 메시지';

  @override
  String get contactsPermission => '연락처';

  @override
  String get smsPermissionDescription => '관계 패턴 분석을 위해 SMS 대화에 접근합니다';

  @override
  String get contactsPermissionDescription => '전화번호 대신 연락처 이름을 표시합니다';

  @override
  String get analyzingMessage => 'AI가 심리 분석을 생성하는 동안 잠시 기다려 주세요...';

  @override
  String get analyzingStatus => '대화 분석 중...';

  @override
  String get analyzingSubMessage => '잠시 기다려 주세요. 기기에 따라 최대 1분이 걸릴 수 있습니다.';

  @override
  String get unlockFullReport => '이 전체 보고서 잠금 해제 및 표시';

  @override
  String get fullReportLocked => '전체 보고서 잠김';

  @override
  String get upgradeToUnlock => '전체 심리 분석 보고서를 잠금 해제하려면 멤버십을 업그레이드하세요.';

  @override
  String get language => '언어';

  @override
  String get english => '영어';

  @override
  String get spanish => '스페인어';

  @override
  String get french => '프랑스어';

  @override
  String get german => '독일어';

  @override
  String get italian => '이탈리아어';

  @override
  String get portuguese => '포르투갈어';

  @override
  String get dutch => '네덜란드어';

  @override
  String get russian => '러시아어';

  @override
  String get chinese => '중국어';

  @override
  String get japanese => '일본어';

  @override
  String get korean => '한국어';

  @override
  String get arabic => '아랍어';

  @override
  String get hindi => '힌디어';

  @override
  String get turkish => '터키어';

  @override
  String get polish => '폴란드어';

  @override
  String get ukrainian => '우크라이나어';

  @override
  String get runAnotherAnalysis => '다른 분석을 실행하시겠습니까?';

  @override
  String get becomeMemberTitle => '전체 분석 보고서를 받으려면 회원이 되세요';

  @override
  String get becomeMemberSubtitle => '대화 및 보고서에 맞는 액세스 수준을 선택하세요.';

  @override
  String get benefitAnalyzeSms => 'SMS 문자 메시지 분석';

  @override
  String get benefitReportPreview => '보고서 미리보기 실행';

  @override
  String get benefitViewPartialReport => '보고서의 약 25% 보기';

  @override
  String get benefitLockedDetails => '전체 보고서 세부 정보 잠김';

  @override
  String get currentFreeAccess => '현재 무료 액세스';

  @override
  String get benefitUnlockCurrentReport => '이 전체 보고서 잠금 해제';

  @override
  String get benefitNoSubscription => '구독 없음';

  @override
  String get benefitSavePrintShareThis => '이 보고서 저장, 인쇄 및 공유';

  @override
  String get benefitBestSingleAnalysis => '분석이 하나만 필요한 경우 최적';

  @override
  String get unlockThisReportShort => '이 보고서 잠금 해제';

  @override
  String get benefitFullSmsReport => '전체 SMS 분석 보고서';

  @override
  String get benefitSavePrintSharePdf => 'PDF 보고서 저장, 인쇄 및 공유';

  @override
  String get benefitTenReports => '24시간 내 보고서 10개';

  @override
  String get benefitBestTextReview => '문자 메시지 관계 검토에 최적';

  @override
  String get benefitDateRangeFilter => '날짜 범위로 분석 필터링';

  @override
  String get signUpStandard => 'Standard 멤버십 가입';

  @override
  String get benefitAddToStandard => 'Standard 멤버십에 추가';

  @override
  String get benefitAnalyzeDiscord => 'Discord 채팅 분석';

  @override
  String get benefitRequiresBot => '봇 설치 필요';

  @override
  String get benefitBestGamers => '게이머 및 Discord 커뮤니티에 최적';

  @override
  String get addDiscordAnalysis => 'Discord 분석 추가';

  @override
  String get requiresStandardMembership => 'Standard 멤버십 필요';

  @override
  String get comingSoon => '곧 출시';

  @override
  String get comingSoonWithNextUpdate => '다음 업데이트와 함께 곧 출시:';

  @override
  String get proMembershipTier => 'Pro 멤버십 - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus 멤버십 - \$24.99';

  @override
  String get proGetsLabel => 'Pro 혜택:';

  @override
  String get proGetsDescription => '다른 인기 메시지 및 소셜 미디어 플랫폼의 채팅 스레드를 분석합니다.';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter)';

  @override
  String get proPlusGetsLabel => 'Pro-Plus 혜택:';

  @override
  String get proPlusGetsDescription => 'Pro의 모든 것과 함께 할인된 가격으로 Discord 애드온.';

  @override
  String get purchaseSuccessfulUnlocked => '구매 성공! 보고서가 잠금 해제되었습니다.';

  @override
  String get purchaseFailed => '구매 실패. 다시 시도해 주세요.';

  @override
  String get membershipActivated => '멤버십이 활성화되었습니다!';

  @override
  String get dateRangeFilter => '날짜 범위 필터';

  @override
  String get dateRangeOptional => '(선택 사항)';

  @override
  String get startDate => '시작 날짜';

  @override
  String get endDate => '종료 날짜';

  @override
  String get clear => '지우기';

  @override
  String get dateRangeRequiresMembership => 'Standard 멤버십 이상 필요';

  @override
  String selectUpToCount(Object current, Object max) {
    return '$max개까지 선택 가능. 현재: $current개';
  }

  @override
  String get clearSelections => '선택 초기화';

  @override
  String analyzeRandomMetrics(Object count) {
    return '$count개의 무작위 지표 분석';
  }

  @override
  String get saveSelections => '선택 저장';

  @override
  String get loadSelections => '선택 불러오기';

  @override
  String get saveMetricListName => '지표 목록 저장';

  @override
  String get enterListName => '이 지표 목록의 이름을 입력하세요:';

  @override
  String get chooseSavedMetrics => '저장된 지표 목록 선택:';

  @override
  String get noSavedLists => '현재 저장된 지표 목록이 없습니다.';

  @override
  String get metricListSaved => '지표 목록이 성공적으로 저장되었습니다.';

  @override
  String get metricListLoaded => '지표 목록이 성공적으로 불러와졌습니다.';

  @override
  String get filters => '필터';

  @override
  String get sortBy => '정렬 기준:';

  @override
  String get recent => '최근';

  @override
  String get name => '이름';

  @override
  String get count => '?';

  @override
  String get namedOnly => '이름 있는 것만';

  @override
  String get minMessages => '최소 메시지:';

  @override
  String get minimumMessages => '최소 메시지 수:';

  @override
  String get executiveSummary => '요약';

  @override
  String get metricScores => '지표 점수';

  @override
  String get contextualEvidenceExamples => '맥락적 증거 예시';

  @override
  String get neutralSynthesis => '중립적 종합';

  @override
  String analysisOfSender(Object sender) {
    return '$sender 분석 (발신자)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return '$receiver 분석 (수신자)';
  }

  @override
  String get finalConclusion => '최종 결론';

  @override
  String get metric_1_name => '경멸';

  @override
  String get metric_1_description =>
      '한 파트너를 다른 파트너보다 열등하게 만드는 우월감, 혐오, 조롱, 눈을 굴리는 표현, 또는 모욕을 감지합니다.';

  @override
  String get metric_2_name => '방어성';

  @override
  String get metric_2_description =>
      '반사적인 자기 보호, 반격, 변명, 그리고 상대방의 우려를 고려하는 것을 거부하는 패턴을 추적합니다.';

  @override
  String get metric_3_name => '담 쌓기';

  @override
  String get metric_3_description =>
      '참여를 피하기 위한 차단, 철수, 무시, 응답 거부, 또는 대화 종료를 식별합니다.';

  @override
  String get metric_4_name => '비판';

  @override
  String get metric_4_description =>
      '특정 행동, 요구, 또는 사건 대신 성격이나 인격을 공격하는 것을 감지합니다.';

  @override
  String get metric_5_name => '가스라이팅 지표';

  @override
  String get metric_5_description =>
      '상대방의 기억, 인식, 정신 건강, 또는 경험의 타당성에 의심을 품게 만드려는 시도를 표시합니다.';

  @override
  String get metric_6_name => '책임 전가';

  @override
  String get metric_6_description => '책임을 인정하는 대신 상대 파트너에게 전가하는지 여부를 측정합니다.';

  @override
  String get metric_7_name => '갈등 고조 패턴';

  @override
  String get metric_7_description =>
      '어조, 비난, 강도, 또는 위협이 해결로 나아가는 대신 고조되는지 평가합니다.';

  @override
  String get metric_8_name => '화해 시도 인식';

  @override
  String get metric_8_description =>
      '사과, 유머, 일시 중지, 안심, 또는 평화 제안이 인지되고 받아들여지는지 확인합니다.';

  @override
  String get metric_9_name => '책임 언어';

  @override
  String get metric_9_description =>
      '피해에 대한 명확한 인정, 구체적인 책임, 그리고 행동을 바꾸려는 의지를 확인합니다.';

  @override
  String get metric_10_name => '경계 존중';

  @override
  String get metric_10_description =>
      '시간, 사생활, 신체, 감정, 또는 연락에 관한 명시된 한계가 지켜지는지 평가합니다.';

  @override
  String get metric_11_name => '강압적 통제 지표';

  @override
  String get metric_11_description =>
      '위협, 제한, 감시, 의존성, 또는 선택과 움직임에 대한 통제 패턴을 표시합니다.';

  @override
  String get metric_12_name => '위협 언어';

  @override
  String get metric_12_description =>
      '안전, 유기, 폭로, 보복, 또는 처벌과 관련된 명시적이거나 암묵적인 위협을 식별합니다.';

  @override
  String get metric_13_name => '무시';

  @override
  String get metric_13_description =>
      '우려 사항을 무시하거나, 필요를 중요하지 않게 취급하거나, 고통을 진지하게 받아들이기를 거부하는 것을 감지합니다.';

  @override
  String get metric_14_name => '무효화';

  @override
  String get metric_14_description =>
      '다른 사람의 감정을 인정하는 대신 부정, 조롱, 또는 교정하는 것을 측정합니다.';

  @override
  String get metric_15_name => '공감 표현';

  @override
  String get metric_15_description =>
      '관점 취하기, 배려, 감정 인식, 그리고 상대방의 경험에 대한 관심을 확인합니다.';

  @override
  String get metric_16_name => '상호성';

  @override
  String get metric_16_description =>
      '주의, 노력, 사과, 타협, 그리고 감정적 지원이 양방향으로 흐르는지 평가합니다.';

  @override
  String get metric_17_name => '감정 조절';

  @override
  String get metric_17_description =>
      '폭발적인 반응 없이 안정을 유지하고, 일시 중지하고, 자기를 달래고, 소통할 수 있는 능력을 평가합니다.';

  @override
  String get metric_18_name => '해를 끼치는 비꼬기';

  @override
  String get metric_18_description =>
      '깎아내리거나, 벌주거나, 모욕하거나, 적대감을 유머로 위장하는 데 사용되는 비꼬기를 표시합니다.';

  @override
  String get metric_19_name => '욕설 사용';

  @override
  String get metric_19_description =>
      '인격을 비하하는 표현, 모욕, 사람을 향한 욕설, 또는 정체성 기반 공격을 식별합니다.';

  @override
  String get metric_20_name => '침묵 처벌 패턴';

  @override
  String get metric_20_description => '처벌, 통제, 회피, 또는 연결 철회로 사용되는 침묵을 추적합니다.';

  @override
  String get metric_21_name => '질투심 표현';

  @override
  String get metric_21_description =>
      '감시, 제한, 또는 불안의 원천으로 질투심이 틀지어지거나 정당화되는지 확인합니다.';

  @override
  String get metric_22_name => '고립 압력';

  @override
  String get metric_22_description =>
      '한 파트너가 가족, 친구, 또는 지원 네트워크로부터 분리되도록 밀거나 조작하는지 평가합니다.';

  @override
  String get metric_23_name => '재정 통제 지표';

  @override
  String get metric_23_description =>
      '자원에 대한 접근 제한, 금전 감시, 또는 재정 의존성 패턴을 표시합니다.';

  @override
  String get metric_24_name => '사생활 침해 지표';

  @override
  String get metric_24_description =>
      '동의 없이 메시지, 계정, 기기, 또는 개인 공간에 접근하는 언급을 표시합니다.';

  @override
  String get metric_25_name => '사과 구체성';

  @override
  String get metric_25_description =>
      '사과가 구체적인 피해를 인정하는지, 아니면 막연하거나 조건부인지 또는 책임을 회피하는지 평가합니다.';

  @override
  String get metric_26_name => '용서 압력';

  @override
  String get metric_26_description =>
      '상대방이 자신의 과정이나 속도를 존중받지 못한 채 용서하도록 밀리거나 서두르게 되는지 확인합니다.';

  @override
  String get metric_27_name => '최소화';

  @override
  String get metric_27_description =>
      '피해, 우려, 또는 경험이 덜 심각하거나 유효하지 않은 것으로 축소되는 것을 감지합니다.';

  @override
  String get metric_28_name => '투영';

  @override
  String get metric_28_description =>
      '한 파트너가 자신의 행동, 의도, 또는 감정을 상대방의 것으로 귀속시키는 것을 식별합니다.';

  @override
  String get metric_29_name => '말 끊기 패턴';

  @override
  String get metric_29_description =>
      '한 목소리가 다른 목소리를 지속적으로 압도, 방해, 또는 막는지 추적합니다.';

  @override
  String get metric_30_name => '주제 회피';

  @override
  String get metric_30_description =>
      '특히 갈등 중에 주제가 책임에서 벗어나 다른 방향으로 전환되는지 평가합니다.';

  @override
  String get metric_31_name => '해결 지향성';

  @override
  String get metric_31_description =>
      '표현된 감정 이후에도 해결책, 타협, 또는 문제 해결을 향한 움직임이 있는지 측정합니다.';

  @override
  String get metric_32_name => '상호 문제 해결';

  @override
  String get metric_32_description => '과거의 불만 대신 공동의 노력으로 어려움에 접근하는 언어를 확인합니다.';

  @override
  String get metric_33_name => '감정적 범람';

  @override
  String get metric_33_description =>
      '압도적인 감정 반응이 명확한 생각, 경청, 또는 참여를 방해하는 신호를 감지합니다.';

  @override
  String get metric_34_name => '두려움 반응 신호';

  @override
  String get metric_34_description =>
      '특정 주제, 행동, 또는 어조를 두려움이나 위협의 원천으로 암시하는 언어를 표시합니다.';

  @override
  String get metric_35_name => '주장의 일관성';

  @override
  String get metric_35_description =>
      '사실 진술, 약속, 또는 설명이 대화에 걸쳐 일관성이 있는지 추적합니다.';

  @override
  String get metric_36_name => '증거 기반 기억';

  @override
  String get metric_36_description =>
      '사건에 대한 인식이 구체적인 세부 사항에 근거하는지, 아니면 의구심이나 재구성 없이 주장되는지 평가합니다.';

  @override
  String get metric_37_name => '요구-철수 패턴';

  @override
  String get metric_37_description =>
      '한 파트너가 압력을 가하는 동안 다른 파트너가 물러나는 사이클을 측정합니다.';

  @override
  String get metric_38_name => '권력 불균형 지표';

  @override
  String get metric_38_description =>
      '한 파트너가 결정, 주의, 또는 존중 면에서 지속적으로 지배적이거나 열등한 위치에 있는지 평가합니다.';

  @override
  String get metric_39_name => '존중하는 이견';

  @override
  String get metric_39_description => '의견 차이가 경멸, 위협, 또는 인신공격 없이 표현되는지 평가합니다.';

  @override
  String get metric_40_name => '단절과 회복 사이클';

  @override
  String get metric_40_description => '갈등 이후 의미 있는 화해 또는 이해 향상이 이루어지는지 추적합니다.';

  @override
  String get metric_41_name => '애정 철수';

  @override
  String get metric_41_description =>
      '벌, 통제, 또는 조작의 도구로 사용되는 따뜻함, 친밀감, 또는 애정의 철수를 식별합니다.';

  @override
  String get metric_42_name => '공개적 모욕 언급';

  @override
  String get metric_42_description =>
      '다른 사람들 앞에서 또는 공개 플랫폼에서 일어난 창피 주기, 비판, 또는 모욕을 감지합니다.';

  @override
  String get metric_43_name => '물질 관련 갈등 신호';

  @override
  String get metric_43_description =>
      '물질 사용이 갈등을 유발하거나 악화시키거나 둘러싼 것과 관련되는지 표시합니다.';

  @override
  String get metric_44_name => '양육 갈등 압력';

  @override
  String get metric_44_description =>
      '자녀 양육 방식이나 공동 양육에 관한 이견이 권력 다툼이나 처벌의 형태로 나타나는지 평가합니다.';

  @override
  String get metric_45_name => '성적 경계 존중';

  @override
  String get metric_45_description =>
      '성적 접촉, 습관, 또는 선호에 관한 표현된 한계가 인정되고 존중되는지 확인합니다.';

  @override
  String get metric_46_name => '디지털 괴롭힘 지표';

  @override
  String get metric_46_description =>
      '온라인 공간에서 괴롭히거나, 조종하거나, 통제하거나, 방해하는 행동을 표시합니다.';

  @override
  String get metric_47_name => '감시 또는 사찰 언어';

  @override
  String get metric_47_description =>
      '동의 없이 다른 사람의 위치, 통신, 또는 활동을 추적하거나 모니터링하는 언급을 식별합니다.';

  @override
  String get metric_48_name => '미래 지향성';

  @override
  String get metric_48_description =>
      '대화가 공동의 계획, 성장, 또는 희망 있는 앞날을 향해 나아가는지 측정합니다.';

  @override
  String get metric_49_name => '안전 계획 신호';

  @override
  String get metric_49_description =>
      '한 파트너가 나가거나, 보호받거나, 위험한 상황에서 지원을 찾으려고 계획하거나 고려하고 있음을 나타내는 언어를 감지합니다.';

  @override
  String get metric_50_name => '상호 갈등 완화 시도';

  @override
  String get metric_50_description =>
      '양 파트너가 긴장을 줄이고, 일시 중지하거나, 더 생산적인 교환으로 전환하려고 노력하는지 확인합니다.';

  @override
  String get metric_51_name => '안정 애착 신호';

  @override
  String get metric_51_description =>
      '연결에 대한 자신감, 충돌 후 진정, 그리고 취약성과 지원에 대한 편안함을 반영하는 언어를 표시합니다.';

  @override
  String get metric_52_name => '불안 애착 활성화';

  @override
  String get metric_52_description =>
      '감소에 대한 두려움, 안심 추구, 그리고 버려짐이나 거부를 예상하는 언어를 감지합니다.';

  @override
  String get metric_53_name => '회피 애착 거리두기';

  @override
  String get metric_53_description =>
      '친밀감, 감정, 또는 개인적인 필요 사항으로부터 감정적으로 철수하는 것을 식별합니다.';

  @override
  String get metric_54_name => '혼란 애착 신호';

  @override
  String get metric_54_description =>
      '불일치, 과거 또는 현재의 해결되지 않은 트라우마, 또는 두려움-접근 갈등을 반영하는 언어를 평가합니다.';

  @override
  String get metric_55_name => '감정적 입찰과 반응';

  @override
  String get metric_55_description =>
      '연결, 주의, 위안, 또는 참여를 위한 시도와 그것이 받아들여지는지, 외면되는지, 또는 거부되는지 추적합니다.';

  @override
  String get metric_56_name => '연결에서 등 돌리기';

  @override
  String get metric_56_description =>
      '감정적 입찰이 무관심, 산만함, 또는 최소한의 반응으로 충족되는지 측정합니다.';

  @override
  String get metric_57_name => '연결에 맞서기';

  @override
  String get metric_57_description => '감정적 입찰이 짜증, 비판, 또는 갈등으로 충족되는지 감지합니다.';

  @override
  String get metric_58_name => '긍정적 정서 우세';

  @override
  String get metric_58_description =>
      '부정적인 사건이나 갈등이 따뜻함, 유머, 또는 선의의 렌즈를 통해 해석되는지 평가합니다.';

  @override
  String get metric_59_name => '부정적 정서 우세';

  @override
  String get metric_59_description =>
      '중립적이거나 긍정적인 사건이 의심, 짜증, 또는 비난의 렌즈를 통해 필터링되는지 평가합니다.';

  @override
  String get metric_60_name => '거친 시작 패턴';

  @override
  String get metric_60_description => '비판, 비난, 또는 경멸로 대화나 갈등이 시작되는지 추적합니다.';

  @override
  String get metric_61_name => '부드러운 시작 패턴';

  @override
  String get metric_61_description =>
      '대화나 갈등이 \'나\' 진술, 특정 요청, 또는 협력적인 어조로 시작되는지 평가합니다.';

  @override
  String get metric_62_name => '신체적 자기 위안';

  @override
  String get metric_62_description =>
      '참여를 중단하지 않고 침착함을 회복하기 위해 일시 중지 또는 자기 조절을 사용하는 신호를 감지합니다.';

  @override
  String get metric_63_name => '갈등 회피 패턴';

  @override
  String get metric_63_description =>
      '긴장이나 의견 불일치를 이름 붙이거나 해결하기를 일관되게 거부하는 것을 식별합니다.';

  @override
  String get metric_64_name => '폭발적 갈등 스타일';

  @override
  String get metric_64_description =>
      '갈등이 강렬하고, 확대되고, 종종 감정적 또는 언어적 폭발을 포함하는지 측정합니다.';

  @override
  String get metric_65_name => '인정적 갈등 스타일';

  @override
  String get metric_65_description =>
      '갈등이 경청, 검증, 그리고 공유된 이해를 향한 참여로 표시되는지 평가합니다.';

  @override
  String get metric_66_name => '적대적 갈등 스타일';

  @override
  String get metric_66_description => '갈등이 지속적인 적대감, 비난 또는 공격성으로 표시되는지 식별합니다.';

  @override
  String get metric_67_name => '적대적-분리 패턴';

  @override
  String get metric_67_description => '갈등이 동시에 적대적이고 감정적으로 분리된 특성을 보이는지 감지합니다.';

  @override
  String get metric_68_name => '타협 의지';

  @override
  String get metric_68_description =>
      '양 파트너가 중간 지점, 조정, 또는 공유된 해결책을 향해 이동하는지 평가합니다.';

  @override
  String get metric_69_name => '영향력 수용';

  @override
  String get metric_69_description =>
      '한 파트너가 상대방의 관점, 피드백, 또는 요청에 의해 영향을 받고 바꾸는지 측정합니다.';

  @override
  String get metric_70_name => '교착 갈등 신호';

  @override
  String get metric_70_description => '해결이나 이해 없이 반복되는 논쟁, 우선순위, 또는 가치를 감지합니다.';

  @override
  String get metric_71_name => '해결 가능한 문제 구성';

  @override
  String get metric_71_description =>
      '갈등이 해결 가능한 실질적인 문제로 틀지어지는지, 아니면 변할 수 없는 성격 결함으로 틀지어지는지 평가합니다.';

  @override
  String get metric_72_name => '공유된 의미 언급';

  @override
  String get metric_72_description =>
      '대화가 공유된 가치, 의식, 목표, 또는 관계 정체성을 반영하거나 강화하는지 확인합니다.';

  @override
  String get metric_73_name => '사랑 지도 인식';

  @override
  String get metric_73_description =>
      '파트너가 서로의 삶, 두려움, 희망, 스트레스 요인, 또는 꿈에 대한 최신 지식을 보여주는지 평가합니다.';

  @override
  String get metric_74_name => '애정과 존중';

  @override
  String get metric_74_description => '파트너 사이의 감사, 감탄, 또는 따뜻함의 표현을 추적합니다.';

  @override
  String get metric_75_name => '감정 노동 불균형';

  @override
  String get metric_75_description =>
      '한 파트너가 지속적으로 더 많은 감정 노동, 계획, 또는 관계 관리를 지고 있는지 측정합니다.';

  @override
  String get metric_76_name => '정신적 부담 무시';

  @override
  String get metric_76_description => '보이지 않는 가정 또는 관계 작업이 무시되거나 최소화되는지 감지합니다.';

  @override
  String get metric_77_name => '의도적 무능 신호';

  @override
  String get metric_77_description =>
      '한 파트너가 책임을 피하기 위해 무능을 꾸미거나 과장하는 경우를 표시합니다.';

  @override
  String get metric_78_name => '트라우마 촉발 민감성';

  @override
  String get metric_78_description =>
      '특정 어조, 주제, 또는 상호작용이 파트너에 대한 트라우마 반응을 촉발하는 것 같은 언어를 평가합니다.';

  @override
  String get metric_79_name => '과각성 신호';

  @override
  String get metric_79_description =>
      '위험, 거부, 또는 배신에 대한 지속적인 경계 또는 모니터링을 나타내는 언어를 표시합니다.';

  @override
  String get metric_80_name => '유기 두려움 언어';

  @override
  String get metric_80_description =>
      '관계에서 유기되거나 떠나지거나 대체될 것이라는 두려움을 나타내는 언어를 식별합니다.';

  @override
  String get metric_81_name => '안심 추구 패턴';

  @override
  String get metric_81_description =>
      '두려움이나 불안을 줄이기 위해 반복적으로 안도를 원하는 언어를 감지합니다.';

  @override
  String get metric_82_name => '추격자-거리두기 사이클';

  @override
  String get metric_82_description =>
      '한 파트너가 연결을 추구하는 동안 다른 파트너가 떠나는 패턴을 추적합니다.';

  @override
  String get metric_83_name => '원한 축적';

  @override
  String get metric_83_description => '과거 불만이나 오래된 언쟁이 현재 갈등으로 가져오는지 측정합니다.';

  @override
  String get metric_84_name => '점수 기록 행동';

  @override
  String get metric_84_description => '파트너가 과거 실수, 빚, 또는 불만의 목록을 유지하는지 감지합니다.';

  @override
  String get metric_85_name => '조건부 애정';

  @override
  String get metric_85_description =>
      '따뜻함, 애정, 또는 지원이 준수나 행동에 명시적으로 연결되는지 평가합니다.';

  @override
  String get metric_86_name => '러브 바밍 지표';

  @override
  String get metric_86_description =>
      '특히 사이클 초기나 갈등 후에 강렬하고, 반복적이고, 과도한 애정 또는 이상화를 표시합니다.';

  @override
  String get metric_87_name => '후버링 시도';

  @override
  String get metric_87_description =>
      '특히 철수나 이별 이후에 다른 사람을 되찾아 오거나 재참여시키려는 조작적 시도를 감지합니다.';

  @override
  String get metric_88_name => 'DARVO 패턴';

  @override
  String get metric_88_description =>
      '가해자가 피해자가 되거나 공격자를 역전시키는 방어, 공격, 피해자 및 가해자 역전을 추적합니다.';

  @override
  String get metric_89_name => '피해자 역할 패턴';

  @override
  String get metric_89_description =>
      '갈등에서 책임을 회피하거나 연민을 얻기 위해 피해자의 역할을 채택하는 것을 평가합니다.';

  @override
  String get metric_90_name => '도덕적 우월감 구성';

  @override
  String get metric_90_description =>
      '한 파트너가 자신을 더 윤리적이거나 더 올바르거나 결함이 없는 것으로 일관되게 묘사하는지 감지합니다.';

  @override
  String get metric_91_name => '인격 말살';

  @override
  String get metric_91_description =>
      '한 파트너의 정체성, 인격, 또는 가치를 체계적으로 공격하는 언어를 표시합니다.';

  @override
  String get metric_92_name => '삼각 관계 지표';

  @override
  String get metric_92_description =>
      '제3자가 질투, 경쟁, 또는 압력을 만들기 위해 관계에 끌려들거나 사용되는지 식별합니다.';

  @override
  String get metric_93_name => '사회적 비교 압력';

  @override
  String get metric_93_description =>
      '불충분함이나 부당함을 암시하기 위해 다른 관계, 사람, 또는 기준과 비교하는 것을 측정합니다.';

  @override
  String get metric_94_name => '자율성 지원';

  @override
  String get metric_94_description =>
      '파트너가 서로의 독립적인 생각, 결정, 정체성, 또는 관계를 장려하고 존중하는지 평가합니다.';

  @override
  String get metric_95_name => '동의와 선택 존중';

  @override
  String get metric_95_description =>
      '결정, 행동, 또는 경험에서 동의, 선택의 자유, 그리고 자발성이 존중되는지 확인합니다.';

  @override
  String get metric_96_name => '협력적 계획';

  @override
  String get metric_96_description => '미래 결정, 계획, 또는 목표가 공동으로 이루어지는지 측정합니다.';

  @override
  String get metric_97_name => '화해 후속 조치';

  @override
  String get metric_97_description => '사과나 약속이 측정 가능한 행동 변화로 뒤따르는지 추적합니다.';

  @override
  String get metric_98_name => '변화된 행동 증거';

  @override
  String get metric_98_description =>
      '이전에 확인된 문제 패턴이 이후의 상호작용에서 감소, 수정, 또는 인정되었다는 신호를 평가합니다.';

  @override
  String get metric_99_name => '감정 안전 언어';

  @override
  String get metric_99_description =>
      '파트너가 취약성, 감정, 또는 필요 사항을 두려움이나 보복 없이 표현할 수 있다고 느끼는지 반영하는 언어를 감지합니다.';

  @override
  String get metric_100_name => '관계 양가감정';

  @override
  String get metric_100_description =>
      '파트너가 관계에 머물거나 떠날지에 대해 모순된 감정이나 불확실성을 표현하는지 추적합니다.';

  @override
  String get unableToOpenConversations => '대화를 열 수 없습니다';

  @override
  String get unableToOpenConversationsBody =>
      '대화를 로드하는 중 오류가 발생했습니다. 다시 시도해 주세요.';

  @override
  String get unableToLoadConversationsBody =>
      '대화를 로드할 수 없습니다. 권한을 확인하고 다시 시도해 주세요.';

  @override
  String get errorLoadingConversationsBody => '대화 로드 오류. 다시 시도해 주세요.';

  @override
  String get smsPermissionRequired => 'SMS 권한 필요';

  @override
  String get smsPermissionRequiredBody =>
      'SMS 대화를 분석하려면 메시지를 읽을 권한이 필요합니다. 개인정보는 중요합니다 — 메시지는 로컬에서만 분석되며 서버에 저장되지 않습니다.';

  @override
  String get grantSmsPermission => 'SMS 권한 부여';

  @override
  String get noSmsConversationsFound => 'SMS 대화를 찾을 수 없습니다';

  @override
  String get noConversationsMatchSearch => '검색과 일치하는 대화가 없습니다';

  @override
  String get noSmsMessagesOnDevice => '이 기기에 SMS 메시지가 없습니다';

  @override
  String get tryDifferentSearch => '다른 검색어를 시도해 보세요';

  @override
  String get clearSearch => '검색 지우기';

  @override
  String selectedFile(String filename) {
    return '선택됨: $filename';
  }

  @override
  String get invalidFile => '잘못된 파일';

  @override
  String get fileImport => '파일 가져오기';

  @override
  String get fileImportNotImplemented => '이 파일 유형에 대한 파일 분석이 아직 구현되지 않았습니다.';

  @override
  String get errorPickingFile => '파일을 열 수 없습니다. 다시 시도해 주세요.';

  @override
  String get readyToCapture => '캡처 준비 완료';

  @override
  String get readyToCaptureBody =>
      '지금 메시지 앱으로 이동하여 스크린샷을 찍기 시작하세요.\n\n완료되면 이 앱으로 돌아와 \"완료 및 처리\"를 탭하세요.';

  @override
  String get noScreenshotsToProcess => '처리할 스크린샷이 없습니다.';

  @override
  String processingScreenshot(int current, int total) {
    return '스크린샷 $current / $total 처리 중...';
  }

  @override
  String get noMessagesFound => '메시지를 찾을 수 없습니다';

  @override
  String get noMessagesFoundBody =>
      '스크린샷에서 메시지를 추출할 수 없습니다.\n\n스크린샷이 대화를 명확하게 보여주는지 확인하세요.';

  @override
  String loadedMessages(int count) {
    return '스크린샷에서 $count개의 메시지를 로드했습니다';
  }

  @override
  String get processingError => '처리 오류';

  @override
  String get processingErrorBody => '스크린샷 처리 중 오류가 발생했습니다. 다시 시도해 주세요.';

  @override
  String metricListSavedAs(String name) {
    return '선택 항목이 \"$name\"로 저장되었습니다.';
  }

  @override
  String metricListLoadedName(String name) {
    return '선택 항목 \"$name\"이(가) 검색되어 적용되었습니다.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$name에서 $count개의 메시지를 로드했습니다';
  }

  @override
  String get loadButton => '로드';

  @override
  String get photoPermissionRequired => '스크린샷을 감지하려면 사진 라이브러리 권한이 필요합니다.';

  @override
  String get initializingConnection => '보안 연결 초기화 중...';

  @override
  String get configurationRequired => '구성 필요';

  @override
  String get goBack => '뒤로';

  @override
  String get enableDateRangeFiltering => '날짜 범위 필터링 사용';

  @override
  String get clearSelectedDateRange => '선택한 날짜 범위 지우기';

  @override
  String get largeThreadNoticeTitle => '사용자 알림';

  @override
  String get largeThreadNoticeBody =>
      '예외적으로 큰 텍스트 스레드를 처리할 때 이 앱의 일부 로딩 화면이 1분 반을 초과할 수 있습니다.\n\n앱이 멈춘 것이 아닙니다. 회전하는 상태 표시기가 보이면 앱이 여전히 로딩 중입니다.\n\n다른 앱과 비교하여 로딩 시간이 더 길 수 있으므로 이러한 경우에는 인내심을 가지십시오. 특히 50,000개의 메시지가 있는 스레드와 같은 대규모 데이터 세트의 경우.';

  @override
  String get neverShowThisAgain => '이 메시지를 다시 표시하지 않음';

  @override
  String loadingConversationWith(String name) {
    return '대화 로드 중\n$name와(과)…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. 메시지 앱을 열고 대화를 선택합니다\n2. 분석하려는 가장 오래된 메시지까지 스크롤합니다\n3. 아래에서 \"캡처 시작\"을 탭합니다\n4. 대화를 스크롤하면서 스크린샷을 찍습니다\n5. 완료되면 \"완료 및 처리\"를 탭합니다';

  @override
  String get howToCaptureIosMessages => 'iOS 메시지 캡처 방법';

  @override
  String get deepSeekApiKey => 'DeepSeek API 키';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'AI 분석을 활성화하려면 DeepSeek API 키를 입력하세요.';

  @override
  String get getYourApiKeyFrom => 'API 키 가져오기: https://platform.deepseek.com';

  @override
  String get apiKey => 'API 키';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely => 'API 키는 기기에 안전하게 저장되며 절대 공유되지 않습니다.';

  @override
  String get pleaseEnterApiKey => 'API 키를 입력하세요';

  @override
  String get apiKeySavedSuccessfully => 'API 키가 성공적으로 저장되었습니다!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      '인내심을 가지십시오, 더 긴 텍스트 스레드 데이터 세트는 로드하는 데 상당한 시간이 걸립니다';

  @override
  String get almostThereBigOne => '거의 완료, 와, 이건 컸던 것 같네요';

  @override
  String get pleaseBePatientLargeDatasets =>
      '인내심을 가지십시오, 큰 데이터 세트는 로드 시간이 1분 반 이상 걸릴 수 있습니다';

  @override
  String continuingToLoadMassiveThread(String name) {
    return '$name와(과) 함께 거대한 스레드를 계속 로드 중…';
  }

  @override
  String get noMessagesInDateRange => '선택한 날짜 범위에 메시지 없음';

  @override
  String get purchaseCustomMetricTileTitle => '커스텀 지표 구매';

  @override
  String get purchaseCustomMetricTileDescription =>
      '일회성 요금 \$4.99로 커스텀 지표 이름과 정의를 입력하여 다른 지표와 함께 영구 저장하고 향후 분석에 사용할 수 있습니다. 무제한 커스텀 지표를 구매하세요.';

  @override
  String get purchaseCustomMetricConfirmTitle => '커스텀 지표 구매';

  @override
  String get purchaseCustomMetricConfirmBody =>
      '커스텀 지표 슬롯 1개를 잠금 해제하기 위해 \$4.99(일회성)가 청구됩니다.\n\n커스텀 지표 이름과 정의는 저장 후 영원히 변경할 수 없으므로 신중하게 선택하세요.';

  @override
  String get purchaseCustomMetricConfirmButton => '구매 — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => '커스텀 지표 이름';

  @override
  String get purchaseCustomMetricEnterNamePrompt => '커스텀 지표의 이름을 입력하세요:';

  @override
  String get purchaseCustomMetricNameHint => '지표 이름';

  @override
  String get purchaseCustomMetricConfirmNameTitle => '지표 이름 확인';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => '입력한 내용:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  이것은 최종적이며 절대 변경할 수 없습니다.';

  @override
  String get purchaseCustomMetricReenterName => '다시 — 이름 재입력';

  @override
  String get purchaseCustomMetricSaveName => '확인 — 지표 이름 저장';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return '정의: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return '커스텀 지표 $name의 의미를 입력하세요';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      '이 지표가 무엇을 의미하는지, 어떤 행동을 찾는지, 관계 역학에 어떻게 적용되는지 설명하세요...';

  @override
  String get purchaseCustomMetricReenter => '다시 — 재입력';

  @override
  String get purchaseCustomMetricSaveMeaning => '확인 — 의미 저장';

  @override
  String get purchaseCustomMetricPreviewTitle => '커스텀 지표 미리보기';

  @override
  String get purchaseCustomMetricPreviewSubtitle => '타일은 이렇게 표시됩니다:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  마지막으로 마음을 바꿀 수 있는 기회입니다.\n한번 확정되면 이름과 정의는 영구적입니다.';

  @override
  String get purchaseCustomMetricCancelEverything => '모두 취소';

  @override
  String get purchaseCustomMetricCommit => '커스텀 지표 확정';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ 「$name」이(가) 지표에 추가되었습니다! 이제 분석에 선택할 수 있습니다.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => '구매 처리 중...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      '스토어 확인을 기다리는 중입니다.\n앱을 닫지 마세요.';

  @override
  String get next => '다음';

  @override
  String get cancelNotReady => '취소 — 준비되지 않았습니다';

  @override
  String get packGoodLabel => '착한';

  @override
  String get packBadLabel => '나쁜';

  @override
  String get packUglyLabel => '못생긴';

  @override
  String get metric_good_1_name => '적극적 경청 신호';

  @override
  String get metric_good_1_description =>
      '텍스트에서 상대방의 관점을 다시 말하기, 명확히 묻기, 이해했음을 보여주는 표현을 감지합니다.';

  @override
  String get metric_good_2_name => '감사 표현';

  @override
  String get metric_good_2_description =>
      '구체적인 감사, 노력 인정, 상대방의 긍정적인 특성이나 행동에 대한 인정을 식별합니다.';

  @override
  String get metric_good_3_name => '확언 언어';

  @override
  String get metric_good_3_description =>
      '파트너의 감정, 경험, 가치, 또는 필요에 대한 권리를 인정하는 진술을 찾습니다.';

  @override
  String get metric_good_4_name => '협력적 어조';

  @override
  String get metric_good_4_description =>
      '\"우리\"라는 표현, 공동 문제 해결 언어, 문제를 함께 해결할 공동 과제로 구성하는 방식을 측정합니다.';

  @override
  String get metric_good_5_name => '파트너에 대한 호기심';

  @override
  String get metric_good_5_description =>
      '파트너의 생각, 감정, 하루, 선호도 또는 내적 경험에 대해 질문하는 것을 추적합니다.';

  @override
  String get metric_good_6_name => '취약함 표현';

  @override
  String get metric_good_6_description =>
      '방어나 비난 없이 두려움, 불안, 필요, 감정적 진실을 공유하는 것을 식별합니다.';

  @override
  String get metric_good_7_name => '연결로서의 유머';

  @override
  String get metric_good_7_description =>
      '조롱이나 비하가 아닌, 파트너를 하나로 묶는 장난기 가득한 공유 웃음을 감지합니다.';

  @override
  String get metric_good_8_name => '안심 제공';

  @override
  String get metric_good_8_description =>
      '불안한 파트너에게 위안, 안정감 또는 자신감을 제공하는 적극적인 진술을 찾습니다.';

  @override
  String get metric_good_9_name => '칭찬 빈도';

  @override
  String get metric_good_9_description =>
      '외모, 성격, 능력 또는 긍정적인 행동에 대한 진정하고 구체적인 칭찬을 측정합니다.';

  @override
  String get metric_good_10_name => '정서적 가용성';

  @override
  String get metric_good_10_description =>
      '상대방의 정서적 필요에 대한 반응성, 고통 중 함께함, 참여 의지를 평가합니다.';

  @override
  String get metric_good_11_name => '감사 습관';

  @override
  String get metric_good_11_description =>
      '작은 일, 노력, 함께함, 지지에 대한 정기적인 감사 표현을 식별합니다.';

  @override
  String get metric_good_12_name => '지지적 언어';

  @override
  String get metric_good_12_description =>
      '도움, 격려, 상대방 능력에 대한 믿음, 또는 지지를 표현하는 진술을 추적합니다.';

  @override
  String get metric_good_13_name => '온화한 의견 차이';

  @override
  String get metric_good_13_description =>
      '존중, 호기심, 관계를 유지하며 다른 의견을 표현하는 능력을 측정합니다.';

  @override
  String get metric_good_14_name => '진정한 사과';

  @override
  String get metric_good_14_description =>
      '변명 없는 진정한 후회, 영향 이해, 변화에 대한 헌신을 감지합니다.';

  @override
  String get metric_good_15_name => '용서 수용';

  @override
  String get metric_good_15_description =>
      '과거의 상처를 놓아주고, 앞으로 나아가며, 회복 후 신뢰를 재건하려는 의지를 찾습니다.';

  @override
  String get metric_good_16_name => '질적 시간 제안';

  @override
  String get metric_good_16_description =>
      '함께 시간을 보내거나 활동을 계획하거나 연결의 순간을 만들겠다는 제안을 식별합니다.';

  @override
  String get metric_good_17_name => '신체적 애정 신호';

  @override
  String get metric_good_17_description =>
      '관심과 친밀감의 표현으로서의 접촉, 포옹, 키스, 신체적 근접성을 언급하는 것을 추적합니다.';

  @override
  String get metric_good_18_name => '공유된 기쁨 인식';

  @override
  String get metric_good_18_description =>
      '상대방의 성공, 성취, 행복, 좋은 소식을 진정한 열정으로 축하하는 것을 측정합니다.';

  @override
  String get metric_good_19_name => '갈등 해결 노력';

  @override
  String get metric_good_19_description =>
      '의견 차이 후 해결책을 찾거나, 타협하거나, 평화를 회복하려는 시도를 식별합니다.';

  @override
  String get metric_good_20_name => '인내심 표현';

  @override
  String get metric_good_20_description =>
      '상대방의 속도, 어려움, 학습 곡선 또는 정서적 처리 필요에 대한 인내심을 감지합니다.';

  @override
  String get metric_good_21_name => '관점 수용 언어';

  @override
  String get metric_good_21_description =>
      '상대방의 관점, 상황 또는 정서적 현실에 대한 이해를 보여주는 진술을 찾습니다.';

  @override
  String get metric_good_22_name => '신뢰성 신호';

  @override
  String get metric_good_22_description => '약속 이행, 일관된 모습, 신뢰할 수 있는 행동을 추적합니다.';

  @override
  String get metric_good_23_name => '차이 존중';

  @override
  String get metric_good_23_description =>
      '상대방의 독특한 특성, 선호도, 의견 및 존재 방식을 수용하는 정도를 측정합니다.';

  @override
  String get metric_good_24_name => '피드백 수용성';

  @override
  String get metric_good_24_description =>
      '상대방의 우려에 대한 수용성, 비판을 들으려는 의지, 개선하려는 욕구를 식별합니다.';

  @override
  String get metric_good_25_name => '감정 인정';

  @override
  String get metric_good_25_description =>
      '상대방의 감정이 실제이며, 이해할 수 있고, 주목할 가치가 있음을 인정하는 것을 감지합니다.';

  @override
  String get metric_good_26_name => '격려 언어';

  @override
  String get metric_good_26_description =>
      '자신감을 고취시키고, 행동을 동기부여하며, 상대방의 목표를 지지하는 진술을 찾습니다.';

  @override
  String get metric_good_27_name => '친밀한 자기공개';

  @override
  String get metric_good_27_description =>
      '정서적 연결을 깊게 하는 개인적인 생각, 꿈, 두려움 또는 비밀을 공유하는 것을 식별합니다.';

  @override
  String get metric_good_28_name => '조율 신호';

  @override
  String get metric_good_28_description =>
      '상대방의 기분, 필요 또는 고통을 명시적으로 말하지 않아도 알아차리는 것을 측정합니다.';

  @override
  String get metric_good_29_name => '긍정적 재구성';

  @override
  String get metric_good_29_description =>
      '어려운 상황에서 긍정적인 면, 성장 기회 또는 건설적인 관점을 찾아내는 것을 감지합니다.';

  @override
  String get metric_good_30_name => '헌신 언어';

  @override
  String get metric_good_30_description =>
      '헌신, 장기적 사고, 관계의 미래에 대한 투자를 나타내는 표현을 추적합니다.';

  @override
  String get metric_good_31_name => '유연성 발휘';

  @override
  String get metric_good_31_description =>
      '계획을 조정하고, 기대치를 수정하거나, 상대방과 타협할 의지를 식별합니다.';

  @override
  String get metric_good_32_name => '보호 언어';

  @override
  String get metric_good_32_description => '상대방의 안전, 복지 및 관심사가 중요하다는 진술을 찾습니다.';

  @override
  String get metric_good_33_name => '이정표 축하';

  @override
  String get metric_good_33_description =>
      '기념일, 성취 또는 함께한 의미 있는 순간을 인정하는 것을 측정합니다.';

  @override
  String get metric_good_34_name => '건설적 피드백';

  @override
  String get metric_good_34_description =>
      '친절하고 구체적이며 성장 중심의 개선 제안을 제공하는 것을 감지합니다.';

  @override
  String get metric_good_35_name => '어려움 속 함께하기';

  @override
  String get metric_good_35_description =>
      '상대방이 어려움을 겪거나, 슬퍼하거나, 도전에 직면했을 때 함께하는 것을 식별합니다.';

  @override
  String get metric_good_36_name => '존경 표현';

  @override
  String get metric_good_36_description =>
      '상대방의 성격, 강점, 지능 또는 회복력에 대한 진정한 존중을 추적합니다.';

  @override
  String get metric_good_37_name => '장난기 지표';

  @override
  String get metric_good_37_description =>
      '가벼운 놀림, 내부 농담, 또는 유대감을 강화하는 재미있는 상호작용을 찾습니다.';

  @override
  String get metric_good_38_name => '공감적 반영';

  @override
  String get metric_good_38_description =>
      '파트너의 감정을 반영하여 이해와 인정을 보여주는 것을 측정합니다.';

  @override
  String get metric_good_39_name => '수용 언어';

  @override
  String get metric_good_39_description =>
      '파트너의 결점을 포함한 있는 그대로의 모습을 받아들이고 변화를 요구하지 않는 것을 감지합니다.';

  @override
  String get metric_good_40_name => '지지적 존재감';

  @override
  String get metric_good_40_description =>
      '고치려 하지 않고 함께 있어주며, 경청과 동행을 통해 위로를 제공하는 것을 식별합니다.';

  @override
  String get metric_good_41_name => '진정한 관심';

  @override
  String get metric_good_41_description =>
      '후속 질문을 하고 파트너의 삶과 관심사에 대한 세부 사항을 기억하는 것을 추적합니다.';

  @override
  String get metric_good_42_name => '상호 노력';

  @override
  String get metric_good_42_description =>
      '두 파트너가 정서적 노력, 계획, 관계 유지에 동등하게 기여하는 것을 측정합니다.';

  @override
  String get metric_good_43_name => '용서 언어';

  @override
  String get metric_good_43_description =>
      '원한을 풀고, 두 번째 기회를 주며, 상처를 극복하기로 선택하는 것을 찾습니다.';

  @override
  String get metric_good_44_name => '상호 존중 신호';

  @override
  String get metric_good_44_description =>
      '파트너를 동등하게 대하고, 그들의 의견을 존중하며, 그들의 기여를 가치 있게 여기는 것을 감지합니다.';

  @override
  String get metric_good_45_name => '정서적 정직';

  @override
  String get metric_good_45_description =>
      '조작, 과장, 또는 전략적 은폐 없이 감정을 진실되게 표현하는 것을 식별합니다.';

  @override
  String get metric_good_46_name => '지지적 경청';

  @override
  String get metric_good_46_description =>
      '상대방이 방해받거나 판단받거나 즉시 문제 해결을 시도하지 않고 완전히 표현할 수 있도록 허용하는 것을 측정합니다.';

  @override
  String get metric_good_47_name => '애정 어린 별명';

  @override
  String get metric_good_47_description => '따뜻함과 친밀감을 전하는 애정 어린 호칭 사용을 추적합니다.';

  @override
  String get metric_good_48_name => '함께하는 웃음';

  @override
  String get metric_good_48_description =>
      '긍정적인 유대감을 형성하는 상호 유머와 기쁨의 순간을 식별합니다.';

  @override
  String get metric_good_49_name => '세심한 행동';

  @override
  String get metric_good_49_description =>
      '작은 친절, 선호도 기억, 상대방을 기쁘게 하는 행동을 찾습니다.';

  @override
  String get metric_good_50_name => '파트너에 대한 신뢰';

  @override
  String get metric_good_50_description =>
      '상대방의 능력, 잠재력, 도전을 처리할 역량에 대한 믿음을 감지합니다.';

  @override
  String get metric_good_51_name => '건강한 상호의존';

  @override
  String get metric_good_51_description =>
      '함께함과 독립성 사이의 균형, 서로의 자율성을 지지하는 것을 측정합니다.';

  @override
  String get metric_good_52_name => '갈등 완화';

  @override
  String get metric_good_52_description =>
      '격렬한 대화를 진정시키기 위한 부드러운 언어, 휴식, 해결책 제시를 식별합니다.';

  @override
  String get metric_good_53_name => '진정한 사과';

  @override
  String get metric_good_53_description =>
      '축소, 방어, 비난 전가 없이 잘못을 완전히 인정하는 것을 추적합니다.';

  @override
  String get metric_good_54_name => '정서적 지원 제공';

  @override
  String get metric_good_54_description =>
      '상대방의 안부를 묻고 도움을 제공하는 적극적인 확인을 찾습니다.';

  @override
  String get metric_good_55_name => '존중하는 경계';

  @override
  String get metric_good_55_description =>
      '파트너가 명확히 한 한계를 존중하면서 자신의 건강한 경계를 유지하는 것을 측정합니다.';

  @override
  String get metric_good_56_name => '긍정적 기대';

  @override
  String get metric_good_56_description =>
      '함께하는 미래에 대한 기대, 계획 수립, 공유 경험을 고대하는 것을 감지합니다.';

  @override
  String get metric_good_57_name => '세심함 신호';

  @override
  String get metric_good_57_description =>
      '파트너가 중요하다는 것을 보여주는 중요한 날짜, 선호도, 세부 사항을 기억하는 것을 식별합니다.';

  @override
  String get metric_good_58_name => '성장 격려';

  @override
  String get metric_good_58_description =>
      '파트너의 개인적 발전, 학습, 목표 추구를 지원하는 것을 추적합니다.';

  @override
  String get metric_good_59_name => '부드러운 언어';

  @override
  String get metric_good_59_description =>
      '부드럽고 다정한 단어 선택을 통해 온화함과 정서적 따뜻함을 전달하는 것을 찾습니다.';

  @override
  String get metric_good_60_name => '상호 책임감';

  @override
  String get metric_good_60_description =>
      '두 파트너가 자신의 행동과 그 영향에 대해 책임을 지는 것을 측정합니다.';

  @override
  String get metric_good_61_name => '파트너 축하';

  @override
  String get metric_good_61_description =>
      '공개적 또는 개인적으로 파트너에 대한 자부심, 기쁨, 존경을 표현하는 것을 감지합니다.';

  @override
  String get metric_good_62_name => '일관된 애정';

  @override
  String get metric_good_62_description =>
      '성과나 순응에 따라 변동하지 않는 일관된 사랑의 표현을 식별합니다.';

  @override
  String get metric_good_63_name => '정서적 조율';

  @override
  String get metric_good_63_description =>
      '파트너의 감정 상태에서 미묘한 변화를 감지하고 반응하는 것을 추적합니다.';

  @override
  String get metric_good_64_name => '협력적 의사 결정';

  @override
  String get metric_good_64_description =>
      '함께 선택지를 논의하고, 두 파트너의 필요를 고려한 결정을 내리는 것을 측정합니다.';

  @override
  String get metric_good_65_name => '조건 없는 안심';

  @override
  String get metric_good_65_description =>
      '파트너가 자격을 증명할 필요 없이 위로와 안정감을 제공하는 행동을 찾습니다.';

  @override
  String get metric_good_66_name => '진정한 연결';

  @override
  String get metric_good_66_description =>
      '상호작용에서 진정한 존재감, 진솔한 나눔, 가식 없는 모습을 감지합니다.';

  @override
  String get metric_good_67_name => '상호 격려';

  @override
  String get metric_good_67_description =>
      '두 파트너가 서로를 응원하고 결과뿐 아니라 노력도 축하하는 모습을 식별합니다.';

  @override
  String get metric_good_68_name => '존중하는 질문';

  @override
  String get metric_good_68_description =>
      '심문이 아닌 진정한 호기심으로 파트너의 관점을 묻는 행동을 추적합니다.';

  @override
  String get metric_good_69_name => '사랑의 일관성';

  @override
  String get metric_good_69_description =>
      '좋은 때와 어려운 때 모두 동일한 태도를 보이며, 애정에 있어 신뢰할 수 있는 모습을 측정합니다.';

  @override
  String get metric_good_70_name => '감정적 상호성';

  @override
  String get metric_good_70_description =>
      '두 파트너가 감정, 필요, 취약함을 균형 있게 공유하는 모습을 찾습니다.';

  @override
  String get metric_good_71_name => '기쁨의 존재';

  @override
  String get metric_good_71_description =>
      '파트너와 함께하는 시간에 대한 진정한 기쁨과 열정을 감지합니다.';

  @override
  String get metric_good_72_name => '건설적 대화';

  @override
  String get metric_good_72_description =>
      '이기거나 옳음을 증명하기보다 이해를 향해 나아가는 대화를 식별합니다.';

  @override
  String get metric_good_73_name => '보호적 지지';

  @override
  String get metric_good_73_description =>
      '파트너를 지지하고, 보호하며, 그들의 안녕을 최우선으로 하는 행동을 추적합니다.';

  @override
  String get metric_good_74_name => '마음챙김 의사소통';

  @override
  String get metric_good_74_description =>
      '말하기 전에 영향을 고려하고, 의도적인 메시지를 전달하는 신중한 단어 선택을 측정합니다.';

  @override
  String get metric_good_75_name => '관계 투자';

  @override
  String get metric_good_75_description => '관계를 키우는 데 투자된 시간, 에너지 및 자원을 살펴봅니다.';

  @override
  String get metric_good_76_name => '안전 기반 언어';

  @override
  String get metric_good_76_description =>
      '안정감, 안전함, 그리고 파트너가 탐험할 수 있는 기반을 제공하는 것을 감지합니다.';

  @override
  String get metric_good_77_name => '상호 존경';

  @override
  String get metric_good_77_description =>
      '두 파트너가 서로의 자질에 대해 존중과 감사를 표현하는 것을 식별합니다.';

  @override
  String get metric_good_78_name => '다정한 순간';

  @override
  String get metric_good_78_description =>
      '친밀하고 조용한 연결과 가까움의 순간을 만들거나 인식하는 것을 추적합니다.';

  @override
  String get metric_good_79_name => '진정한 호기심';

  @override
  String get metric_good_79_description =>
      '파트너의 생각, 감정 및 경험을 이해하려는 진정한 관심을 살펴봅니다.';

  @override
  String get metric_good_80_name => '사랑하는 수용';

  @override
  String get metric_good_80_description =>
      '파트너의 전체적인 모습(결점과 과거 포함)을 받아들이는 것을 감지합니다.';

  @override
  String get metric_good_81_name => '상호 성장 지원';

  @override
  String get metric_good_81_description =>
      '두 파트너가 서로의 발전을 격려하고 진전을 축하하는 것을 식별합니다.';

  @override
  String get metric_good_82_name => '따뜻한 어조 지표';

  @override
  String get metric_good_82_description =>
      '애정 어린 언어, 다정한 표현, 부드러운 의사소통 방식의 사용을 추적합니다.';

  @override
  String get metric_good_83_name => '반응적 참여';

  @override
  String get metric_good_83_description =>
      '파트너의 메시지와 정서적 신호에 대한 신속하고 적극적인 반응을 측정합니다.';

  @override
  String get metric_good_84_name => '공유 가치 일치';

  @override
  String get metric_good_84_description =>
      '커플을 하나로 묶는 공통된 신념, 목표 또는 삶의 철학에 대한 언급을 찾습니다.';

  @override
  String get metric_good_85_name => '무조건적 지지';

  @override
  String get metric_good_85_description =>
      '조건 없이 어려움 속에서도 파트너를 지지하는 태도를 감지합니다.';

  @override
  String get metric_good_86_name => '친밀한 취약성';

  @override
  String get metric_good_86_description =>
      '정서적 유대를 깊게 하는 깊은 두려움, 꿈, 불안감을 공유하는 것을 식별합니다.';

  @override
  String get metric_good_87_name => '상호 존중 언어';

  @override
  String get metric_good_87_description =>
      '의사소통에서 서로의 관점, 선택, 자율성을 존중하는 것을 추적합니다.';

  @override
  String get metric_good_88_name => '긍정적 프레이밍';

  @override
  String get metric_good_88_description =>
      '상황과 파트너의 긍정적인 면을 보고 강점에 초점을 맞추는 것을 측정합니다.';

  @override
  String get metric_good_89_name => '협력적 문제 해결';

  @override
  String get metric_good_89_description =>
      '두 파트너에게 동등하게 이익이 되는 해결책을 함께 찾는 것을 찾습니다.';

  @override
  String get metric_good_90_name => '정서적 확인';

  @override
  String get metric_good_90_description =>
      '파트너의 감정이 타당하고 수용 가능하다는 것을 확인하는 것을 감지합니다.';

  @override
  String get metric_good_91_name => '일관된 친절';

  @override
  String get metric_good_91_description =>
      '상대방이 생각나고 소중히 여겨지고 있음을 보여주는 작은 배려의 규칙적인 행동을 식별합니다.';

  @override
  String get metric_good_92_name => '상호 축하';

  @override
  String get metric_good_92_description =>
      '두 파트너가 서로의 성공과 기쁨에 대해 진심으로 기뻐하는 정도를 추적합니다.';

  @override
  String get metric_good_93_name => '안정 애착 언어';

  @override
  String get metric_good_93_description =>
      '신뢰, 친밀감에 대한 편안함, 관계에 대한 확신을 표현하는 것을 측정합니다.';

  @override
  String get metric_good_94_name => '사려 깊은 고려';

  @override
  String get metric_good_94_description =>
      '파트너의 필요와 감정을 고려하여 결정을 내리는 것을 살펴봅니다.';

  @override
  String get metric_good_95_name => '사랑 가득한 존재감';

  @override
  String get metric_good_95_description =>
      '완전히 현재에 집중하고 참여하여 상대방이 가장 중요하다는 것을 보여주는 것을 감지합니다.';

  @override
  String get metric_good_96_name => '진정한 관심 언어';

  @override
  String get metric_good_96_description =>
      '파트너의 웰빙에 대한 진정한 관심, 돌봄, 투자를 표현하는 것을 추적합니다.';

  @override
  String get metric_good_97_name => '관계 헌신';

  @override
  String get metric_good_97_description =>
      '파트너십에 대한 헌신과 어려움을 극복하려는 의지를 표현하는 것을 측정합니다.';

  @override
  String get metric_good_98_name => '진정한 사랑 표현';

  @override
  String get metric_good_98_description =>
      '진실하고 무조건적으로 느껴지는 진정한 일관된 사랑의 표현을 살펴봅니다.';

  @override
  String get metric_good_99_name => '상호 목표 설정';

  @override
  String get metric_good_99_description =>
      '파트너가 함께 미래를 위한 공동의 꿈, 우선순위, 방향을 협력적으로 정의하는 것을 식별합니다.';

  @override
  String get metric_good_100_name => '관계 회복 시도 인식';

  @override
  String get metric_good_100_description =>
      '상대방의 갈등 완화 및 관계 회복 시도를 인지하고 긍정적으로 반응하는 것을 감지합니다.';

  @override
  String get metric_bad_1_name => '수동적 공격성';

  @override
  String get metric_bad_1_description =>
      '직접적인 표현 대신 미루기, 건망증, 냉소 또는 미묘한 방해를 통해 간접적인 적대감을 감지합니다.';

  @override
  String get metric_bad_2_name => '죄책감 무기화';

  @override
  String get metric_bad_2_description =>
      '결정을 조종하거나 경계 설정을 막기 위해 죄책감, 수치심 또는 의무감을 이용하는 언어를 식별합니다.';

  @override
  String get metric_bad_3_name => '정서적 협박';

  @override
  String get metric_bad_3_description =>
      '행동 통제나 논의 차단을 위해 자해, 버림, 사랑 철회를 위협하는 행동을 감지합니다.';

  @override
  String get metric_bad_4_name => '만성적 불평';

  @override
  String get metric_bad_4_description =>
      '해결책이나 협력적 변화를 모색하지 않고 지속적인 부정성, 반추 또는 불평을 추적합니다.';

  @override
  String get metric_bad_5_name => '비교 수치심';

  @override
  String get metric_bad_5_description =>
      '전 애인, 친구, 가족과의 불리한 비교를 통해 부끄럽게 하거나 행동 변화를 강요하는 것을 식별합니다.';

  @override
  String get metric_bad_6_name => '조건부 경청';

  @override
  String get metric_bad_6_description =>
      '진정한 이해보다는 듣는 사람에게 이익이 되거나 그들의 의도에 부합할 때만 듣는 행위를 감지합니다.';

  @override
  String get metric_bad_7_name => '선택적 기억';

  @override
  String get metric_bad_7_description =>
      '약속, 합의 또는 과거의 해로운 행동을 편리하게 잊어 책임을 회피하는 것을 추적합니다.';

  @override
  String get metric_bad_8_name => '위기를 통한 관심 추구';

  @override
  String get metric_bad_8_description =>
      '관심이나 동정을 얻기 위한 극적인 확대, 위기 조성 또는 과장을 식별합니다.';

  @override
  String get metric_bad_9_name => '경계 테스트';

  @override
  String get metric_bad_9_description =>
      '설정된 경계가 실제로 시행될지 확인하기 위해 반복적으로 탐색하거나 밀어붙이는 행동을 감지합니다.';

  @override
  String get metric_bad_10_name => '정보 은폐';

  @override
  String get metric_bad_10_description =>
      '통제력을 유지하기 위해 관련 사실, 맥락 또는 투명성을 의도적으로 생략하는 행동을 식별합니다.';

  @override
  String get metric_bad_11_name => '과도한 분노';

  @override
  String get metric_bad_11_description => '유발 사건에 비해 훨씬 과도한 분노 반응을 추적합니다.';

  @override
  String get metric_bad_12_name => '확신 중독';

  @override
  String get metric_bad_12_description =>
      '지속적인 인정 욕구, 헌신에 대한 반복적인 질문 또는 끝없는 사랑 증명 요구를 식별합니다.';

  @override
  String get metric_bad_13_name => '대화 회피';

  @override
  String get metric_bad_13_description =>
      '우려 사항에 대한 논의 거부, 회피적 표현 또는 중요한 대화 중단을 감지합니다.';

  @override
  String get metric_bad_14_name => '모순 패턴';

  @override
  String get metric_bad_14_description =>
      '혼란이나 불안정을 초래하는 모순된 진술, 약속 또는 입장을 식별합니다.';

  @override
  String get metric_bad_15_name => '낙인을 통한 무시';

  @override
  String get metric_bad_15_description =>
      '우려 사항을 무효화하기 위해 \'미쳤다\', \'극적이다\', \'편집증적이다\' 또는 \'과민 반응\'이라고 낙인찍는 행동을 식별합니다.';

  @override
  String get metric_bad_16_name => '선택적 공감';

  @override
  String get metric_bad_16_description =>
      '편리할 때나 화자의 이익에 부합할 때만 제공되는 공감을 감지합니다.';

  @override
  String get metric_bad_17_name => '거래적 프레이밍';

  @override
  String get metric_bad_17_description =>
      '\'네가 나에게 빚졌어\', \'내가 한 모든 일을 생각해봐\'와 같은 표현이나 관계 행위를 빚으로 보는 관점을 식별합니다.';

  @override
  String get metric_bad_18_name => '불만 재활용';

  @override
  String get metric_bad_18_description =>
      '오래된 불만을 반복적으로 꺼내거나 과거의 상처를 현재 갈등의 무기로 사용하는 행동을 추적합니다.';

  @override
  String get metric_bad_19_name => '요구적 언어';

  @override
  String get metric_bad_19_description =>
      '명령, 지시 또는 최후통첩을 요청이나 협력적 문제 해결보다 우선시하는 표현을 식별합니다.';

  @override
  String get metric_bad_20_name => '감정적 무관심';

  @override
  String get metric_bad_20_description =>
      '감정적 교류, 감정 공유 또는 위로 제공을 지속적으로 거부하는 패턴을 감지합니다.';

  @override
  String get metric_bad_21_name => '적대적 해석';

  @override
  String get metric_bad_21_description =>
      '중립적인 발언을 공격으로 받아들이거나 모호한 메시지를 적대적으로 해석하는 경향을 식별합니다.';

  @override
  String get metric_bad_22_name => '특권 의식 프레이밍';

  @override
  String get metric_bad_22_description =>
      '화자가 특별 대우, 예외 또는 우선권을 받을 자격이 있다는 언어를 식별합니다.';

  @override
  String get metric_bad_23_name => '도움으로 위장한 비판';

  @override
  String get metric_bad_23_description =>
      '\"도우려는 것뿐이야\" 또는 \"네 자신을 위해서야\"라는 표현으로 포장된 비판을 감지합니다.';

  @override
  String get metric_bad_24_name => '방치 패턴';

  @override
  String get metric_bad_24_description =>
      '정서적, 신체적 또는 관계적 필요를 지속적으로 충족시키지 못하는 패턴을 식별합니다.';

  @override
  String get metric_bad_25_name => '갈등 반추';

  @override
  String get metric_bad_25_description =>
      '해결이나 종결 없이 갈등을 강박적으로 되풀이하는 행동을 추적합니다.';

  @override
  String get metric_bad_26_name => '민감성 무시';

  @override
  String get metric_bad_26_description =>
      '\"너무 예민해\" 또는 \"과민 반응이야\"와 같은 표현으로 감정을 무시하는 언어를 식별합니다.';

  @override
  String get metric_bad_27_name => '경쟁적 프레이밍';

  @override
  String get metric_bad_27_description =>
      '관계를 한쪽이 이기거나 지배해야 하는 경쟁으로 프레이밍하는 언어를 감지합니다.';

  @override
  String get metric_bad_28_name => '이중 잣대';

  @override
  String get metric_bad_28_description =>
      '자신과 파트너에게 다른 기준을 적용하거나 기대치를 임의로 변경하는 행위를 식별합니다.';

  @override
  String get metric_bad_29_name => '애정을 통한 처벌';

  @override
  String get metric_bad_29_description =>
      '인지된 잘못에 대한 보복으로 애정, 관심 또는 의사소통을 철회하는 행위를 감지합니다.';

  @override
  String get metric_bad_30_name => '비난 돌리기';

  @override
  String get metric_bad_30_description =>
      '책임 회피를 위해 파트너, 상황 및 외부 요인 사이에서 비난을 돌리는 행위를 추적합니다.';

  @override
  String get metric_bad_31_name => '수사적 조롱';

  @override
  String get metric_bad_31_description =>
      '이해를 위한 것이 아닌 조롱을 위해 사용되는 수사적이거나 비꼬는 질문을 감지합니다.';

  @override
  String get metric_bad_32_name => '희생 상기시키기';

  @override
  String get metric_bad_32_description =>
      '빚과 순응을 만들기 위해 희생, 호의 또는 지원을 상기시키는 행위를 식별합니다.';

  @override
  String get metric_bad_33_name => '의도적 확대';

  @override
  String get metric_bad_33_description =>
      '파트너가 이성적으로 대응할 능력을 압도하기 위해 의도적으로 강도를 높이는 행위를 감지합니다.';

  @override
  String get metric_bad_34_name => '전략적 취약성';

  @override
  String get metric_bad_34_description => '조종이나 통제 목적으로만 감정을 공유하는 행위를 감지합니다.';

  @override
  String get metric_bad_35_name => '반격을 통한 전환';

  @override
  String get metric_bad_35_description =>
      '관련 없는 문제나 반대 비난을 제기하여 파트너의 우려에서 초점을 돌리는 행위를 식별합니다.';

  @override
  String get metric_bad_36_name => '우월감 언어';

  @override
  String get metric_bad_36_description =>
      '우월감 언어, 거만함 또는 파트너를 자신보다 아래로 보는 태도를 감지합니다.';

  @override
  String get metric_bad_37_name => '갈등 회피 패턴';

  @override
  String get metric_bad_37_description =>
      '갈등 상황에서 대화를 중단하거나, 참여를 거부하거나, 거리를 두는 패턴을 감지합니다.';

  @override
  String get metric_bad_38_name => '부정적 편향';

  @override
  String get metric_bad_38_description =>
      '중립적이거나 긍정적인 행동을 지속적으로 부정적이거나 의심스러운 것으로 해석하는 경향을 추적합니다.';

  @override
  String get metric_bad_39_name => '주체성 부정';

  @override
  String get metric_bad_39_description =>
      '\'~해야 해\', \'당신이 나를 ~하게 만들어\' 등 화자의 개인적 주체성을 제거하는 언어를 식별합니다.';

  @override
  String get metric_bad_40_name => '통제로서의 침묵';

  @override
  String get metric_bad_40_description =>
      '처벌이나 통제 수단으로 침묵이나 무응답을 사용하는 행동을 감지합니다.';

  @override
  String get metric_bad_41_name => '정보 위선';

  @override
  String get metric_bad_41_description =>
      '파트너에게는 투명성을 요구하면서 자신은 정보 공유를 거부하는 행동을 감지합니다.';

  @override
  String get metric_bad_42_name => '원치 않는 가혹한 피드백';

  @override
  String get metric_bad_42_description =>
      '동의 없이 \'건설적\' 또는 \'도움\'이라고 포장된 가혹한 피드백을 식별합니다.';

  @override
  String get metric_bad_43_name => '조건부 돌봄';

  @override
  String get metric_bad_43_description => '파트너가 화자의 기대에 따를 때만 제공되는 지원을 감지합니다.';

  @override
  String get metric_bad_44_name => '영향 부정';

  @override
  String get metric_bad_44_description =>
      '해를 끼친 후 \'그런 뜻이 아니었어\' 또는 \'너무 확대 해석하는 거야\'라는 반응을 감지합니다.';

  @override
  String get metric_bad_45_name => '빚 심리';

  @override
  String get metric_bad_45_description =>
      '과거의 도움을 빌미로 빚을 만들어 현재 행동을 통제하려는 행동을 추적합니다.';

  @override
  String get metric_bad_46_name => '책임 회피';

  @override
  String get metric_bad_46_description => '행동의 영향에 대한 책임을 지지 않는 일관된 패턴을 나타냅니다.';

  @override
  String get metric_bad_47_name => '필요 무시';

  @override
  String get metric_bad_47_description =>
      '파트너의 필요를 불편하거나, 비합리적이거나, 중요하지 않은 것으로 취급하는 것을 식별합니다.';

  @override
  String get metric_bad_48_name => '감정적 조종';

  @override
  String get metric_bad_48_description =>
      '결과를 통제하거나 책임을 회피하기 위해 감정을 전략적으로 사용하는 것을 나타냅니다.';

  @override
  String get metric_bad_49_name => '친밀감 회피';

  @override
  String get metric_bad_49_description =>
      '설명 없이 정서적 또는 신체적 친밀감에서 일관되게 물러서는 것을 추적합니다.';

  @override
  String get metric_bad_50_name => '은폐된 비판';

  @override
  String get metric_bad_50_description => '농담, 관찰 또는 일상적인 코멘트로 위장된 비판을 식별합니다.';

  @override
  String get metric_bad_51_name => '우려 최소화';

  @override
  String get metric_bad_51_description =>
      '파트너의 우려를 사소하거나 과장된 것으로 축소하는 것을 나타냅니다.';

  @override
  String get metric_bad_52_name => '죄책감 강요';

  @override
  String get metric_bad_52_description =>
      '파트너가 기대에 따르도록 하기 위해 죄책감이나 수치심을 사용하는 것을 식별합니다.';

  @override
  String get metric_bad_53_name => '사과 저항';

  @override
  String get metric_bad_53_description =>
      '사과에 저항하거나, 피해를 설명하거나, 영향을 인정하지 않는 것을 추적합니다.';

  @override
  String get metric_bad_54_name => '관점 거부';

  @override
  String get metric_bad_54_description =>
      '파트너의 관점이나 경험을 고려하거나 인정하는 것을 거부하는 것을 나타냅니다.';

  @override
  String get metric_bad_55_name => '감정 배급';

  @override
  String get metric_bad_55_description =>
      '감정 표현이나 연결을 의도적으로 제한하여 통제 수단으로 사용하는 것을 감지합니다.';

  @override
  String get metric_bad_56_name => '의무 조종';

  @override
  String get metric_bad_56_description =>
      '과거의 지원이나 희생을 이용해 현재의 결정을 조종하는 행위를 식별합니다.';

  @override
  String get metric_bad_57_name => '성장 저항';

  @override
  String get metric_bad_57_description =>
      '요청이나 입증된 영향에도 불구하고 해로운 행동을 수정하는 데 저항하는 것을 추적합니다.';

  @override
  String get metric_bad_58_name => '피해 부인';

  @override
  String get metric_bad_58_description =>
      '자신의 행동이 미치는 영향을 인정하거나 진지하게 받아들이지 않는 것을 감지합니다.';

  @override
  String get metric_bad_59_name => '함정 질문';

  @override
  String get metric_bad_59_description =>
      '무해한 질문이나 호기심 표현으로 위장된 비판적 의도를 식별합니다.';

  @override
  String get metric_bad_60_name => '경멸 어조';

  @override
  String get metric_bad_60_description =>
      '텍스트 패턴과 단어 선택을 통해 드러나는 경멸적인 태도나 무시하는 어조를 식별합니다.';

  @override
  String get metric_bad_61_name => '죄책감 순환';

  @override
  String get metric_bad_61_description =>
      '과거 지원이나 희생에 대한 죄책감을 반복적으로 이용해 현재 행동을 통제하는 것을 감지합니다.';

  @override
  String get metric_bad_62_name => '감정적 경계';

  @override
  String get metric_bad_62_description =>
      '보호적 은폐로 파트너와 감정, 두려움, 필요를 공유하지 않는 것을 추적합니다.';

  @override
  String get metric_bad_63_name => '경계 협상';

  @override
  String get metric_bad_63_description =>
      '설정된 한계를 확고한 약속이 아닌 제안이나 협상 가능한 것으로 대우하는 것을 식별합니다.';

  @override
  String get metric_bad_64_name => '정서적 부재';

  @override
  String get metric_bad_64_description =>
      '지속적으로 정서적 지지나 적극적인 존재감을 제공하지 않는 패턴을 감지합니다.';

  @override
  String get metric_bad_65_name => '호의 추적';

  @override
  String get metric_bad_65_description =>
      '호의, 지지, 희생을 나중에 활용하기 위해 정신적으로 점수를 기록하는 행위를 식별합니다.';

  @override
  String get metric_bad_66_name => '정직 회피';

  @override
  String get metric_bad_66_description =>
      '진실을 숨기거나, 사실을 생략하거나, 의도적으로 모호하게 말하는 패턴을 감지합니다.';

  @override
  String get metric_bad_67_name => '타당성 부정';

  @override
  String get metric_bad_67_description =>
      '파트너의 감정, 필요 또는 우려를 무효하거나 부당한 것으로 취급하는 행위를 식별합니다.';

  @override
  String get metric_bad_68_name => '조언으로 위장한 비판';

  @override
  String get metric_bad_68_description => '걱정, 조언 또는 도움이 되는 관찰로 위장된 비판을 식별합니다.';

  @override
  String get metric_bad_69_name => '우월감 지표';

  @override
  String get metric_bad_69_description => '언어나 의사소통 방식에서 우월감, 조롱 또는 경멸을 감지합니다.';

  @override
  String get metric_bad_70_name => '회복 저항';

  @override
  String get metric_bad_70_description => '갈등 후 화해, 재연결 또는 재건을 거부하는 저항을 추적합니다.';

  @override
  String get metric_bad_71_name => '노력 무시';

  @override
  String get metric_bad_71_description =>
      '파트너의 개선이나 문제 해결 시도를 최소화하거나 무시하는 행위를 식별합니다.';

  @override
  String get metric_bad_72_name => '정서적 거리 패턴';

  @override
  String get metric_bad_72_description =>
      '장기적인 정서적 거리감 또는 진정한 관계 맺기를 거부하는 패턴을 감지합니다.';

  @override
  String get metric_bad_73_name => '열등감 프레이밍';

  @override
  String get metric_bad_73_description =>
      '상대방을 열등하거나 결함이 있거나 완전한 존중을 받을 가치가 없는 사람으로 규정합니다.';

  @override
  String get metric_bad_74_name => '피드백 저항';

  @override
  String get metric_bad_74_description =>
      '비판을 듣는 것을 거부하거나, 경청을 거부하거나, 대화를 중단시키는 저항을 감지합니다.';

  @override
  String get metric_bad_75_name => '걱정 무시';

  @override
  String get metric_bad_75_description =>
      '상대방의 걱정이나 두려움을 근거 없거나 비합리적인 것으로 취급하는 것을 식별합니다.';

  @override
  String get metric_bad_76_name => '흠잡기';

  @override
  String get metric_bad_76_description =>
      '상대방의 성격에 대해 지속적으로 흠을 찾고, 불평하거나 공격하는 만성적 패턴을 표시합니다.';

  @override
  String get metric_bad_77_name => '희생 죄책감 순환';

  @override
  String get metric_bad_77_description =>
      '과거의 지원을 반복적으로 언급하여 죄책감을 유발하거나 행동을 통제하는 것을 식별합니다.';

  @override
  String get metric_bad_78_name => '헌신 모호성';

  @override
  String get metric_bad_78_description =>
      '불분명하거나 흔들리는 헌신 언어, 혼합 신호 또는 헌신을 꺼리는 태도를 추적합니다.';

  @override
  String get metric_bad_79_name => '요청 무시';

  @override
  String get metric_bad_79_description =>
      '상대방의 합리적인 요청을 무시하거나, 거부하거나, 응답을 지연시키는 것을 표시합니다.';

  @override
  String get metric_bad_80_name => '감정 통제 전술';

  @override
  String get metric_bad_80_description =>
      '결과를 통제하거나 책임을 회피하기 위해 감정을 전략적으로 사용하는 것을 감지합니다.';

  @override
  String get metric_bad_81_name => '교환 심리';

  @override
  String get metric_bad_81_description =>
      '관계를 빚, 의무 또는 거래적 교환의 관점에서 바라보는 것을 표시합니다.';

  @override
  String get metric_bad_82_name => '개인 발전 저항';

  @override
  String get metric_bad_82_description =>
      '개인 발전, 학습 또는 해로운 패턴 변화에 대한 저항을 감지합니다.';

  @override
  String get metric_bad_83_name => '개선 거부';

  @override
  String get metric_bad_83_description =>
      '파트너의 개선이나 문제 해결 노력을 최소화하거나 거부하는 것을 식별합니다.';

  @override
  String get metric_bad_84_name => '만성적 비판';

  @override
  String get metric_bad_84_description =>
      '걱정, 도움 또는 돌봄 언어로 포장된 만성적인 비판 패턴을 표시합니다.';

  @override
  String get metric_bad_85_name => '해결 회피';

  @override
  String get metric_bad_85_description =>
      '종결, 전진 또는 실행 가능한 해결책 찾기를 회피하는 일관된 패턴을 감지합니다.';

  @override
  String get metric_bad_86_name => '비난 전가 패턴';

  @override
  String get metric_bad_86_description =>
      '책임을 외부 요인이나 파트너에게 돌리는 습관적 패턴을 표시합니다.';

  @override
  String get metric_bad_87_name => '무시 반응';

  @override
  String get metric_bad_87_description =>
      '파트너의 의견, 아이디어 또는 제안을 고려 없이 무시하는 패턴을 식별합니다.';

  @override
  String get metric_bad_88_name => '원한 표현';

  @override
  String get metric_bad_88_description =>
      '의사소통에서 원한, 분노 또는 오래된 좌절감의 어조를 감지합니다.';

  @override
  String get metric_bad_89_name => '양가적 메시지';

  @override
  String get metric_bad_89_description =>
      '헌신에 대한 혼합 메시지, 지속 의사의 불명확함 또는 밀고 당기는 역학을 표시합니다.';

  @override
  String get metric_bad_90_name => '기대치 변경';

  @override
  String get metric_bad_90_description =>
      '의사소통 없이 기대치를 변경한 후, 파트너가 이를 충족시키지 못했다고 비난하는 것을 식별합니다.';

  @override
  String get metric_bad_91_name => '회피 습관';

  @override
  String get metric_bad_91_description =>
      '직접적인 답변을 습관적으로 회피하거나 책임에서 벗어나 대화를 전환하는 행동을 감지합니다.';

  @override
  String get metric_bad_92_name => '친절을 통한 조종';

  @override
  String get metric_bad_92_description =>
      '의무감을 조성하거나 방어를 낮추기 위해 전략적으로 과장된 친절을 사용하는 것을 식별합니다.';

  @override
  String get metric_bad_93_name => '만성 지각 패턴';

  @override
  String get metric_bad_93_description =>
      '지각이나 약속 불이행을 통해 파트너의 시간을 지속적으로 무시하는 패턴을 파악합니다.';

  @override
  String get metric_bad_94_name => '진보 최소화';

  @override
  String get metric_bad_94_description =>
      '파트너의 진정한 개인적 성장이나 개선을 무시하거나 인정하지 않는 행동을 추적합니다.';

  @override
  String get metric_bad_95_name => '감정적 무기화';

  @override
  String get metric_bad_95_description =>
      '갈등 상황에서 파트너가 공개한 취약점이나 두려움을 이용하는 행동을 감지합니다.';

  @override
  String get metric_bad_96_name => '가스라이팅 유사 전술';

  @override
  String get metric_bad_96_description =>
      '완전한 가스라이팅 없이 자기 의심을 유발하는 미묘한 현실 왜곡 전술을 식별합니다.';

  @override
  String get metric_bad_97_name => '수동적 방어벽';

  @override
  String get metric_bad_97_description =>
      '미묘한 철회, 단음절 응답 또는 부재감을 회피 행동으로 식별합니다.';

  @override
  String get metric_bad_98_name => '서사 통제';

  @override
  String get metric_bad_98_description =>
      '무슨 일이 일어났는지, 어떻게 느꼈는지, 또는 무엇을 의미했는지에 대한 유일한 권위자임을 주장하는 행동을 감지합니다.';

  @override
  String get metric_bad_99_name => '책임 전가';

  @override
  String get metric_bad_99_description =>
      '책임을 지속적으로 외부 요인, 제3자 또는 파트너의 행동으로 돌리는 행동을 추적합니다.';

  @override
  String get metric_bad_100_name => '정서적 무관심';

  @override
  String get metric_bad_100_description =>
      '파트너가 친밀감을 필요로 할 때 정서적 친밀감, 취약성 또는 의미 있는 연결에서 만성적으로 물러서는 행동을 식별합니다.';

  @override
  String get metric_ugly_1_name => '신체 폭력 위협';

  @override
  String get metric_ugly_1_description =>
      '파트너에 대한 명시적 또는 은유적 타격, 해치기, 신체적 폭행 위협을 감지합니다.';

  @override
  String get metric_ugly_2_name => '무기 소지 언급';

  @override
  String get metric_ugly_2_description =>
      '분노, 통제 또는 해를 끼칠 능력의 맥락에서 총기, 칼 또는 무기에 대한 언급을 식별합니다.';

  @override
  String get metric_ugly_3_name => '목 졸림 지표';

  @override
  String get metric_ugly_3_description =>
      '질식, 목 조르기, 질식 또는 질식 관련 언어나 참조를 식별합니다.';

  @override
  String get metric_ugly_4_name => '자살 위협 무기화';

  @override
  String get metric_ugly_4_description =>
      '파트너를 통제, 조종 또는 처벌하기 위해 사용되는 자해 위협을 감지합니다.';

  @override
  String get metric_ugly_5_name => '살인 관념 언어';

  @override
  String get metric_ugly_5_description =>
      '파트너를 죽이려는 의도, 계획 또는 욕구를 표현하는 진술을 식별합니다.';

  @override
  String get metric_ugly_6_name => '치사율 위험 패턴';

  @override
  String get metric_ugly_6_description =>
      '높은 치사율 경고 신호: 무기 접근, 집착, 고조, 이별 위협이 결합된 패턴을 식별합니다.';

  @override
  String get metric_ugly_7_name => '스토킹 집착 언어';

  @override
  String get metric_ugly_7_description =>
      '강박적인 위치 추적, 미행, 깜짝 방문 또는 지속적인 원치 않는 추적 행위를 감지합니다.';

  @override
  String get metric_ugly_8_name => '강제 고립 강요';

  @override
  String get metric_ugly_8_description =>
      '가족, 친구, 직장 또는 외부 접촉을 모두 끊으라는 공격적인 요구를 식별합니다.';

  @override
  String get metric_ugly_9_name => '경제적 방해';

  @override
  String get metric_ugly_9_description =>
      '고용, 신용, 재정 또는 경제적 안정을 의도적으로 파괴하는 행위를 식별합니다.';

  @override
  String get metric_ugly_10_name => '생식 강압';

  @override
  String get metric_ugly_10_description =>
      '강제 임신, 낙태 압박, 피임 방해 또는 생식 통제를 감지합니다.';

  @override
  String get metric_ugly_11_name => '성적 강압 압박';

  @override
  String get metric_ugly_11_description =>
      '강제 성관계, 강압적 성행위, 거절 후 압박 또는 성적 처벌 언어를 식별합니다.';

  @override
  String get metric_ugly_12_name => '비동의 성적 언어';

  @override
  String get metric_ugly_12_description => '명시적 또는 암묵적 비동의 성폭력 위협이나 묘사를 식별합니다.';

  @override
  String get metric_ugly_13_name => '자녀 해치 위협';

  @override
  String get metric_ugly_13_description =>
      '파트너에 대한 레버리지나 처벌로 자녀를 해치거나, 방치하거나, 학대하겠다는 위협을 감지합니다.';

  @override
  String get metric_ugly_14_name => '양육권 무기화';

  @override
  String get metric_ugly_14_description =>
      '자녀를 데려가거나, 접근을 거부하거나, 양육권을 통제 수단으로 사용하겠다는 위협을 식별합니다.';

  @override
  String get metric_ugly_15_name => '반려동물 해치 위협';

  @override
  String get metric_ugly_15_description =>
      '처벌이나 통제 시연을 위해 반려동물을 해치거나, 죽이거나, 학대하겠다는 위협을 식별합니다.';

  @override
  String get metric_ugly_16_name => '수면 박탈 전술';

  @override
  String get metric_ugly_16_description =>
      '의도적인 수면 방해, 지속적인 중단 또는 통제 방법으로서의 탈진 유발을 식별합니다.';

  @override
  String get metric_ugly_17_name => '감금 언어';

  @override
  String get metric_ugly_17_description =>
      '파트너를 가두거나, 떠나는 것을 막거나, 특정 장소에 감금하는 언어를 식별합니다.';

  @override
  String get metric_ugly_18_name => '포식적 그루밍 언어';

  @override
  String get metric_ugly_18_description =>
      '방어를 낮추고, 거짓 신뢰를 쌓은 후 파트너를 착취하는 체계적 조작을 식별합니다.';

  @override
  String get metric_ugly_19_name => '비인간화 언어';

  @override
  String get metric_ugly_19_description =>
      '파트너를 동물, 사물, 비인간 또는 기본 권리를 누릴 자격이 없는 존재로 묘사하는 것을 감지합니다.';

  @override
  String get metric_ugly_20_name => '자기애적 분노 고조';

  @override
  String get metric_ugly_20_description =>
      '인지된 경시, 비판 또는 통제력 상실에 의해 촉발된 폭발적 분노를 감지합니다.';

  @override
  String get metric_ugly_21_name => '강박적 소유권 주장';

  @override
  String get metric_ugly_21_description =>
      '파트너의 인격에 대한 소유권, 재산권 또는 완전한 통제를 주장하는 언어를 표시합니다.';

  @override
  String get metric_ugly_22_name => '병적 거짓말 패턴';

  @override
  String get metric_ugly_22_description =>
      '명백한 이유 없이 심각한 문제에 대한 일관되고 정교하며 불필요한 거짓말을 식별합니다.';

  @override
  String get metric_ugly_23_name => '복수 환상 언어';

  @override
  String get metric_ugly_23_description =>
      '파트너를 해치고, 모욕하고, 파괴하는 것에 대한 상세한 환상을 식별합니다.';

  @override
  String get metric_ugly_24_name => '배신 집착 고착';

  @override
  String get metric_ugly_24_description =>
      '인지된 불륜에 초점을 맞춘 강박적 반추, 비난 및 처벌을 감지합니다.';

  @override
  String get metric_ugly_25_name => '버림 공황 공격성';

  @override
  String get metric_ugly_25_description =>
      '인지된 버림 또는 분리 시도에 대한 폭력적 또는 공격적 반응을 표시합니다.';

  @override
  String get metric_ugly_26_name => '분리 위협 고조';

  @override
  String get metric_ugly_26_description =>
      '이별 또는 분리 시도로 촉발된 극단적 위협 또는 위험한 행동을 식별합니다.';

  @override
  String get metric_ugly_27_name => '이별 후 괴롭힘 위협';

  @override
  String get metric_ugly_27_description =>
      '관계 종료 후 스토킹, 해치기 또는 강제 접촉 위협을 표시합니다.';

  @override
  String get metric_ugly_28_name => '양육권 납치 위협';

  @override
  String get metric_ugly_28_description =>
      '자녀를 데리고 도망가거나 다른 부모로부터 영구히 숨기겠다는 위협을 식별합니다.';

  @override
  String get metric_ugly_29_name => '부모 소외 계획';

  @override
  String get metric_ugly_29_description =>
      '조작을 통해 자녀를 다른 부모에게 반항하도록 체계적으로 유도하는 시도를 식별합니다.';

  @override
  String get metric_ugly_30_name => '자녀 목격 무관심';

  @override
  String get metric_ugly_30_description =>
      '자녀가 학대, 갈등 또는 정서적 해를 목격하는 것에 대한 무관심을 식별합니다.';

  @override
  String get metric_ugly_31_name => '인신매매 언어';

  @override
  String get metric_ugly_31_description =>
      '파트너를 판매, 거래 또는 성적으로 착취하는 언어를 식별합니다.';

  @override
  String get metric_ugly_32_name => '노예 언어';

  @override
  String get metric_ugly_32_description =>
      '파트너를 재산, 노예 또는 권리가 없는 완전 소유된 사람으로 취급하는 언어를 식별합니다.';

  @override
  String get metric_ugly_33_name => '부채 속박 위협';

  @override
  String get metric_ugly_33_description =>
      '조작된 부채나 재정적 의무를 통해 파트너를 가두려는 위협을 감지합니다.';

  @override
  String get metric_ugly_34_name => '강제 노동 요구';

  @override
  String get metric_ugly_34_description =>
      '해를 입히거나 처벌하겠다는 위협 하에 무보수 노동, 복역 또는 일을 요구하는 것을 식별합니다.';

  @override
  String get metric_ugly_35_name => '착취 정상화';

  @override
  String get metric_ugly_35_description =>
      '심각한 착취를 정상적, 당연한, 합의된 또는 심지어 유익한 것으로 묘사하는 것을 식별합니다.';

  @override
  String get metric_ugly_36_name => '취약성 표적화';

  @override
  String get metric_ugly_36_description =>
      '고립된, 경제적으로 의존적인 또는 심리적으로 취약한 개인을 의도적으로 표적으로 삼는 것을 식별합니다.';

  @override
  String get metric_ugly_37_name => '외상 결속 공학';

  @override
  String get metric_ugly_37_description =>
      '의도적으로 공포-안정 순환을 만들어 깊은 정서적 의존을 형성하는 행위를 탐지합니다.';

  @override
  String get metric_ugly_38_name => '간헐적 강화 학대';

  @override
  String get metric_ugly_38_description =>
      '심리적 중독을 유발하기 위해 보상과 심각한 처벌의 예측 불가능한 순환을 사용하는 패턴을 식별합니다.';

  @override
  String get metric_ugly_39_name => '학습된 무기력 유도';

  @override
  String get metric_ugly_39_description =>
      '자율성, 자원 및 인식된 탈출 옵션의 체계적 제거를 식별합니다.';

  @override
  String get metric_ugly_40_name => '정체성 소거 언어';

  @override
  String get metric_ugly_40_description =>
      '성격, 취미, 외모 또는 핵심 정체성을 포기하라는 요구를 식별합니다.';

  @override
  String get metric_ugly_41_name => '자율성 소멸';

  @override
  String get metric_ugly_41_description =>
      '독립적 사고, 의사 결정 또는 개인적 자율성의 체계적 제거를 탐지합니다.';

  @override
  String get metric_ugly_42_name => '사고 통제 전술';

  @override
  String get metric_ugly_42_description =>
      '통제하는 파트너가 지시하는 대로만 생각하고 믿고 느끼도록 요구하는 행위를 식별합니다.';

  @override
  String get metric_ugly_43_name => '정서적 무감각 강요';

  @override
  String get metric_ugly_43_description =>
      '감정 표현에 대한 처벌 또는 모든 감정을 억압하라는 명시적 요구를 식별합니다.';

  @override
  String get metric_ugly_44_name => '복합 외상 생성';

  @override
  String get metric_ugly_44_description =>
      '만성 학대를 통해 복합 외상 후 스트레스 장애 수준의 외상을 생성하는 체계적 패턴을 식별합니다.';

  @override
  String get metric_ugly_45_name => '배신 외상 가해';

  @override
  String get metric_ugly_45_description =>
      '근본적 신뢰와 심리적 안전을 파괴하기 위해 의도적으로 저지른 배신을 식별합니다.';

  @override
  String get metric_ugly_46_name => '도덕적 손상 언어';

  @override
  String get metric_ugly_46_description =>
      '파트너가 자신의 핵심 가치를 위반하거나 해로운 행동을 하도록 강요하는 것을 감지합니다.';

  @override
  String get metric_ugly_47_name => '실존적 위협 언어';

  @override
  String get metric_ugly_47_description =>
      '파트너의 존재, 핵심 정체성, 정신 또는 삶의 의지에 대한 위협을 식별합니다.';

  @override
  String get metric_ugly_48_name => '자살 강요 언어';

  @override
  String get metric_ugly_48_description =>
      '지속적인 학대와 조작된 절망감을 통해 파트너를 자살 충동으로 몰아가는 것을 식별합니다.';

  @override
  String get metric_ugly_49_name => '정당화 신화';

  @override
  String get metric_ugly_49_description =>
      '학대를 필요하거나, 당연하거나, 정당한 것으로 정당화하기 위해 만들어진 정교한 허구적 서사를 식별합니다.';

  @override
  String get metric_ugly_50_name => '피해자 서사 역전';

  @override
  String get metric_ugly_50_description =>
      '가해자가 자신의 학대에 대해 진정한 피해자라고 주장하는 완전한 역전을 감지합니다.';

  @override
  String get metric_ugly_51_name => '학대 정상화 설교';

  @override
  String get metric_ugly_51_description =>
      '학대가 정상적이고 건강하며 파트너에게 유익하다고 가르치거나 주장하는 것을 식별합니다.';

  @override
  String get metric_ugly_52_name => '약탈적 이데올로기';

  @override
  String get metric_ugly_52_description =>
      '파트너에 대한 착취, 지배 또는 해악을 이념적으로 정당화하는 것을 식별합니다.';

  @override
  String get metric_ugly_53_name => '컬트 지도자 메시지';

  @override
  String get metric_ugly_53_description =>
      '파트너에 대한 특별한 지식, 신성한 권리 또는 우월한 권위를 주장하는 메시지를 감지합니다.';

  @override
  String get metric_ugly_54_name => '그루밍 타임라인 언어';

  @override
  String get metric_ugly_54_description =>
      '장기적인 조종 계획이나 그루밍 진행 과정에 대한 언급을 식별합니다.';

  @override
  String get metric_ugly_55_name => '만성적 모욕 캠페인';

  @override
  String get metric_ugly_55_description =>
      '자존감을 파괴하기 위해 고안된 공개적 또는 사적 모욕의 지속적인 패턴을 식별합니다.';

  @override
  String get metric_ugly_56_name => '안전 탈출 차단';

  @override
  String get metric_ugly_56_description =>
      '파트너가 탈출 경로, 지원 체계 또는 안전 자원에 접근하는 것을 적극적으로 차단하는 행위를 감지합니다.';

  @override
  String get metric_ugly_57_name => '문서 압수 위협';

  @override
  String get metric_ugly_57_description =>
      '탈출을 막기 위해 신분증을 가져가거나, 숨기거나, 파괴하겠다는 위협이나 행동을 식별합니다.';

  @override
  String get metric_ugly_58_name => '폭력적 질투 패턴';

  @override
  String get metric_ugly_58_description =>
      '명백한 위협, 감시 또는 폭력적 보복으로 확대된 질투를 식별합니다.';

  @override
  String get metric_ugly_59_name => '분노 폭발 패턴';

  @override
  String get metric_ugly_59_description =>
      '어떤 자극에도 불균형한 폭발적 분노 발작의 묘사나 패턴을 감지합니다.';

  @override
  String get metric_ugly_60_name => '강압적 통제 고조';

  @override
  String get metric_ugly_60_description =>
      '시간이 지남에 따라 강압적 통제 전술의 심각성과 범위가 증가하는 것을 추적합니다.';

  @override
  String get metric_ugly_61_name => '공포 기반 순응 언어';

  @override
  String get metric_ugly_61_description =>
      '선택이 아닌 폭력이나 심각한 처벌에 대한 두려움에 전적으로 기반한 순응을 식별합니다.';

  @override
  String get metric_ugly_62_name => '처벌 의식 언어';

  @override
  String get metric_ugly_62_description =>
      '순응과 통제를 강제하기 위해 사용되는 체계적 처벌 관행에 대한 언급을 감지합니다.';

  @override
  String get metric_ugly_63_name => '비하 의식 지표';

  @override
  String get metric_ugly_63_description =>
      '존엄성을 파괴하기 위해 고안된 체계적 비하 또는 굴욕 의식을 식별합니다.';

  @override
  String get metric_ugly_64_name => '비동의 노출 위협';

  @override
  String get metric_ugly_64_description =>
      '동의 없이 친밀한 이미지, 개인 정보 또는 비밀을 노출하겠다는 위협을 식별합니다.';

  @override
  String get metric_ugly_65_name => '이미지 기반 학대 위협';

  @override
  String get metric_ugly_65_description =>
      '복수, 처벌 또는 협박을 위해 친밀한 이미지를 유포하겠다는 위협을 감지합니다.';

  @override
  String get metric_ugly_66_name => '재정적 함정 전술';

  @override
  String get metric_ugly_66_description =>
      '독립적인 생존을 불가능하게 만드는 의도적인 재정적 의존성을 생성하는 행위를 식별합니다.';

  @override
  String get metric_ugly_67_name => '주거 위협 언어';

  @override
  String get metric_ugly_67_description =>
      '파트너를 노숙자로 만들거나, 주거 접근을 차단하거나, 주거 안전을 파괴하겠다는 위협을 감지합니다.';

  @override
  String get metric_ugly_68_name => '이민 신분 위협';

  @override
  String get metric_ugly_68_description =>
      '통제 수단으로 이민 신분을 신고하거나 비자 후원을 취소하겠다는 위협을 식별합니다.';

  @override
  String get metric_ugly_69_name => '종교적 또는 영적 학대';

  @override
  String get metric_ugly_69_description =>
      '통제, 처벌 또는 해를 가하기 위해 종교적 권위, 교리 또는 영적 위협을 사용하는 행위를 감지합니다.';

  @override
  String get metric_ugly_70_name => '문화적 수치심 무기화';

  @override
  String get metric_ugly_70_description =>
      '처벌로 문화적 또는 가족 공동체에 행동을 노출하겠다고 위협하는 행위를 식별합니다.';

  @override
  String get metric_ugly_71_name => '가족 해 위협';

  @override
  String get metric_ugly_71_description =>
      '파트너의 가족, 자녀 또는 사랑하는 사람을 해치겠다는 위협을 지렛대로 사용하는 행위를 식별합니다.';

  @override
  String get metric_ugly_72_name => '조직적 괴롭힘 캠페인';

  @override
  String get metric_ugly_72_description =>
      '다른 사람들을 조직하여 파트너를 집단적으로 괴롭히거나, 스토킹하거나, 협박하는 행위를 감지합니다.';

  @override
  String get metric_ugly_73_name => '허위 경찰 신고 협박';

  @override
  String get metric_ugly_73_description =>
      '파트너에게 허위 경찰 신고나 법적 고소를 하겠다고 협박하는 내용을 식별합니다.';

  @override
  String get metric_ugly_74_name => '법적 시스템 무기화';

  @override
  String get metric_ugly_74_description =>
      '법적 절차, 법원, 또는 보호 명령을 괴롭힘의 도구로 사용하는 행위를 식별합니다.';

  @override
  String get metric_ugly_75_name => '보호 명령 위반';

  @override
  String get metric_ugly_75_description =>
      '보호 명령이나 접근 금지 명령을 위반하거나 위반할 계획을 언급하는 내용을 감지합니다.';

  @override
  String get metric_ugly_76_name => '직장 사보타주 협박';

  @override
  String get metric_ugly_76_description =>
      '파트너의 생계를 파괴하기 위해 고용주, 동료 또는 고객에게 연락하겠다고 협박하는 내용을 식별합니다.';

  @override
  String get metric_ugly_77_name => '사회적 파멸 협박';

  @override
  String get metric_ugly_77_description =>
      '파트너의 평판, 관계 및 사회적 지위를 파괴하겠다는 협박을 감지합니다.';

  @override
  String get metric_ugly_78_name => '체계적 기만 캠페인';

  @override
  String get metric_ugly_78_description =>
      '파트너를 재정적 또는 정서적으로 착취하기 위해 고안된 장기적이고 정교한 속임수를 식별합니다.';

  @override
  String get metric_ugly_79_name => '재산 파괴를 통한 공포';

  @override
  String get metric_ugly_79_description =>
      '협박 전술로 파트너의 재산을 의도적으로 파괴하는 행위를 식별합니다.';

  @override
  String get metric_ugly_80_name => '대리 공포로서의 동물 학대';

  @override
  String get metric_ugly_80_description =>
      '파트너에게 폭력 능력을 과시하기 위해 반려동물을 해치거나 위협하는 내용을 감지합니다.';

  @override
  String get metric_ugly_81_name => '아동 위험 노출 언어';

  @override
  String get metric_ugly_81_description =>
      '아이들을 위험한 상황에 놓거나 그렇게 하겠다고 협박하여 압박하는 내용을 식별합니다.';

  @override
  String get metric_ugly_82_name => '장애 기반 통제';

  @override
  String get metric_ugly_82_description =>
      '파트너의 장애를 이용하여 약물 접근, 이동 또는 돌봄을 통제하는 행위를 탐지합니다.';

  @override
  String get metric_ugly_83_name => '위기 조작 통제';

  @override
  String get metric_ugly_83_description =>
      '파트너의 의존성을 높이거나 감시를 정당화하기 위해 의도적으로 응급 상황이나 위기를 조성하는 행위를 식별합니다.';

  @override
  String get metric_ugly_84_name => '응급 서비스 차단';

  @override
  String get metric_ugly_84_description =>
      '파트너가 경찰, 구급차 또는 위기 서비스에 연락하는 것을 적극적으로 방해하는 행위를 식별합니다.';

  @override
  String get metric_ugly_85_name => '위협 확대 궤적';

  @override
  String get metric_ugly_85_description =>
      '시간이 지남에 따라 위협의 심각성, 구체성 또는 빈도가 측정 가능하게 증가하는 것을 추적합니다.';

  @override
  String get metric_ugly_86_name => '치명성 평가 지표';

  @override
  String get metric_ugly_86_description => '친밀한 파트너 살해 위험이 가장 높은 요인 조합을 식별합니다.';

  @override
  String get metric_ugly_87_name => '심리적 고문 전술';

  @override
  String get metric_ugly_87_description =>
      '파트너의 정신적 안정을 무너뜨리기 위해 설계된 지속적인 심리적 학대를 식별합니다.';

  @override
  String get metric_ugly_88_name => '감금 언어';

  @override
  String get metric_ugly_88_description =>
      '파트너를 감금하거나, 떠나는 것을 막거나, 모든 움직임을 통제하는 내용을 탐지합니다.';

  @override
  String get metric_ugly_89_name => '표적 폭력 계획';

  @override
  String get metric_ugly_89_description =>
      '파트너에 대한 폭력 계획, 준비 또는 카운트다운을 나타내는 언어를 탐지합니다.';

  @override
  String get metric_ugly_90_name => '제3자 위협 동원';

  @override
  String get metric_ugly_90_description =>
      '친구, 가족 또는 다른 사람을 동원하여 파트너를 위협하거나 해치도록 하는 행위를 식별합니다.';

  @override
  String get metric_ugly_91_name => '자살 충동 이용';

  @override
  String get metric_ugly_91_description =>
      '파트너의 자살 위기를 이용해 협박하거나 도움을 구하지 못하도록 방해하는 행위를 식별합니다.';

  @override
  String get metric_ugly_92_name => '중독 또는 약물 위협';

  @override
  String get metric_ugly_92_description =>
      '파트너의 음식이나 음료에 약물을 타거나 독을 넣거나 변조하겠다는 위협이나 언급을 감지합니다.';

  @override
  String get metric_ugly_93_name => '비자살적 자해 이용';

  @override
  String get metric_ugly_93_description =>
      '파트너의 자해 행동을 협박, 조롱 또는 추가 통제 수단으로 이용하는 행위를 식별합니다.';

  @override
  String get metric_ugly_94_name => '해리 유도 언어';

  @override
  String get metric_ugly_94_description =>
      '파트너에게 해리, 단절 또는 비현실감을 유발하도록 설계된 패턴을 감지합니다.';

  @override
  String get metric_ugly_95_name => '인지 왜곡 주입';

  @override
  String get metric_ugly_95_description =>
      '자기 자신, 현실 또는 파트너의 정신 건강에 대한 허위 신념을 의도적으로 주입하는 행위를 감지합니다.';

  @override
  String get metric_ugly_96_name => '의료 방해';

  @override
  String get metric_ugly_96_description =>
      '약물 복용, 의사 진료, 병원 방문 또는 건강 치료를 방해하는 행위를 감지합니다.';

  @override
  String get metric_ugly_97_name => '극단주의 위협 언어';

  @override
  String get metric_ugly_97_description =>
      '극단적이거나 폭력적인 이념 체계에서 차용한 언어를 파트너에게 적용하는 행위를 식별합니다.';

  @override
  String get metric_ugly_98_name => '이별 후 스토킹 신호';

  @override
  String get metric_ugly_98_description =>
      '이별 후 또는 이별을 예상하며 행해지는 위협, 감시 언어 또는 협박 전술을 감지합니다.';

  @override
  String get metric_ugly_99_name => '자녀 무기화';

  @override
  String get metric_ugly_99_description =>
      '자녀를 협박 도구로 사용하거나, 양육권을 위협하거나, 부모와의 유대를 통제 수단으로 이용하는 행위를 식별합니다.';

  @override
  String get metric_ugly_100_name => '체계적 비인간화';

  @override
  String get metric_ugly_100_description =>
      '지속적으로 파트너의 인격, 존엄성 또는 기본적 인간성을 박탈하는 언어를 감지합니다.';

  @override
  String get metric_narcissist_1_name => '과대 자기 중요성';

  @override
  String get metric_narcissist_1_description =>
      '현실적인 증거를 넘어 성취, 재능 또는 지위에 대한 과장된 주장으로, 종종 독특함에 대한 감각을 동반합니다.';

  @override
  String get metric_narcissist_2_name => '특권 요구';

  @override
  String get metric_narcissist_2_description =>
      '상호성 없이 특별 대우나 자신의 바람에 자동으로 따르기를 기대하는 비합리적인 기대.';

  @override
  String get metric_narcissist_3_name => '공감 결핍';

  @override
  String get metric_narcissist_3_description =>
      '타인의 감정을 인식하거나 인정하지 못하거나 의지하지 않으며, 정서적 필요를 무의미한 것으로 일축합니다.';

  @override
  String get metric_narcissist_4_name => '인정 추구 칭찬';

  @override
  String get metric_narcissist_4_description =>
      '취약한 자존감을 강화하기 위해 감탄, 칭찬 또는 인정을 과도하게 구걸합니다.';

  @override
  String get metric_narcissist_5_name => '삼각관계 전술';

  @override
  String get metric_narcissist_5_description =>
      '갈등에 제3자를 도입하여 질투, 경쟁을 유발하거나 인식을 조작합니다.';

  @override
  String get metric_narcissist_6_name => '러브밤빙 강도';

  @override
  String get metric_narcissist_6_description =>
      '관계 초기에 압도적인 아첨, 선물 또는 관심을 통해 통제력을 얻고 대상을 이상화합니다.';

  @override
  String get metric_narcissist_7_name => '평가 절하 비판';

  @override
  String get metric_narcissist_7_description =>
      '이상화 후 갑작스러운 가혹한 비판, 얕보기 또는 경멸로 전환하여 대상의 자존감을 침식합니다.';

  @override
  String get metric_narcissist_8_name => '침묵 처벌';

  @override
  String get metric_narcissist_8_description =>
      '의도적인 처벌로 의사소통이나 애정을 차단하여 불안과 순응을 유도합니다.';

  @override
  String get metric_narcissist_9_name => 'DARVO 책임 전가';

  @override
  String get metric_narcissist_9_description =>
      '책임을 부인하고, 비난자를 공격하며, 가해자-피해자 역할을 역전시켜 책임을 회피합니다.';

  @override
  String get metric_narcissist_10_name => '가스라이팅 현실 왜곡';

  @override
  String get metric_narcissist_10_description =>
      '사실, 사건 또는 감정을 부인하거나 왜곡하여 대상이 자신의 기억이나 정신을 의심하게 만듭니다.';

  @override
  String get metric_narcissist_11_name => '비판에 대한 분노';

  @override
  String get metric_narcissist_11_description =>
      '건설적인 피드백조차도 사소한 비난이나 피드백에 대해 극심한 분노, 경멸 또는 보복을 보이는 것.';

  @override
  String get metric_narcissist_12_name => '경계 위반';

  @override
  String get metric_narcissist_12_description =>
      '명시된 한계, 프라이버시 또는 개인 공간을 후회나 협상 없이 무시하거나 침범하는 것.';

  @override
  String get metric_narcissist_13_name => '질투 표현';

  @override
  String get metric_narcissist_13_description =>
      '타인의 성공이나 소유물에 대한 분노로, 종종 평가 절하나 방해 시도를 동반함.';

  @override
  String get metric_narcissist_14_name => '착취적 행동';

  @override
  String get metric_narcissist_14_description =>
      '타인의 복지나 동의를 고려하지 않고 개인의 이익, 지위 또는 자원을 위해 타인을 이용하는 것.';

  @override
  String get metric_narcissist_15_name => '거울 반사 조작';

  @override
  String get metric_narcissist_15_description =>
      '대상의 관심사, 가치관 또는 특성을 모방하여 거짓된 친밀감을 형성하고 신뢰를 얻는 것.';

  @override
  String get metric_narcissist_16_name => '우월성 주장';

  @override
  String get metric_narcissist_16_description =>
      '타인에 대한 본질적인 우월성을 주장하며, 종종 경멸적이거나 무시하는 언어를 사용함.';

  @override
  String get metric_narcissist_17_name => '환상 집착';

  @override
  String get metric_narcissist_17_description =>
      '비현실적인 무한한 성공, 권력, 탁월함 또는 이상적인 사랑에 대한 강박적인 대화.';

  @override
  String get metric_narcissist_18_name => '특별한 지위 주장';

  @override
  String get metric_narcissist_18_description =>
      '자신은 높은 지위의 사람이나 기관에 의해서만 이해되거나 교류할 수 있다는 믿음.';

  @override
  String get metric_narcissist_19_name => '대인 착취';

  @override
  String get metric_narcissist_19_description =>
      '타인의 자원, 시간 또는 감정을 보답이나 감사 없이 이용하는 것.';

  @override
  String get metric_narcissist_20_name => '후회 부재';

  @override
  String get metric_narcissist_20_description =>
      '해를 끼친 후 죄책감이나 사과가 없으며, 종종 대상이 당연히 받아야 한다고 행동을 정당화함.';

  @override
  String get metric_narcissist_21_name => '경쟁적 약화';

  @override
  String get metric_narcissist_21_description =>
      '우월한 위치를 유지하기 위해 타인의 성취나 관계를 방해하는 행위.';

  @override
  String get metric_narcissist_22_name => '이상화 단계';

  @override
  String get metric_narcissist_22_description =>
      '관계 초기에 과도한 칭찬과 숭배를 통해 대상에게 비현실적인 기대를 설정하는 단계.';

  @override
  String get metric_narcissist_23_name => '평가절하 단계';

  @override
  String get metric_narcissist_23_description =>
      '이상화 이후 점진적 또는 갑작스러운 비판과 경멸을 통해 혼란과 자기 의심을 유발하는 단계.';

  @override
  String get metric_narcissist_24_name => '버림 충동';

  @override
  String get metric_narcissist_24_description =>
      '대상이 더 이상 자기애적 공급을 제공하지 않거나 도전할 때 관계를 갑작스럽게 종료하는 행위.';

  @override
  String get metric_narcissist_25_name => '후버링 시도';

  @override
  String get metric_narcissist_25_description =>
      '버려진 대상을 약속, 죄책감 또는 조작을 통해 다시 끌어들여 공급을 회복하려는 시도.';

  @override
  String get metric_narcissist_26_name => '결점 투사';

  @override
  String get metric_narcissist_26_description =>
      '자기 인식을 피하기 위해 자신의 부정적 특성이나 행동을 타인에게 비난하는 행위.';

  @override
  String get metric_narcissist_27_name => '죄책감을 통한 통제';

  @override
  String get metric_narcissist_27_description =>
      '죄책감을 유발하는 발언을 사용하여 타인을 복종이나 돌봄으로 조종하는 행위.';

  @override
  String get metric_narcissist_28_name => '정서적 변동성';

  @override
  String get metric_narcissist_28_description =>
      '매력에서 분노로 빠르게 변하는 기분 변화, 종종 인지된 자기애적 손상에 의해 촉발됨.';

  @override
  String get metric_narcissist_29_name => '감정 무효화';

  @override
  String get metric_narcissist_29_description =>
      '타인의 감정을 과잉 반응이나 비합리적이라고 일축하거나 최소화하는 행위.';

  @override
  String get metric_narcissist_30_name => '대화 독점';

  @override
  String get metric_narcissist_30_description =>
      '자기 중심적인 주제로 대화를 지배하고, 방해하거나 타인의 의견을 무시하는 행위.';

  @override
  String get metric_narcissist_31_name => '이름 부르기 비하';

  @override
  String get metric_narcissist_31_description =>
      '모욕, 꼬리표 또는 비하하는 용어를 사용하여 대상을 평가절하하고 통제합니다.';

  @override
  String get metric_narcissist_32_name => '버림받음 위협';

  @override
  String get metric_narcissist_32_description =>
      '상실이나 거절에 대한 두려움을 이용하여 복종이나 관심을 강요합니다.';

  @override
  String get metric_narcissist_33_name => '피해자 행세';

  @override
  String get metric_narcissist_33_description =>
      '자신이 부당하게 대우받았다고 주장하며 동정을 얻고 책임을 회피합니다.';

  @override
  String get metric_narcissist_34_name => '순교자 콤플렉스';

  @override
  String get metric_narcissist_34_description =>
      '과도한 희생이나 고통을 주장하여 타인에게 죄책감과 의무감을 유발합니다.';

  @override
  String get metric_narcissist_35_name => '선택적 기억';

  @override
  String get metric_narcissist_35_description =>
      '약속, 합의 또는 해로운 행동을 편리하게 잊어 책임을 회피합니다.';

  @override
  String get metric_narcissist_36_name => '대화 차단';

  @override
  String get metric_narcissist_36_description =>
      '대화 참여를 거부하고 질문을 무시하거나 논의를 중단하여 통제를 유지합니다.';

  @override
  String get metric_narcissist_37_name => '미래 조작';

  @override
  String get metric_narcissist_37_description =>
      '공유된 미래 계획에 대한 과장된 약속을 하여 거짓된 희망과 의존성을 만듭니다.';

  @override
  String get metric_narcissist_38_name => '비방 캠페인';

  @override
  String get metric_narcissist_38_description =>
      '대상에 대한 악의적인 소문이나 거짓말을 퍼뜨려 고립시키고 평판을 손상시킵니다.';

  @override
  String get metric_narcissist_39_name => '고립 전술';

  @override
  String get metric_narcissist_39_description =>
      '친구, 가족 또는 지지 체계와의 접촉을 막거나 억제하여 의존성을 증가시킵니다.';

  @override
  String get metric_narcissist_40_name => '재정 착취';

  @override
  String get metric_narcissist_40_description =>
      '재정 자원을 개인적 이익을 위해 조작하거나 통제하여 의존성을 만듭니다.';

  @override
  String get metric_narcissist_41_name => '성적 강압';

  @override
  String get metric_narcissist_41_description =>
      '압박, 죄책감 또는 조작을 사용하여 진정한 동의 없이 성적 순응을 얻는 행위.';

  @override
  String get metric_narcissist_42_name => '경계 테스트';

  @override
  String get metric_narcissist_42_description =>
      '허용되는 행동을 확인하기 위해 한계를 반복적으로 밀어붙인 후 위반을 확대하는 행위.';

  @override
  String get metric_narcissist_43_name => '가스라이팅 부인';

  @override
  String get metric_narcissist_43_description =>
      '발생한 사건이나 진술을 단호히 부인하여 대상이 현실을 의심하게 만드는 행위.';

  @override
  String get metric_narcissist_44_name => '우려 사항 경시';

  @override
  String get metric_narcissist_44_description =>
      '정당한 불만을 중요하지 않거나 지나치게 예민한 것으로 일축하는 행위.';

  @override
  String get metric_narcissist_45_name => '책임 외부화';

  @override
  String get metric_narcissist_45_description =>
      '모든 문제와 갈등을 타인에게 돌리고 결코 개인적 잘못을 인정하지 않는 행위.';

  @override
  String get metric_narcissist_46_name => '질투 유발';

  @override
  String get metric_narcissist_46_description =>
      '질투를 유발하고 정서적 통제를 유지하기 위해 타인과 농담하거나 칭찬하는 행위.';

  @override
  String get metric_narcissist_47_name => '정서적 협박';

  @override
  String get metric_narcissist_47_description =>
      '두려움, 의무 또는 죄책감을 사용하여 결정과 행동을 조작하는 행위.';

  @override
  String get metric_narcissist_48_name => '가짜 통찰';

  @override
  String get metric_narcissist_48_description =>
      '개선된 것처럼 보이기 위해 자기 인식이나 공감을 가장한 후 독성 패턴으로 되돌아가는 행위.';

  @override
  String get metric_narcissist_49_name => '경멸적인 어조';

  @override
  String get metric_narcissist_49_description =>
      '비꼼, 조롱 또는 경멸적인 언어를 사용하여 타인을 비하하고 무시하는 행위.';

  @override
  String get metric_narcissist_50_name => '복수 환상';

  @override
  String get metric_narcissist_50_description =>
      '자신을 얕본 사람들에 대한 보복이나 처벌에 대한 욕구를 표현하는 행위.';

  @override
  String get metric_serial_killer_1_name => '포식적 프레이밍';

  @override
  String get metric_serial_killer_1_description =>
      '화자가 사냥꾼이고 대상이 먹잇감임을 나타내는 언어를 감지하여 포식 의도를 식별합니다.';

  @override
  String get metric_serial_killer_2_name => '공감 결핍';

  @override
  String get metric_serial_killer_2_description =>
      '타인의 고통에 대한 정서적 공명이나 관심이 부족한 진술을 식별하여 냉담함을 시사합니다.';

  @override
  String get metric_serial_killer_3_name => '비인간화 라벨';

  @override
  String get metric_serial_killer_3_description =>
      '피해자의 인간성을 박탈하는 경멸적 용어나 대상화 라벨 사용을 표시합니다.';

  @override
  String get metric_serial_killer_4_name => '대상화 단서';

  @override
  String get metric_serial_killer_4_description =>
      '개인을 만족을 위한 도구나 대상으로 취급하는 언어를 인식합니다.';

  @override
  String get metric_serial_killer_5_name => '통제 집착';

  @override
  String get metric_serial_killer_5_description =>
      '지배, 조종 또는 복종 강요에 대한 강박적 언급을 감지합니다.';

  @override
  String get metric_serial_killer_6_name => '스릴 추구 어조';

  @override
  String get metric_serial_killer_6_description =>
      '위험하거나 폭력적이거나 포식적인 행동을 설명할 때의 흥분이나 각성을 식별합니다.';

  @override
  String get metric_serial_killer_7_name => '구획화 표지';

  @override
  String get metric_serial_killer_7_description =>
      '일상적 주제와 폭력적 주제 사이의 급격한 전환을 표시하여 심리적 분리를 시사합니다.';

  @override
  String get metric_serial_killer_8_name => '피해자 선택 신호';

  @override
  String get metric_serial_killer_8_description =>
      '특정 취약 집단을 표적으로 삼기 위한 기준이나 선호도를 감지합니다.';

  @override
  String get metric_serial_killer_9_name => '가학적 즐거움';

  @override
  String get metric_serial_killer_9_description =>
      '타인의 고통, 두려움 또는 괴로움에서 비롯된 즐거움을 인식합니다.';

  @override
  String get metric_serial_killer_10_name => '조종적 해악';

  @override
  String get metric_serial_killer_10_description =>
      '타인을 속이거나 강제로 해로운 상황에 빠뜨리는 데 사용되는 언어를 식별합니다.';

  @override
  String get metric_serial_killer_11_name => '스토킹 지표';

  @override
  String get metric_serial_killer_11_description =>
      '대상에 대한 세부적인 추적, 감시 또는 강박적 관찰을 나타냅니다.';

  @override
  String get metric_serial_killer_12_name => '그루밍 언어';

  @override
  String get metric_serial_killer_12_description =>
      '피해자를 착취하거나 학대하기 위해 점진적으로 신뢰를 구축하는 전술을 감지합니다.';

  @override
  String get metric_serial_killer_13_name => '폭력적 환상';

  @override
  String get metric_serial_killer_13_description =>
      '정신적 시뮬레이션으로 타인을 해치거나 죽이는 생생한 묘사를 식별합니다.';

  @override
  String get metric_serial_killer_14_name => '권력 주장';

  @override
  String get metric_serial_killer_14_description =>
      '타인에 대한 우월성이나 통제를 강조하는 진술을 인식합니다.';

  @override
  String get metric_serial_killer_15_name => '후회 부재';

  @override
  String get metric_serial_killer_15_description =>
      '유해한 행동을 논의한 후 죄책감이나 후회가 없음을 나타냅니다.';

  @override
  String get metric_serial_killer_16_name => '외부 귀인';

  @override
  String get metric_serial_killer_16_description =>
      '폭력적 충동에 대한 책임을 피해자나 사회로 전가하는 것을 감지합니다.';

  @override
  String get metric_serial_killer_17_name => '성적 폭력성';

  @override
  String get metric_serial_killer_17_description =>
      '언어에서 성적 주제와 폭력적 주제의 결합을 식별합니다.';

  @override
  String get metric_serial_killer_18_name => '고립 전술';

  @override
  String get metric_serial_killer_18_description =>
      '대상을 지지 네트워크로부터 분리하려는 시도를 인식합니다.';

  @override
  String get metric_serial_killer_19_name => '가스라이팅 패턴';

  @override
  String get metric_serial_killer_19_description =>
      '현실을 왜곡하고 피해자의 정신 건강을 훼손하도록 설계된 언어를 나타냅니다.';

  @override
  String get metric_serial_killer_20_name => '위협 은폐';

  @override
  String get metric_serial_killer_20_description =>
      '일상적인 발언으로 위장된 암시적 위협이나 경고를 감지합니다.';

  @override
  String get metric_serial_killer_21_name => '소유적 언어';

  @override
  String get metric_serial_killer_21_description =>
      '타인에 대한 소유권이나 권리를 주장하는 표현을 식별합니다.';

  @override
  String get metric_serial_killer_22_name => '복수 테마';

  @override
  String get metric_serial_killer_22_description =>
      '보복이나 인식된 잘못에 대한 처벌에 집착하는 것을 인식합니다.';

  @override
  String get metric_serial_killer_23_name => '자기애적 과대성';

  @override
  String get metric_serial_killer_23_description =>
      '과장된 자기 중요성과 타인의 가치를 무시하는 태도를 표시합니다.';

  @override
  String get metric_serial_killer_24_name => '정서적 분리';

  @override
  String get metric_serial_killer_24_description =>
      '트라우마나 피해에 대해 논할 때 임상적이거나 냉담한 어조를 감지합니다.';

  @override
  String get metric_serial_killer_25_name => '포식적 인내';

  @override
  String get metric_serial_killer_25_description =>
      '미래의 피해를 위한 장기 계획 언어를 식별합니다.';

  @override
  String get metric_serial_killer_26_name => '경계 테스트';

  @override
  String get metric_serial_killer_26_description =>
      '잠재적 피해자의 한계나 저항을 탐색하는 행동을 인식합니다.';

  @override
  String get metric_serial_killer_27_name => '피해 최소화';

  @override
  String get metric_serial_killer_27_description =>
      '폭력적이거나 학대적인 행위의 심각성을 축소하는 태도를 표시합니다.';

  @override
  String get metric_serial_killer_28_name => '폭력 정당화';

  @override
  String get metric_serial_killer_28_description =>
      '타인을 해치는 것이 필요하거나 정당하다고 합리화하는 것을 감지합니다.';

  @override
  String get metric_serial_killer_29_name => '강박적 집중';

  @override
  String get metric_serial_killer_29_description =>
      '특정 인물이나 행위에 대한 반복적이고 고정된 생각을 식별합니다.';

  @override
  String get metric_serial_killer_30_name => '냉철한 계산';

  @override
  String get metric_serial_killer_30_description =>
      '해로운 행동의 전략적이고 감정 없는 계획을 인식합니다.';

  @override
  String get metric_serial_killer_31_name => '기만적 매력';

  @override
  String get metric_serial_killer_31_description =>
      '과도한 아첨이나 아부 언어를 조작 목적으로 식별합니다.';

  @override
  String get metric_serial_killer_32_name => '피해자 비난';

  @override
  String get metric_serial_killer_32_description =>
      '대상이 자신의 피해에 대해 책임을 돌리는 것을 감지합니다.';

  @override
  String get metric_serial_killer_33_name => '고조 신호';

  @override
  String get metric_serial_killer_33_description =>
      '폭력적 언어에서 환상에서 의도로의 진행을 식별합니다.';

  @override
  String get metric_serial_killer_34_name => '기생적 지향';

  @override
  String get metric_serial_killer_34_description =>
      '타인을 착취할 자원으로 취급하는 언어를 인식합니다.';

  @override
  String get metric_serial_killer_35_name => '각성 신호';

  @override
  String get metric_serial_killer_35_description =>
      '폭력적 주제와 관련된 생리적 흥분 지표를 식별합니다.';

  @override
  String get metric_serial_killer_36_name => '충성심 시험';

  @override
  String get metric_serial_killer_36_description =>
      '공범으로부터 충성이나 비밀 유지 증명 요구를 감지합니다.';

  @override
  String get metric_serial_killer_37_name => '의례적 언어';

  @override
  String get metric_serial_killer_37_description =>
      '폭력 행위 주변의 패턴화된 의식적 표현을 식별합니다.';

  @override
  String get metric_serial_killer_38_name => '우월성 주장';

  @override
  String get metric_serial_killer_38_description =>
      '도덕적 또는 법적 제약 위에 있다는 주장을 인식합니다.';

  @override
  String get metric_serial_killer_39_name => '정서적 공백';

  @override
  String get metric_serial_killer_39_description =>
      '공감이 필요한 맥락에서 감정적 단어의 부재를 식별합니다.';

  @override
  String get metric_serial_killer_40_name => '포식적 호기심';

  @override
  String get metric_serial_killer_40_description =>
      '대상의 두려움이나 취약점에 대한 탐색적 질문을 감지합니다.';

  @override
  String get metric_serial_killer_41_name => '침묵 위협';

  @override
  String get metric_serial_killer_41_description => '폭로나 신고를 막기 위한 경고를 식별합니다.';

  @override
  String get metric_serial_killer_42_name => '비인간화 비교';

  @override
  String get metric_serial_killer_42_description =>
      '사람을 동물, 사물 또는 비인간 존재에 비유하는 것을 인식합니다.';

  @override
  String get metric_serial_killer_43_name => '통제 언어';

  @override
  String get metric_serial_killer_43_description =>
      '타인을 지배하려는 명령적이거나 지배적인 어조를 식별합니다.';

  @override
  String get metric_serial_killer_44_name => '가학적 세부 묘사';

  @override
  String get metric_serial_killer_44_description =>
      '서사에서 고통이나 고통에 대한 과도한 집중을 감지합니다.';

  @override
  String get metric_serial_killer_45_name => '조작적 공감';

  @override
  String get metric_serial_killer_45_description =>
      '대상의 방어를 낮추기 위한 가장된 관심을 식별합니다.';

  @override
  String get metric_serial_killer_46_name => '포식적 시선';

  @override
  String get metric_serial_killer_46_description =>
      '대상을 강렬하고 침습적으로 관찰하는 언어를 인식합니다.';

  @override
  String get metric_serial_killer_47_name => '폭력적 정체성';

  @override
  String get metric_serial_killer_47_description =>
      '자신을 포식자, 살인자 또는 괴물로 식별하는 것을 식별합니다.';

  @override
  String get metric_serial_killer_48_name => '사냥의 쾌감';

  @override
  String get metric_serial_killer_48_description =>
      '피해자를 스토킹하거나 추적하는 과정에서의 흥분을 감지합니다.';

  @override
  String get metric_serial_killer_49_name => '강박적 자백';

  @override
  String get metric_serial_killer_49_description =>
      '심리적 안정을 위해 폭력 행위를 폭로하려는 충동을 식별합니다.';

  @override
  String get metric_serial_killer_50_name => '종결 언어';

  @override
  String get metric_serial_killer_50_description =>
      '대상을 끝내거나, 죽이거나, 영구히 침묵시키는 것에 대한 언급을 인식합니다.';

  @override
  String get packNarcissistLabel => '자기애적 성격';

  @override
  String get packSerialKillerLabel => '연쇄 살인범';

  @override
  String get expansionPacksPurchased => '구매한 확장팩:';

  @override
  String get expansionPacksStillAvailable => '구매 가능한 확장팩';

  @override
  String get metricsOwned => '보유한 메트릭';

  @override
  String get metricsStillAvailable => '구매 가능한 메트릭';

  @override
  String get getMore => '더 가져오기!';

  @override
  String get standardPackTitle => '스탠다드 팩';

  @override
  String get goodPackTitle => '굿 팩';

  @override
  String get badPackTitle => '배드 팩';

  @override
  String get uglyPackTitle => '어글리 팩';

  @override
  String get narcissistPackTitle => '나르시스트 팩';

  @override
  String get serialKillerPackTitle => '연쇄살인마 팩';

  @override
  String get customMetricsTitle => '커스텀 메트릭';

  @override
  String metricsCountSubtitle(Object count) {
    return '$count개 메트릭';
  }

  @override
  String metricsAddonSubtitle(Object count) {
    return '$count개 메트릭 애드온';
  }

  @override
  String metricSingular(Object count) {
    return '$count개 메트릭';
  }

  @override
  String metricPlural(Object count) {
    return '$count개 메트릭';
  }

  @override
  String get viewMembershipOptions => '멤버십 옵션 보기';

  @override
  String get metricExpansionPacksTitle => '지표 확장 팩';

  @override
  String get oneTimePurchasesSubtitle => '일회성 구매 — 추가 지표 영구 소유';

  @override
  String get unlockGoodPackButton => '굿 팩 잠금 해제';

  @override
  String get unlockBadPackButton => '배드 팩 잠금 해제';

  @override
  String get unlockUglyPackButton => '어글리 팩 잠금 해제';

  @override
  String get unlockNarcissistPackButton => '나르시시스트 팩 잠금 해제';

  @override
  String get unlockSerialKillerPackButton => '시리얼 킬러 팩 잠금 해제';

  @override
  String get goodPackBenefit1 => '건강한 관계 지표 100개';

  @override
  String get goodPackBenefit2 => '긍정적 의사소통 패턴';

  @override
  String get goodPackBenefit3 => '감사, 공감 및 신뢰 신호';

  @override
  String get goodPackBenefit4 => '일회성 구매 — 영구 소유';

  @override
  String get goodPackBenefit5 => '구매 후 즉시 잠금 해제';

  @override
  String get badPackBenefit1 => '경고 신호 관계 지표 100개';

  @override
  String get badPackBenefit2 => '조종 및 무시 패턴 식별';

  @override
  String get badPackBenefit3 => '죄책감 유발, 냉담 등';

  @override
  String get badPackBenefit4 => '일회성 구매 — 영구 소유';

  @override
  String get badPackBenefit5 => '구매 후 즉시 잠금 해제';

  @override
  String get uglyPackBenefit1 => '심각한 적신호 학대 지표 100개';

  @override
  String get uglyPackBenefit2 => '강압, 위협 및 통제 식별';

  @override
  String get uglyPackBenefit3 => '트라우마 유대 및 고립 지표';

  @override
  String get uglyPackBenefit4 => '일회성 구매 — 영구 소유';

  @override
  String get uglyPackBenefit5 => '구매 후 즉시 잠금 해제';

  @override
  String get narcissistPackBenefit1 => '자기도취 행동 지표 50개';

  @override
  String get narcissistPackBenefit2 => '가스라이팅 및 러브 바밍 감지';

  @override
  String get narcissistPackBenefit3 => '후버링 및 평가절하 패턴';

  @override
  String get narcissistPackBenefit4 => '일회성 구매 — 영구 소유';

  @override
  String get narcissistPackBenefit5 => '구매 후 즉시 잠금 해제';

  @override
  String get serialKillerPackBenefit1 => '극단적 위험 지표 50개';

  @override
  String get serialKillerPackBenefit2 => '포식적이고 폭력적인 언어 감지';

  @override
  String get serialKillerPackBenefit3 => '정신병증 및 가학성 마커';

  @override
  String get serialKillerPackBenefit4 => '일회성 구매 — 영구 소유';

  @override
  String get serialKillerPackBenefit5 => '구매 후 즉시 잠금 해제';

  @override
  String get allPacksOwned => '모든 확장팩을 보유하고 있습니다!';

  @override
  String get restorePurchases => '구매 복원';

  @override
  String get restorePurchasesButton => '이전 구매 복원';

  @override
  String get restorePurchasesSuccess => '구매가 성공적으로 복원되었습니다!';

  @override
  String get restorePurchasesError => '구매를 복원할 수 없습니다. 다시 시도해 주세요.';

  @override
  String get restorePurchasesNoneFound => '이전 구매를 찾을 수 없습니다.';

  @override
  String get discordAddonPopupTitle => 'Discord 기능';

  @override
  String get discordAddonPopupMessage => '이 기능은 애드온으로 사용할 수 있습니다.';

  @override
  String get discordAccordionTitle => 'Discord 통합';

  @override
  String get discordAccordionSubtitle => 'Discord 서버 연결';

  @override
  String get selectDiscord => 'Discord 선택';

  @override
  String get enableDiscord => 'Discord 활성화';

  @override
  String get aboutTitle => '정보';

  @override
  String get aboutDescription =>
      'AIRTA(AI 관계 독성 분석기)는 대화에서 건강하지 않은 패턴을 식별하는 데 도움을 줍니다.';

  @override
  String get contactUs => '문의하기';

  @override
  String get supportEmail => '지원';

  @override
  String get supportEmailDesc => '앱 사용 도움 받기';

  @override
  String get businessEmail => '비즈니스';

  @override
  String get businessEmailDesc => '파트너십 및 문의';

  @override
  String get privacyEmail => '개인정보';

  @override
  String get privacyEmailDesc => '데이터 및 개인정보 문의';

  @override
  String get importantLinks => '링크';

  @override
  String get website => '웹사이트';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get termsOfService => '이용약관';

  @override
  String get github => 'GitHub';

  @override
  String get allRightsReserved => '모든 권리 보유.';

  @override
  String get packTheGood => '팩: 좋은';

  @override
  String get packTheBad => '팩: 나쁜';

  @override
  String get packTheUgly => '팩: 추한';

  @override
  String get packTheNarcissist => '팩: 자기애자';

  @override
  String get metricsExpansionPack => '메트릭 확장팩';

  @override
  String purchaseTitle(String title) {
    return '구매';
  }

  @override
  String buyForPrice(String price) {
    return '$price에 구매';
  }

  @override
  String get processingPurchase => '구매 처리 중...';

  @override
  String get waitingForStoreConfirmation => '스토어 확인 대기 중...';

  @override
  String get myMetricList => '내 메트릭 목록';

  @override
  String get botTokenSaved => '봇 토큰 저장됨';

  @override
  String failedToSaveError(String error) {
    return '저장 실패';
  }

  @override
  String get connectionTestNotImplemented => '연결 테스트가 아직 구현되지 않았습니다';

  @override
  String get pasteDiscordBotTokenHint => '여기에 Discord 봇 토큰을 붙여넣으세요';

  @override
  String get botTokenLabel => '봇 토큰';

  @override
  String get botConfigButton => '봇 구성';

  @override
  String get customMetricPurchasePlaceholder => '커스텀 메트릭 (구매)';

  @override
  String get configureBotToken => '봇 토큰 구성';

  @override
  String get retryButton => '다시 시도';

  @override
  String get ownerLabel => '소유자';

  @override
  String get noMessagesInChannel => '이 채널에 메시지 없음';

  @override
  String failedToImportError(String error) {
    return '가져오기 실패';
  }

  @override
  String get proMembershipUpsell => 'Pro로 업그레이드하여 전체 접근';

  @override
  String unlockForPrice(String price) {
    return '$price에 잠금 해제';
  }

  @override
  String get startCapture => '캡처 시작';

  @override
  String get finishAndProcess => '완료 및 처리';

  @override
  String get cancelButton => '취소';

  @override
  String get processScreenshots => '스크린샷 처리';

  @override
  String get startOver => '처음부터 다시';

  @override
  String get capturingStatus => '캡처 중...';

  @override
  String get captureComplete => '캡처 완료!';

  @override
  String get errorDialogTitle => '오류';

  @override
  String failedToLoadConversation(String error) {
    return '대화 로드 실패';
  }

  @override
  String get selectConversationTitle => '대화 선택';

  @override
  String get platformCredentialsTitle => '플랫폼 자격 증명';

  @override
  String get saveCredentialsTooltip => '자격 증명 저장';

  @override
  String get upgradeToProPlusTitle => 'Pro+로 업그레이드';

  @override
  String get upgradeNowButton => '지금 업그레이드';

  @override
  String get selectLanguageTooltip => '언어 선택';

  @override
  String get nextSizeButton => '다음 크기';

  @override
  String get startSequenceButton => '시퀀스 시작';

  @override
  String get nextSizeInstruction => '계속하려면 다음 크기를 누르세요';

  @override
  String get okButton => '확인';

  @override
  String get noMessagesInDateRangeBody =>
      '선택한 날짜 범위에서 메시지를 찾을 수 없습니다. 날짜 범위를 조정해 보세요.';

  @override
  String get credentialsSavedSuccess => '자격 증명이 성공적으로 저장되었습니다';

  @override
  String errorSavingCredentials(String error) {
    return '자격 증명 저장 오류: $error';
  }

  @override
  String get credentialsSecurityInfo => '자격 증명은 이 기기에만 안전하게 저장되며 업로드되지 않습니다.';

  @override
  String get savingButton => '저장 중...';

  @override
  String get saveAllCredentials => '자격 증명 저장';

  @override
  String get proPlusLabel => 'Pro+';

  @override
  String get upgradeButton => '업그레이드';

  @override
  String get usernameLabel => '사용자 이름';

  @override
  String get passwordLabel => '비밀번호';

  @override
  String get upgradeToProPlusBody =>
      '서드파티 플랫폼 통합 및 고급 기능을 이용하려면 Pro Plus로 업그레이드하세요.';

  @override
  String get noConversationsFoundBody =>
      '대화를 찾을 수 없습니다. 자격 증명이 올바른지 확인하고 다시 시도해 보세요.';

  @override
  String get tileMyAccountTitle => '내 계정';

  @override
  String get tileMyAccountDesc => '멤버십, 추천, 구매, 판매 및 개발자 라이선스';

  @override
  String get tileReferFriendsTitle => '친구 추천\n무료 한 달';

  @override
  String get tileReferFriendsDesc => '보고서를 실행하는 친구 5명을 추천하면 스탠다드 무료 한 달을 받으세요!';

  @override
  String get tileUserPacksTitle => '사용자 제출\n지표 팩';

  @override
  String get tileUserPacksDesc =>
      '커뮤니티가 만든 지표 팩을 검색하고 구매하세요. 직접 제출하여 크레딧을 적립하세요!';

  @override
  String get tileBrowseButton => '탐색';

  @override
  String get purchaseDialogCancel => '취소';

  @override
  String installedPacksAccordionSubtitle(int count) {
    return '$count개 지표 — 커뮤니티 팩';
  }
}
