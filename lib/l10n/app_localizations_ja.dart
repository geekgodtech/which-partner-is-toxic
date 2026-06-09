// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'AI関係性毒性アナライザー';

  @override
  String get psychologicalMetrics => '心理的指標';

  @override
  String get metricsDescription =>
      '選択する指標が少ないほど、それらの行動についてより深く集中的な分析が得られます。選択する指標が多いほど、指標ごとの詳細は少なくなりますが、より広範なレポートが得られます。';

  @override
  String get selectSMS => 'SMS / RCSチャットを選択';

  @override
  String get selectDiscordChannel => 'Discordチャンネルを選択';

  @override
  String get lightMode => 'ライト';

  @override
  String get darkMode => 'ダーク';

  @override
  String get discordSetupTitle => 'Discordの設定方法';

  @override
  String get discordSetupDescription =>
      'アプリでDiscordチャンネル分析を有効にするには、次の手順に従ってください:';

  @override
  String get discordStep1Title => 'Discordボットを作成';

  @override
  String get discordStep1Description =>
      'discord.com/developersに移動し、新しいアプリケーションを作成してボットを追加します。ボットトークンをコピーします。';

  @override
  String get discordStep2Title => 'ボット権限を有効にする';

  @override
  String get discordStep2Description =>
      'ボット設定で「Message Content Intent」と「Server Members Intent」を有効にします。';

  @override
  String get discordStep3Title => 'ボットをサーバーに招待';

  @override
  String get discordStep3Description =>
      'OAuth2 URLジェネレーターを使用して、必要な権限でボットをDiscordサーバーに招待します。';

  @override
  String get discordStep4Title => 'アプリで設定';

  @override
  String get discordStep4Description =>
      'アプリ設定にボットトークンを入力します（ヘルプが必要な場合はサポートにお問い合わせください）。';

  @override
  String get discordStep5Title => 'チャンネルを選択';

  @override
  String get discordStep5Description =>
      '「Discordチャンネルを選択」をタップし、サーバーを選択してから、分析するチャンネルを選択します。';

  @override
  String get gotIt => '了解';

  @override
  String get selectFile => 'ファイルを選択';

  @override
  String get analyzeSelectedMetrics => '選択した指標を分析';

  @override
  String get analyze20RandomMetrics => '20のランダムな指標を分析';

  @override
  String get membershipOptions => 'メンバーシップオプション';

  @override
  String get free => '無料';

  @override
  String get oneTimeUnlock => 'レポートの一回限りのロック解除';

  @override
  String get standard => 'スタンダード';

  @override
  String get discordAddon => 'Discordアドオン';

  @override
  String get analyze => '分析';

  @override
  String get report => 'レポート';

  @override
  String get pdfReport => 'PDFレポート';

  @override
  String get openPdf => 'PDFを開く';

  @override
  String get sharePdf => 'PDFを共有';

  @override
  String get printPdf => 'PDFを印刷';

  @override
  String get closePdfPreview => 'PDFプレビューウィンドウを閉じる';

  @override
  String get openPdfPreview => 'PDFプレビューウィンドウを開く';

  @override
  String get pdfPreviewDescription =>
      '埋め込まれたPDFウィンドウは、レポートをコンパクトに保つため最初は閉じた状態で始まります。';

  @override
  String get notNow => '後で';

  @override
  String get unlockThisReport => 'このレポートのロックを解除 - \$20';

  @override
  String get joinStandard => 'スタンダードに加入 - \$9.99/月';

  @override
  String get instantUnlockTitle => '即時レポートロック解除 - \$20';

  @override
  String get instantUnlockDescription =>
      'これは現在のレポートのみのロックを解除する一回限りの購入です。サブスクリプションは不要です。今後のレポートには個別のロック解除またはメンバーシップが必要です。\n\n支払いを続行しますか？';

  @override
  String get purchaseFor20 => '\$20で購入';

  @override
  String get share => '共有';

  @override
  String get print => '印刷';

  @override
  String get save => '保存';

  @override
  String get cancel => 'キャンセル';

  @override
  String get ok => 'OK';

  @override
  String get loading => '読み込み中...';

  @override
  String get error => 'エラー';

  @override
  String get success => '成功';

  @override
  String get conversations => '会話';

  @override
  String get messages => 'メッセージ';

  @override
  String get selectConversation => '会話を選択';

  @override
  String get selectSmsConversation => 'SMS / RCSチャットを選択';

  @override
  String get searchConversations => '会話を検索...';

  @override
  String get loadingConversations => '会話を読み込み中...';

  @override
  String get errorLoadingConversations => '会話の読み込みエラー';

  @override
  String get selectConversationToAnalyze => '分析する会話を選択';

  @override
  String get analyzeWithSelectedMetrics => '選択した指標で分析';

  @override
  String get loadConversationAndSelectMetric => '会話を読み込み、少なくとも1つの指標を選択してください';

  @override
  String get selectAtLeastOneMetric => 'レポートを実行するには、少なくとも1つの指標を選択する必要があります。';

  @override
  String get spinningMetricWheel => '指標ホイールを回転中...';

  @override
  String get loadConversationToAnalyze => '分析する会話を読み込む';

  @override
  String get noConversationsFound => '会話が見つかりません';

  @override
  String get permissionsRequired => '権限が必要です';

  @override
  String get smsPermission => 'テキストメッセージ';

  @override
  String get contactsPermission => '連絡先';

  @override
  String get smsPermissionDescription => '関係パターンについてSMS会話を分析するため';

  @override
  String get contactsPermissionDescription => '電話番号の代わりに連絡先名を表示するため';

  @override
  String get analyzingMessage => 'AIが心理分析を生成している間お待ちください...';

  @override
  String get analyzingStatus => '会話を分析中...';

  @override
  String get analyzingSubMessage =>
      'お待ちください。このプロセスは、接続速度と選択した指標の数によって最大1分かかる場合があります';

  @override
  String get unlockFullReport => 'このレポート全体のロックを解除して表示';

  @override
  String get fullReportLocked => '完全なレポートはロックされています';

  @override
  String get upgradeToUnlock =>
      'メンバーシップをアップグレードして、すべての指標と詳細な洞察を含む完全な心理分析レポートのロックを解除してください。';

  @override
  String get language => '言語';

  @override
  String get english => '英語';

  @override
  String get spanish => 'スペイン語';

  @override
  String get french => 'フランス語';

  @override
  String get german => 'ドイツ語';

  @override
  String get italian => 'イタリア語';

  @override
  String get portuguese => 'ポルトガル語';

  @override
  String get dutch => 'オランダ語';

  @override
  String get russian => 'ロシア語';

  @override
  String get chinese => '中国語';

  @override
  String get japanese => '日本語';

  @override
  String get korean => '韓国語';

  @override
  String get arabic => 'アラビア語';

  @override
  String get hindi => 'ヒンディー語';

  @override
  String get turkish => 'トルコ語';

  @override
  String get polish => 'ポーランド語';

  @override
  String get ukrainian => 'ウクライナ語';

  @override
  String get runAnotherAnalysis => '別の分析を実行しますか？';

  @override
  String get becomeMemberTitle => 'メンバーになって完全な分析レポートを取得';

  @override
  String get becomeMemberSubtitle => '分析が必要な会話やレポートに合ったアクセスレベルを選択してください。';

  @override
  String get benefitAnalyzeSms => 'SMSテキストメッセージを分析';

  @override
  String get benefitReportPreview => 'レポートのプレビューを実行';

  @override
  String get benefitViewPartialReport => 'レポートの約25%を表示';

  @override
  String get benefitLockedDetails => '完全なレポートの詳細はロック済み';

  @override
  String get currentFreeAccess => '現在の無料アクセス';

  @override
  String get benefitUnlockCurrentReport => 'この完全なレポートのロックを解除';

  @override
  String get benefitNoSubscription => 'サブスクリプション不要';

  @override
  String get benefitSavePrintShareThis => 'このレポートを保存、印刷、共有';

  @override
  String get benefitBestSingleAnalysis => '分析が1回だけ必要な場合に最適';

  @override
  String get unlockThisReportShort => 'このレポートのロックを解除';

  @override
  String get benefitFullSmsReport => '完全なSMS分析レポート';

  @override
  String get benefitSavePrintSharePdf => 'PDFレポートを保存、印刷、共有';

  @override
  String get benefitTenReports => '24時間ごとに10件のレポート';

  @override
  String get benefitBestTextReview => 'テキストメッセージの関係レビューに最適';

  @override
  String get benefitDateRangeFilter => '日付範囲で分析をフィルタリング';

  @override
  String get signUpStandard => 'スタンダードメンバーシップに登録';

  @override
  String get benefitAddToStandard => 'スタンダードメンバーシップに追加';

  @override
  String get benefitAnalyzeDiscord => 'Discordサーバーのチャットを分析';

  @override
  String get benefitRequiresBot => 'ボットのインストールが必要';

  @override
  String get benefitBestGamers => 'ゲーマーとDiscordコミュニティに最適';

  @override
  String get addDiscordAnalysis => 'Discord分析を追加';

  @override
  String get requiresStandardMembership => 'スタンダードメンバーシップが必要';

  @override
  String get comingSoon => '近日公開';

  @override
  String get comingSoonWithNextUpdate => '次回のアップデートで近日公開：';

  @override
  String get proMembershipTier => 'Proメンバーシップ層 - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plusメンバーシップ層 - \$24.99';

  @override
  String get proGetsLabel => 'Proの内容：';

  @override
  String get proGetsDescription =>
      '次のような他のすべての人気のメッセージングおよびソーシャルメディアプラットフォームのチャットスレッドを分析：';

  @override
  String get proPlatformsList =>
      'LinkedIn、WhatsApp、Instagram、Facebook Messenger、Telegram、X (Twitter)、メール、カレンダー';

  @override
  String get proPlusGetsLabel => 'Pro-Plusの内容：';

  @override
  String get proPlusGetsDescription => 'Proのすべての機能に加え、割引価格のDiscordアドオン。';

  @override
  String get purchaseSuccessfulUnlocked => '購入成功！レポートのロックが解除されました。';

  @override
  String get purchaseFailed => '購入に失敗しました。もう一度お試しください。';

  @override
  String get membershipActivated => 'メンバーシップが有効になりました！';

  @override
  String get dateRangeFilter => '日付範囲フィルター';

  @override
  String get dateRangeOptional => '(オプション)';

  @override
  String get startDate => '開始日';

  @override
  String get endDate => '終了日';

  @override
  String get clear => 'クリア';

  @override
  String get dateRangeRequiresMembership => 'Standardメンバーシップ以上が必要';

  @override
  String selectUpToCount(Object current, Object max) {
    return '最大$max個選択。現在：$current';
  }

  @override
  String get clearSelections => '選択をクリア';

  @override
  String analyzeRandomMetrics(Object count) {
    return '$count個のランダム指標を分析';
  }

  @override
  String get saveSelections => '選択を保存';

  @override
  String get loadSelections => '選択を読み込み';

  @override
  String get saveMetricListName => 'メトリクスリストを保存';

  @override
  String get enterListName => 'このメトリクスリストの名前を入力:';

  @override
  String get chooseSavedMetrics => '保存されたメトリクスリストを選択:';

  @override
  String get noSavedLists => '現在読み込む保存済みメトリクスリストがありません。';

  @override
  String get metricListSaved => 'メトリクスリストが正常に保存されました。';

  @override
  String get metricListLoaded => 'メトリクスリストが正常に読み込まれました。';

  @override
  String get filters => 'フィルター';

  @override
  String get sortBy => '並べ替え：';

  @override
  String get recent => '最新';

  @override
  String get name => '名前';

  @override
  String get count => '数';

  @override
  String get namedOnly => '名前付きのみ';

  @override
  String get minMessages => '最小メッセージ数：';

  @override
  String get minimumMessages => '最小メッセージ数：';

  @override
  String get executiveSummary => 'エグゼクティブサマリー';

  @override
  String get metricScores => 'メトリックスコア';

  @override
  String get contextualEvidenceExamples => '文脈的証拠の例';

  @override
  String get neutralSynthesis => '中立の総合';

  @override
  String analysisOfSender(Object sender) {
    return '$senderの分析（送信者）';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return '$receiverの分析（受信者）';
  }

  @override
  String get finalConclusion => '最終結論';

  @override
  String get metric_1_name => '軽蔑';

  @override
  String get metric_1_description =>
      '優越感、嫌悪、嘲笑、目を回す言葉、または一方のパートナーを他方より下に置く侮辱を探します。';

  @override
  String get metric_2_name => '防衛的';

  @override
  String get metric_2_description =>
      '反射的な自己防衛、反撃、言い訳、および相手の苦情を考慮することを拒否することを追跡します。';

  @override
  String get metric_3_name => '壁を作る';

  @override
  String get metric_3_description =>
      '関与を避けるためにシャットダウン、撤退、無視、回答拒否、または会話の終了を特定します。';

  @override
  String get metric_4_name => '批判';

  @override
  String get metric_4_description => '特定の行動、ニーズ、または出来事ではなく、性格または人格への攻撃を検出します。';

  @override
  String get metric_5_name => 'ガスライティングの指標';

  @override
  String get metric_5_description => '誰かが記憶、知覚、正気、または経験の正当性を疑わせる試みをフラグします。';

  @override
  String get metric_6_name => '責任転嫁';

  @override
  String get metric_6_description =>
      '責任が直接認められるのではなく、他方のパートナーにリダイレクトされるかどうかを測定します。';

  @override
  String get metric_7_name => 'エスカレーションパターン';

  @override
  String get metric_7_description =>
      '解決に向かうのではなく、トーン、非難、強度、または脅威が増加するかどうかを評価します。';

  @override
  String get metric_8_name => '修復の試みの認識';

  @override
  String get metric_8_description =>
      '謝罪、ユーモア、一時停止、安心、または平和の提案が認識され受け入れられるかどうかを確認します。';

  @override
  String get metric_9_name => '責任の言語';

  @override
  String get metric_9_description => '害の明確な所有権、特定の責任、および行動を変える意欲を探します。';

  @override
  String get metric_10_name => '境界の尊重';

  @override
  String get metric_10_description =>
      '時間、プライバシー、体、感情、または接触に関する設定された制限が尊重されるかどうかを評価します。';

  @override
  String get metric_11_name => '強制的な支配の指標';

  @override
  String get metric_11_description => '威嚇、制限、監視、依存、または選択と移動の支配のパターンをフラグします。';

  @override
  String get metric_12_name => '脅迫の言語';

  @override
  String get metric_12_description => '安全、放棄、暴露、報復、または罰に関連する明示的または暗黙の脅威を特定します。';

  @override
  String get metric_13_name => '軽視';

  @override
  String get metric_13_description =>
      '懸念を無視し、ニーズを重要でないと扱い、苦痛を真剣に受け取ることを拒否することを検出します。';

  @override
  String get metric_14_name => '無効化';

  @override
  String get metric_14_description => '他者の感情を認めるのではなく、否定、嘲笑、または修正を測定します。';

  @override
  String get metric_15_name => '共感の表現';

  @override
  String get metric_15_description => '視点の取得、ケア、感情の認識、および他者の経験への懸念を探します。';

  @override
  String get metric_16_name => '相互性';

  @override
  String get metric_16_description => '注意、努力、謝罪、妥協、感情的サポートが双方向に流れるかどうかを評価します。';

  @override
  String get metric_17_name => '感情調整';

  @override
  String get metric_17_description =>
      '接地を保ち、一時停止し、自己を落ち着かせ、爆発的な反応性なしにコミュニケーションする能力を評価します。';

  @override
  String get metric_18_name => '害としての皮肉';

  @override
  String get metric_18_description =>
      '軽蔑、罰、屈辱、または敵意をユーモアとして偽装するために使用される皮肉をフラグします。';

  @override
  String get metric_19_name => '名前呼び';

  @override
  String get metric_19_description =>
      '軽蔑的なラベル、侮辱、個人に向けられた冒涜、またはアイデンティティに基づく攻撃を特定します。';

  @override
  String get metric_20_name => '沈黙処理パターン';

  @override
  String get metric_20_description => '罰、支配、回避、または接続の撤回として使用される沈黙を追跡します。';

  @override
  String get metric_21_name => '嫉妬の枠組み';

  @override
  String get metric_21_description => 'ケアの証明として提示される疑念、所有欲、非難、または嫉妬を評価します。';

  @override
  String get metric_22_name => '孤立の圧力';

  @override
  String get metric_22_description =>
      'パートナーを友人、家族、サポートシステム、または外部の視点から分離する努力をフラグします。';

  @override
  String get metric_23_name => '財政支配の指標';

  @override
  String get metric_23_description => 'お金、支出、雇用、アカウントへのアクセス、または財政的独立の支配を探します。';

  @override
  String get metric_24_name => 'プライバシーの侵害の指標';

  @override
  String get metric_24_description =>
      '覗き見、パスワード要求、デバイスチェック、位置追跡、またはプライバシーの侵害を検出します。';

  @override
  String get metric_25_name => '謝罪の具体性';

  @override
  String get metric_25_description =>
      '謝罪が曖昧なままであるのではなく、正確な害、影響、および将来の修正を名前で指定するかどうかを測定します。';

  @override
  String get metric_26_name => '許しの圧力';

  @override
  String get metric_26_description =>
      '修復が発生する前に、先に進み、すぐに許し、または害についての議論を停止する要求をフラグします。';

  @override
  String get metric_27_name => '最小化';

  @override
  String get metric_27_description =>
      '害を軽視し、深刻な懸念をドラマと呼び、影響を減らして責任を回避することを検出します。';

  @override
  String get metric_28_name => '投影';

  @override
  String get metric_28_description => '話し手自身の行動、動機、または未解決の感情を反映する非難を探します。';

  @override
  String get metric_29_name => '中断パターン';

  @override
  String get metric_29_description => '遮断、話し越し、完了の拒否、または会話のターンの制御を追跡します。';

  @override
  String get metric_30_name => 'トピックの転換';

  @override
  String get metric_30_description => '主題の変更、無関係な問題の提起、または中心的な懸念の回避を特定します。';

  @override
  String get metric_31_name => '解決の指向';

  @override
  String get metric_31_description =>
      'メッセージが解決策、明確さ、合意、および次のステップを目指しているかどうかを測定します。';

  @override
  String get metric_32_name => '共同問題解決';

  @override
  String get metric_32_description =>
      '協力的な言語、共有責任、ブレインストーミング、および実行可能な妥協を見つける意欲を評価します。';

  @override
  String get metric_33_name => '感情的な洪水';

  @override
  String get metric_33_description => '圧倒、パニック、シャットダウン、螺旋、または紛争中の処理不能を検出します。';

  @override
  String get metric_34_name => '恐怖反応の手がかり';

  @override
  String get metric_34_description =>
      '宥和、慎重な言葉遣い、恐怖、安全上の懸念、またはパートナーの反応への恐怖を探します。';

  @override
  String get metric_35_name => '主張の一貫性';

  @override
  String get metric_35_description => 'メッセージと時間を通じて説明が内部的に一貫しているかどうかを評価します。';

  @override
  String get metric_36_name => '証拠に基づく記憶';

  @override
  String get metric_36_description =>
      '主張が具体的な出来事、引用、タイムライン、または観察可能な行動を参照しているかどうかを確認します。';

  @override
  String get metric_37_name => '要求撤退パターン';

  @override
  String get metric_37_description =>
      '一方のパートナーが回答または変更を追求し、他方が回避、シャットダウン、または退出することを追跡します。';

  @override
  String get metric_38_name => '力の不均衡の指標';

  @override
  String get metric_38_description => '不平等な決定権、結果への恐怖、依存、威嚇、または一方的な支配をフラグします。';

  @override
  String get metric_39_name => '尊重ある不同意';

  @override
  String get metric_39_description => '紛争が尊厳、好奇心、および不同意を低下させずに維持するかどうかを測定します。';

  @override
  String get metric_40_name => '破壊と修復のサイクル';

  @override
  String get metric_40_description => '紛争が認識、再接続、および実際の修復に続くかどうかを評価します。';

  @override
  String get metric_41_name => '愛情の撤回';

  @override
  String get metric_41_description =>
      '愛、温かさ、セックス、注意、または安心が罰またはてことして差し控えられていることを検出します。';

  @override
  String get metric_42_name => '公的な屈辱の参照';

  @override
  String get metric_42_description => '他者の前でパートナーを恥ずかしくさせる脅威、冗談、または行動をフラグします。';

  @override
  String get metric_43_name => '物質関連の紛争の手がかり';

  @override
  String get metric_43_description => '攻撃性、信頼性、紛争、または害に関連するアルコールまたは薬物の使用を探します。';

  @override
  String get metric_44_name => '育児紛争の圧力';

  @override
  String get metric_44_description =>
      '紛争またはてことして使用される子供、監護権、育児の役割、または親の罪悪感を特定します。';

  @override
  String get metric_45_name => '性的境界の尊重';

  @override
  String get metric_45_description => '同意、圧力、拒否、快適さ、タイミング、および性的自律性への尊重を評価します。';

  @override
  String get metric_46_name => 'デジタルハラスメントの指標';

  @override
  String get metric_46_description =>
      '繰り返される不要なメッセージ、スパムコール、オンライン圧力、監視、またはプラットフォームベースの脅迫を追跡します。';

  @override
  String get metric_47_name => '監視または監視の言語';

  @override
  String get metric_47_description => '居場所の確認、証明の要求、行動の追跡、または継続的な検証をフラグします。';

  @override
  String get metric_48_name => '未来の指向';

  @override
  String get metric_48_description =>
      'パートナーが将来の改善、コミットメント、計画、または建設的な方向について議論するかどうかを測定します。';

  @override
  String get metric_49_name => '安全計画の信号';

  @override
  String get metric_49_description =>
      '助けを求め、距離を作り、害を文書化し、身体的/感情的な安全を計画する試みを探します。';

  @override
  String get metric_50_name => '相互のデエスカレーションの試み';

  @override
  String get metric_50_description =>
      '一時停止、落ち着いた言葉、より柔らかいトーン、タイムアウト、および両方のパートナーが強度を減らす試みを追跡します。';

  @override
  String get metric_51_name => '安全な愛着の手がかり';

  @override
  String get metric_51_description => '信頼、直接的な安心、感情的な可用性、および親密さと独立への快適さを特定します。';

  @override
  String get metric_52_name => '不安な愛着の活性化';

  @override
  String get metric_52_description => '抗議行動、緊急の安心の必要性、放棄の恐怖、および距離への過敏性をフラグします。';

  @override
  String get metric_53_name => '回避的な愛着の距離';

  @override
  String get metric_53_description =>
      '感情的な最小化、独立の防御、脆弱性からの撤退、またはニーズへの不快感を検出します。';

  @override
  String get metric_54_name => '無秩序な愛着の信号';

  @override
  String get metric_54_description =>
      '接近-回避サイクル、ニーズと混ざった恐怖、混乱した反応、または混乱した親密さのパターンを探します。';

  @override
  String get metric_55_name => '感情的な出札と応答';

  @override
  String get metric_55_description =>
      '注意、快適さ、または接続への招待と、それらが受け入れられるか見逃されるかを測定します。';

  @override
  String get metric_56_name => '接続からの離脱';

  @override
  String get metric_56_description => '親密さまたはサポートへの出札を無視、却下、または応答しないことをフラグします。';

  @override
  String get metric_57_name => '接続への対立';

  @override
  String get metric_57_description => '愛情、脆弱性、または修復の試みに対する敵意または罰の反応を検出します。';

  @override
  String get metric_58_name => '肯定的な感情の上書き';

  @override
  String get metric_58_description => '寛大さ、疑いの余地、愛着、およびケアを通じて紛争を解釈することを探します。';

  @override
  String get metric_59_name => '否定的な感情の上書き';

  @override
  String get metric_59_description =>
      '悪意の仮定、中立のメッセージの否定的解釈、および持続的な敵対的な枠組みをフラグします。';

  @override
  String get metric_60_name => '厳しい開始パターン';

  @override
  String get metric_60_description => '要求ではなく、非難、攻撃、軽蔑、または責任で始まる会話を特定します。';

  @override
  String get metric_61_name => 'ソフトな開始パターン';

  @override
  String get metric_61_description =>
      '感情、ニーズ、具体的な要求、および非難のない言語を使用した穏やかな開始を探します。';

  @override
  String get metric_62_name => '生理学的な自己鎮静';

  @override
  String get metric_62_description =>
      '紛争を続ける前に一時停止、呼吸、スペースを取る、または体を調整する試みを評価します。';

  @override
  String get metric_63_name => '紛争回避パターン';

  @override
  String get metric_63_description =>
      '必要なトピック、不快感、不一致、または感情的な誠実さの繰り返される回避を追跡します。';

  @override
  String get metric_64_name => '不安定な紛争スタイル';

  @override
  String get metric_64_description => '関与と修復をまだ含む可能性がある直接的な表現を持つ高強度の紛争を検出します。';

  @override
  String get metric_65_name => '検証する紛争スタイル';

  @override
  String get metric_65_description => 'パートナーが不一致しながら互いの視点を認めるかどうかを測定します。';

  @override
  String get metric_66_name => '敵対的な紛争スタイル';

  @override
  String get metric_66_description => '頻繁な批判、軽蔑、防御、攻撃、および対立的な枠組みをフラグします。';

  @override
  String get metric_67_name => '敵対的-離脱パターン';

  @override
  String get metric_67_description => '冷たい敵意、感情的な離脱、軽蔑、および低い修復動機を特定します。';

  @override
  String get metric_68_name => '妥協の意欲';

  @override
  String get metric_68_description => '柔軟性、交渉、中間の提案、および両方のニーズを尊重する犠牲を探します。';

  @override
  String get metric_69_name => '影響の受容';

  @override
  String get metric_69_description => 'パートナーの感情、ニーズ、または視点に影響されることへの開放性を測定します。';

  @override
  String get metric_70_name => '膠着した紛争の信号';

  @override
  String get metric_70_description =>
      '価値、夢、アイデンティティ、または慢性的な不適合に関連する繰り返される未解決の問題をフラグします。';

  @override
  String get metric_71_name => '解決可能な問題の枠組み';

  @override
  String get metric_71_description => '具体的な合意につながる可能性のある実用的で具体的な問題定義を検出します。';

  @override
  String get metric_72_name => '共有された意味の参照';

  @override
  String get metric_72_description =>
      '共有された関係の物語を作成する価値、儀式、目標、記憶、またはアイデンティティの言語を探します。';

  @override
  String get metric_73_name => '愛のマップの意識';

  @override
  String get metric_73_description =>
      'パートナーの内面世界、ストレス要因、好み、恐怖、および日常生活の知識を評価します。';

  @override
  String get metric_74_name => '愛着と称賛';

  @override
  String get metric_74_description => '感謝、尊重、温かさ、称賛、感謝、および肯定的な見方を特定します。';

  @override
  String get metric_75_name => '感情的労働の不均衡';

  @override
  String get metric_75_description =>
      '不釣り合いな計画、鎮静、記憶、説明、または関係の維持を担うパートナーをフラグします。';

  @override
  String get metric_76_name => '精神的負荷の却下';

  @override
  String get metric_76_description =>
      '見えない計画作業、家庭の調整、スケジューリング、または責任の追跡の最小化を検出します。';

  @override
  String get metric_77_name => '武器化された無能の手がかり';

  @override
  String get metric_77_description => '公平な責任を避けるために無能、混乱、または無力を主張することを探します。';

  @override
  String get metric_78_name => 'トラウマトリガーの感受性';

  @override
  String get metric_78_description => 'トリガー、トラウマ反応、および脆弱なトピックの慎重な扱いへの意識を測定します。';

  @override
  String get metric_79_name => '過度警戒の手がかり';

  @override
  String get metric_79_description =>
      '危険のスキャン、トーンの過度な監視、ミスへの恐怖、または継続的な感情的な警戒をフラグします。';

  @override
  String get metric_80_name => '放棄の恐怖の言語';

  @override
  String get metric_80_description =>
      '残される、置き換えられる、無視される、捨てられる、または感情的に見捨てられる恐怖を検出します。';

  @override
  String get metric_81_name => '安心を求めるパターン';

  @override
  String get metric_81_description =>
      '愛、コミットメント、安全、または継続的な関心の証明の繰り返される要求を追跡します。';

  @override
  String get metric_82_name => '追求者-距離者サイクル';

  @override
  String get metric_82_description => '一方のパートナーが親密さを追求し、他方が距離を増やすことを特定します。';

  @override
  String get metric_83_name => '怨恨の蓄積';

  @override
  String get metric_83_description =>
      '蓄積された不満、繰り返される過去の参照、苦味、および未解決の感情的な借金を探します。';

  @override
  String get metric_84_name => 'スコアキープ行動';

  @override
  String get metric_84_description =>
      'レバレッジを得るための過失、恩恵、犠牲、またはミスの取引的なカウントをフラグします。';

  @override
  String get metric_85_name => '条件付きの愛情';

  @override
  String get metric_85_description =>
      'コンプライアンスが達成された場合にのみ提供される愛、承認、アクセス、または温かさを検出します。';

  @override
  String get metric_86_name => 'ラブボミングの指標';

  @override
  String get metric_86_description =>
      '愛着または支配を加速させるために使用される激しい愛、約束、圧力、または理想化をフラグします。';

  @override
  String get metric_87_name => 'フーバリングの試み';

  @override
  String get metric_87_description =>
      '罪悪感、郷愁、約束、危機、または突然の愛を通じて誰かを引き戻す試みを特定します。';

  @override
  String get metric_88_name => 'DARVOパターン';

  @override
  String get metric_88_description => '害について対峙されたときに否定、攻撃、および被害者-加害者の反転を検出します。';

  @override
  String get metric_89_name => '被害者の立場パターン';

  @override
  String get metric_89_description =>
      '責任を回避するか、引き起こされた害から注意をそらす繰り返される自己被害者化をフラグします。';

  @override
  String get metric_90_name => '道徳的優越性の枠組み';

  @override
  String get metric_90_description => '紛争を支配するために使用される正義、純潔の主張、または道徳的優越性を探します。';

  @override
  String get metric_91_name => '人格暗殺';

  @override
  String get metric_91_description =>
      '特定の行動ではなく、アイデンティティ、誠実性、精神的健康、または価値への広範な攻撃を検出します。';

  @override
  String get metric_92_name => '三角測量の指標';

  @override
  String get metric_92_description =>
      'パートナーに圧力をかけ、比較し、検証し、または不安定にするために第三者を紛争に巻き込むことをフラグします。';

  @override
  String get metric_93_name => '社会的比較の圧力';

  @override
  String get metric_93_description =>
      '恥または強制に使用される元恋人、友人、他のカップル、または理想への比較を探します。';

  @override
  String get metric_94_name => '自律性のサポート';

  @override
  String get metric_94_description =>
      '独立した選択、友情、目標、境界、および個人のエージェンシーへの尊重を測定します。';

  @override
  String get metric_95_name => '同意と選択の尊重';

  @override
  String get metric_95_description => '決定が圧力、罪悪感、脅威、または操作なしに自由に行われるかどうかを評価します。';

  @override
  String get metric_96_name => '協力的な計画';

  @override
  String get metric_96_description =>
      '共有されたスケジューリング、共同決定、調整された責任、および実用的なフォロースルーを探します。';

  @override
  String get metric_97_name => '修復のフォロースルー';

  @override
  String get metric_97_description => '約束された変更が後で行動に反映されるかどうかを測定し、言葉だけではありません。';

  @override
  String get metric_98_name => '変更された行動の証拠';

  @override
  String get metric_98_description =>
      '学習、調整、または有害な行動の減少を示す観察可能で繰り返される行動を確認します。';

  @override
  String get metric_99_name => '感情的安全の言語';

  @override
  String get metric_99_description =>
      '正直さを招き、恐怖を下げ、尊厳を保護し、安全な表現を安心させる言語を特定します。';

  @override
  String get metric_100_name => '関係の矛盾';

  @override
  String get metric_100_description =>
      '不確実性、混合されたコミットメント、プッシュプルメッセージ、または継続する明確でない願望を検出します。';

  @override
  String get unableToOpenConversations => '会話を開けません';

  @override
  String get unableToOpenConversationsBody =>
      '会話の読み込み中にエラーが発生しました。もう一度お試しください。';

  @override
  String get unableToLoadConversationsBody => '会話を読み込めません。権限を確認して、もう一度お試しください。';

  @override
  String get errorLoadingConversationsBody => '会話の読み込みエラー。もう一度お試しください。';

  @override
  String get smsPermissionRequired => 'SMS権限が必要です';

  @override
  String get smsPermissionRequiredBody =>
      'SMS会話を分析するには、メッセージを読み取る権限が必要です。プライバシーは重要です — メッセージはローカルでのみ分析され、サーバーに保存されることはありません。';

  @override
  String get grantSmsPermission => 'SMS権限を許可';

  @override
  String get noSmsConversationsFound => 'SMS会話が見つかりません';

  @override
  String get noConversationsMatchSearch => '検索に一致する会話がありません';

  @override
  String get noSmsMessagesOnDevice => 'このデバイスにSMSメッセージがありません';

  @override
  String get tryDifferentSearch => '別の検索語を試してください';

  @override
  String get clearSearch => '検索をクリア';

  @override
  String selectedFile(String filename) {
    return '選択済み: $filename';
  }

  @override
  String get invalidFile => '無効なファイル';

  @override
  String get fileImport => 'ファイルをインポート';

  @override
  String get fileImportNotImplemented => 'このファイルタイプのファイル解析はまだ実装されていません。';

  @override
  String get errorPickingFile => 'ファイルを開けません。もう一度お試しください。';

  @override
  String get readyToCapture => 'キャプチャ準備完了';

  @override
  String get readyToCaptureBody =>
      '今すぐメッセージアプリに移動してスクリーンショットの撮影を開始してください。\n\n完了したらこのアプリに戻り、「完了して処理」をタップしてください。';

  @override
  String get noScreenshotsToProcess => '処理するスクリーンショットがありません。';

  @override
  String processingScreenshot(int current, int total) {
    return 'スクリーンショット $current / $total を処理中...';
  }

  @override
  String get noMessagesFound => 'メッセージが見つかりません';

  @override
  String get noMessagesFoundBody =>
      'スクリーンショットからメッセージを抽出できませんでした。\n\nスクリーンショットが会話を明確に表示していることを確認してください。';

  @override
  String loadedMessages(int count) {
    return 'スクリーンショットから $count 件のメッセージを読み込みました';
  }

  @override
  String get processingError => '処理エラー';

  @override
  String get processingErrorBody => 'スクリーンショットの処理中にエラーが発生しました。もう一度お試しください。';

  @override
  String metricListSavedAs(String name) {
    return '選択が \"$name\" として保存されました。';
  }

  @override
  String metricListLoadedName(String name) {
    return '選択 \"$name\" が取得され、適用されました。';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$name から $count 件のメッセージを読み込みました';
  }

  @override
  String get loadButton => '読み込み';

  @override
  String get photoPermissionRequired => 'スクリーンショットを検出するにはフォトライブラリ権限が必要です。';

  @override
  String get initializingConnection => '安全な接続を初期化中...';

  @override
  String get configurationRequired => '設定が必要です';

  @override
  String get goBack => '戻る';

  @override
  String get enableDateRangeFiltering => '日付範囲フィルタリングを有効にする';

  @override
  String get clearSelectedDateRange => '選択した日付範囲をクリア';

  @override
  String get largeThreadNoticeTitle => 'ユーザーへの通知';

  @override
  String get largeThreadNoticeBody =>
      '例外的に大きなテキストスレッドを扱う場合、このアプリの一部の読み込み画面が1分半を超えることがあります。\n\nアプリはフリーズしていません。回転するステータスインジケーターが表示されている場合、アプリはまだ読み込んでいます。\n\nこれらの場合は忍耐強くお待ちください。他のアプリと比較して読み込み時間が長くなる可能性があります。特に50,000件のメッセージがあるスレッドのような大規模なデータセットの場合。';

  @override
  String get neverShowThisAgain => 'このメッセージを再度表示しない';

  @override
  String loadingConversationWith(String name) {
    return '会話を読み込み中\n$name と…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. メッセージアプリを開いて会話を選択します\n2. 分析したい最も古いメッセージまでスクロールします\n3. 下の「キャプチャ開始」をタップします\n4. 会話をスクロールしながらスクリーンショットを撮ります\n5. 完了したら「完了して処理」をタップします';

  @override
  String get howToCaptureIosMessages => 'iOSメッセージのキャプチャ方法';

  @override
  String get deepSeekApiKey => 'DeepSeek APIキー';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'AI分析を有効にするためにDeepSeek APIキーを入力してください。';

  @override
  String get getYourApiKeyFrom => 'APIキーを取得: https://platform.deepseek.com';

  @override
  String get apiKey => 'APIキー';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely => 'APIキーはデバイスに安全に保存され、共有されることはありません。';

  @override
  String get pleaseEnterApiKey => 'APIキーを入力してください';

  @override
  String get apiKeySavedSuccessfully => 'APIキーが正常に保存されました！';

  @override
  String get pleaseBePatientLongerTextThreads =>
      '忍耐強くお待ちください、長いテキストスレッドのデータセットは読み込みにかなり時間がかかります';

  @override
  String get almostThereBigOne => 'もうすぐ完了、わあ、これは大きかったですね';

  @override
  String get pleaseBePatientLargeDatasets =>
      '忍耐強くお待ちください、大きなデータセットでは読み込み時間が1分半を超える可能性があります';

  @override
  String continuingToLoadMassiveThread(String name) {
    return '巨大なスレッドを $name と共に読み込み中…';
  }

  @override
  String get noMessagesInDateRange =>
      '選択された日付範囲内にメッセージが見つかりませんでした。別の日付を選択するか、日付フィルターをクリアしてください。';

  @override
  String get purchaseCustomMetricTileTitle => 'カスタム指標を購入';

  @override
  String get purchaseCustomMetricTileDescription =>
      '\$4.99の一回限りの料金で、カスタム指標名と定義を入力し、他の指標と一緒に永久に保存して、将来のあらゆる分析で使用できます。無制限のカスタム指標を購入可能です。';

  @override
  String get purchaseCustomMetricConfirmTitle => 'カスタム指標を購入';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'カスタム指標スロット1つをアンロックするために\$4.99（一回限り）が請求されます。\n\nカスタム指標名と定義は保存後永久に変更できないため、慎重に選択してください。';

  @override
  String get purchaseCustomMetricConfirmButton => '購入 — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'カスタム指標名';

  @override
  String get purchaseCustomMetricEnterNamePrompt => 'カスタム指標の名前を入力してください：';

  @override
  String get purchaseCustomMetricNameHint => '指標名';

  @override
  String get purchaseCustomMetricConfirmNameTitle => '指標名を確認';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => '入力した内容：\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  これは最終的で、永久に変更できません。';

  @override
  String get purchaseCustomMetricReenterName => 'やり直し — 名前を再入力';

  @override
  String get purchaseCustomMetricSaveName => 'OK — 指標名を保存';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return '定義: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'カスタム指標「$name」の意味を入力してください';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'この指標が何を意味するか、どのような行動を探すか、関係性ダイナミクスにどう適用されるかを説明してください...';

  @override
  String get purchaseCustomMetricReenter => 'やり直し — 再入力';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — 意味を保存';

  @override
  String get purchaseCustomMetricPreviewTitle => 'カスタム指標をプレビュー';

  @override
  String get purchaseCustomMetricPreviewSubtitle => 'タイルはこのように表示されます：';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  これが最後の変更チャンスです。\n一度確定すると、名前と定義は永久に変更できません。';

  @override
  String get purchaseCustomMetricCancelEverything => 'すべてキャンセル';

  @override
  String get purchaseCustomMetricCommit => 'カスタム指標を確定';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ 「$name」が指標に追加されました！これで分析に選択できます。';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => '購入処理中...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'ストア確認を待っています。\nアプリを閉じないでください。';

  @override
  String get next => '次へ';

  @override
  String get cancelNotReady => 'キャンセル — 準備ができていませんでした';

  @override
  String get packGoodLabel => '善';

  @override
  String get packBadLabel => '悪';

  @override
  String get packUglyLabel => '醜';

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
