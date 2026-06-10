"""
Fix localization issues:
1. Add new dashboard tile keys to all 16 language ARBs
2. Fix Korean ?? placeholders with real Korean translations
3. Add missing 60 keys to Korean ARB (with EN fallback where no KO translation provided)
4. Update the generated .dart files

New keys needed (for dashboard tiles and purchase dialog):
- tileMyAccountTitle
- tileMyAccountDesc
- tileReferFriendsTitle
- tileReferFriendsDesc
- tileUserPacksTitle
- tileUserPacksDesc
- tileBrowseButton
- purchaseDialogTitle (parameterized: packName)
- purchaseDialogMetrics (parameterized: count, creator)
- purchaseDialogPrice (parameterized: price)
- purchaseDialogInstallNote
- purchaseDialogCancel
- purchaseDialogBuyButton (parameterized: price)
"""

import json
import os
import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

ARB_DIR = r'C:\My Projects\AIRTA\lib\l10n'
DART_DIR = r'C:\My Projects\AIRTA\lib\l10n'

# ── New keys to add to ALL language ARBs ─────────────────────────────────────
NEW_EN_KEYS = {
    "tileMyAccountTitle": "My Account",
    "tileMyAccountDesc": "Membership, referrals, purchases, sales & developer license",
    "tileReferFriendsTitle": "Refer Friends\nGet FREE Month",
    "tileReferFriendsDesc": "Refer 5 friends who run a report and earn a free month of Standard!",
    "tileUserPacksTitle": "User Submitted\nMetric Packs",
    "tileUserPacksDesc": "Browse & purchase community-created metric packs. Earn credits by submitting your own!",
    "tileBrowseButton": "Browse",
    "purchaseDialogCancel": "Cancel",
    "installedPacksAccordionSubtitle": "{count} Metrics — Community Pack",
    "@installedPacksAccordionSubtitle": {
        "placeholders": {
            "count": {"type": "int"}
        }
    },
}

# ── Per-language translations for new keys ────────────────────────────────────
TRANSLATIONS = {
    "ko": {
        "tileMyAccountTitle": "내 계정",
        "tileMyAccountDesc": "멤버십, 추천, 구매, 판매 및 개발자 라이선스",
        "tileReferFriendsTitle": "친구 추천\n무료 한 달",
        "tileReferFriendsDesc": "보고서를 실행하는 친구 5명을 추천하면 스탠다드 무료 한 달을 받으세요!",
        "tileUserPacksTitle": "사용자 제출\n지표 팩",
        "tileUserPacksDesc": "커뮤니티가 만든 지표 팩을 검색하고 구매하세요. 직접 제출하여 크레딧을 적립하세요!",
        "tileBrowseButton": "탐색",
        "purchaseDialogCancel": "취소",
        "installedPacksAccordionSubtitle": "{count}개 지표 — 커뮤니티 팩",
    },
    "es": {
        "tileMyAccountTitle": "Mi Cuenta",
        "tileMyAccountDesc": "Membresía, referencias, compras, ventas y licencia de desarrollador",
        "tileReferFriendsTitle": "Recomendar Amigos\nMes GRATIS",
        "tileReferFriendsDesc": "¡Recomienda 5 amigos que hagan un informe y gana un mes gratis de Standard!",
        "tileUserPacksTitle": "Paquetes de\nMétricas Enviados",
        "tileUserPacksDesc": "Explora y compra paquetes de métricas creados por la comunidad. ¡Gana créditos enviando los tuyos!",
        "tileBrowseButton": "Explorar",
        "purchaseDialogCancel": "Cancelar",
        "installedPacksAccordionSubtitle": "{count} Métricas — Paquete Comunitario",
    },
    "fr": {
        "tileMyAccountTitle": "Mon Compte",
        "tileMyAccountDesc": "Abonnement, parrainages, achats, ventes et licence développeur",
        "tileReferFriendsTitle": "Parrainer des Amis\nMois GRATUIT",
        "tileReferFriendsDesc": "Parrainez 5 amis qui font un rapport et gagnez un mois gratuit de Standard !",
        "tileUserPacksTitle": "Packs de Métriques\nSoumis",
        "tileUserPacksDesc": "Parcourez et achetez des packs de métriques créés par la communauté. Gagnez des crédits en soumettant les vôtres !",
        "tileBrowseButton": "Parcourir",
        "purchaseDialogCancel": "Annuler",
        "installedPacksAccordionSubtitle": "{count} Métriques — Pack Communautaire",
    },
    "de": {
        "tileMyAccountTitle": "Mein Konto",
        "tileMyAccountDesc": "Mitgliedschaft, Empfehlungen, Käufe, Verkäufe & Entwicklerlizenz",
        "tileReferFriendsTitle": "Freunde werben\nKOSTENLOSER Monat",
        "tileReferFriendsDesc": "Werbe 5 Freunde, die einen Bericht erstellen, und erhalte einen kostenlosen Monat Standard!",
        "tileUserPacksTitle": "Eingereichte\nMetrik-Pakete",
        "tileUserPacksDesc": "Durchsuche und kaufe von der Community erstellte Metrik-Pakete. Verdiene Credits durch eigene Einreichungen!",
        "tileBrowseButton": "Durchsuchen",
        "purchaseDialogCancel": "Abbrechen",
        "installedPacksAccordionSubtitle": "{count} Metriken — Community-Paket",
    },
    "pt": {
        "tileMyAccountTitle": "Minha Conta",
        "tileMyAccountDesc": "Assinatura, indicações, compras, vendas e licença de desenvolvedor",
        "tileReferFriendsTitle": "Indicar Amigos\nMês GRÁTIS",
        "tileReferFriendsDesc": "Indique 5 amigos que executem um relatório e ganhe um mês grátis do Standard!",
        "tileUserPacksTitle": "Pacotes de\nMétricas Enviados",
        "tileUserPacksDesc": "Navegue e compre pacotes de métricas criados pela comunidade. Ganhe créditos enviando os seus!",
        "tileBrowseButton": "Explorar",
        "purchaseDialogCancel": "Cancelar",
        "installedPacksAccordionSubtitle": "{count} Métricas — Pacote Comunitário",
    },
    "it": {
        "tileMyAccountTitle": "Il Mio Account",
        "tileMyAccountDesc": "Abbonamento, referral, acquisti, vendite e licenza sviluppatore",
        "tileReferFriendsTitle": "Invita Amici\nMese GRATIS",
        "tileReferFriendsDesc": "Invita 5 amici che eseguono un report e guadagna un mese gratis di Standard!",
        "tileUserPacksTitle": "Pacchetti Metriche\nInviati dagli Utenti",
        "tileUserPacksDesc": "Sfoglia e acquista pacchetti di metriche creati dalla community. Guadagna crediti inviando i tuoi!",
        "tileBrowseButton": "Sfoglia",
        "purchaseDialogCancel": "Annulla",
        "installedPacksAccordionSubtitle": "{count} Metriche — Pacchetto Community",
    },
    "ja": {
        "tileMyAccountTitle": "マイアカウント",
        "tileMyAccountDesc": "メンバーシップ、紹介、購入、販売、開発者ライセンス",
        "tileReferFriendsTitle": "友達を招待\n無料1ヶ月",
        "tileReferFriendsDesc": "レポートを実行する友達5人を招待してスタンダードの無料1ヶ月を獲得しましょう！",
        "tileUserPacksTitle": "ユーザー投稿\nメトリクスパック",
        "tileUserPacksDesc": "コミュニティ作成のメトリクスパックを閲覧・購入できます。投稿してクレジットを獲得しましょう！",
        "tileBrowseButton": "閲覧",
        "purchaseDialogCancel": "キャンセル",
        "installedPacksAccordionSubtitle": "{count}個のメトリクス — コミュニティパック",
    },
    "zh": {
        "tileMyAccountTitle": "我的账户",
        "tileMyAccountDesc": "会员资格、推荐、购买、销售和开发者许可证",
        "tileReferFriendsTitle": "推荐好友\n获得免费月份",
        "tileReferFriendsDesc": "推荐5位运行报告的好友，即可获得一个月免费标准版！",
        "tileUserPacksTitle": "用户提交的\n指标包",
        "tileUserPacksDesc": "浏览并购买社区创建的指标包。提交您自己的指标包以获得积分！",
        "tileBrowseButton": "浏览",
        "purchaseDialogCancel": "取消",
        "installedPacksAccordionSubtitle": "{count} 个指标 — 社区包",
    },
    "ar": {
        "tileMyAccountTitle": "حسابي",
        "tileMyAccountDesc": "العضوية والإحالات والمشتريات والمبيعات وترخيص المطور",
        "tileReferFriendsTitle": "دعوة الأصدقاء\nشهر مجاني",
        "tileReferFriendsDesc": "أحل 5 أصدقاء يقومون بتشغيل تقرير واحصل على شهر مجاني من الاشتراك القياسي!",
        "tileUserPacksTitle": "حزم المقاييس\nالمقدمة من المستخدمين",
        "tileUserPacksDesc": "تصفح وشراء حزم المقاييس التي أنشأها المجتمع. اكسب أرصدة بتقديم حزمك الخاصة!",
        "tileBrowseButton": "تصفح",
        "purchaseDialogCancel": "إلغاء",
        "installedPacksAccordionSubtitle": "{count} مقياس — حزمة مجتمعية",
    },
    "hi": {
        "tileMyAccountTitle": "मेरा खाता",
        "tileMyAccountDesc": "सदस्यता, रेफ़रल, खरीदारी, बिक्री और डेवलपर लाइसेंस",
        "tileReferFriendsTitle": "दोस्तों को आमंत्रित करें\nमुफ्त महीना पाएं",
        "tileReferFriendsDesc": "5 दोस्तों को आमंत्रित करें जो रिपोर्ट चलाएं और स्टैंडर्ड का एक मुफ्त महीना पाएं!",
        "tileUserPacksTitle": "उपयोगकर्ता द्वारा\nसबमिट किए गए मेट्रिक पैक",
        "tileUserPacksDesc": "समुदाय-निर्मित मेट्रिक पैक ब्राउज़ करें और खरीदें। अपना सबमिट करके क्रेडिट अर्जित करें!",
        "tileBrowseButton": "ब्राउज़ करें",
        "purchaseDialogCancel": "रद्द करें",
        "installedPacksAccordionSubtitle": "{count} मेट्रिक्स — सामुदायिक पैक",
    },
    "ru": {
        "tileMyAccountTitle": "Мой Аккаунт",
        "tileMyAccountDesc": "Членство, рефералы, покупки, продажи и лицензия разработчика",
        "tileReferFriendsTitle": "Пригласить Друзей\nБесплатный месяц",
        "tileReferFriendsDesc": "Пригласите 5 друзей, которые запустят отчёт, и получите бесплатный месяц Standard!",
        "tileUserPacksTitle": "Метрические Пакеты\nот Пользователей",
        "tileUserPacksDesc": "Просматривайте и покупайте метрические пакеты, созданные сообществом. Зарабатывайте кредиты, отправляя свои!",
        "tileBrowseButton": "Обзор",
        "purchaseDialogCancel": "Отмена",
        "installedPacksAccordionSubtitle": "{count} Метрик — Пакет Сообщества",
    },
    "nl": {
        "tileMyAccountTitle": "Mijn Account",
        "tileMyAccountDesc": "Lidmaatschap, verwijzingen, aankopen, verkopen & ontwikkelaarslicentie",
        "tileReferFriendsTitle": "Vrienden Uitnodigen\nGRATIS Maand",
        "tileReferFriendsDesc": "Nodig 5 vrienden uit die een rapport uitvoeren en verdien een gratis maand Standard!",
        "tileUserPacksTitle": "Ingediende\nMetrieken Pakketten",
        "tileUserPacksDesc": "Blader door en koop metriekpakketten gemaakt door de community. Verdien credits door je eigen in te dienen!",
        "tileBrowseButton": "Bladeren",
        "purchaseDialogCancel": "Annuleren",
        "installedPacksAccordionSubtitle": "{count} Metrisch — Community Pakket",
    },
    "tr": {
        "tileMyAccountTitle": "Hesabım",
        "tileMyAccountDesc": "Üyelik, tavsiyeler, satın almalar, satışlar ve geliştirici lisansı",
        "tileReferFriendsTitle": "Arkadaş Davet Et\nÜCRETSİZ Ay Kazan",
        "tileReferFriendsDesc": "Rapor çalıştıran 5 arkadaş davet et ve Standard'ın ücretsiz bir ayını kazan!",
        "tileUserPacksTitle": "Kullanıcı Gönderimi\nMetrik Paketleri",
        "tileUserPacksDesc": "Topluluk tarafından oluşturulan metrik paketlere göz atın ve satın alın. Kendi paketinizi göndererek kredi kazanın!",
        "tileBrowseButton": "Göz At",
        "purchaseDialogCancel": "İptal",
        "installedPacksAccordionSubtitle": "{count} Metrik — Topluluk Paketi",
    },
    "pl": {
        "tileMyAccountTitle": "Moje Konto",
        "tileMyAccountDesc": "Członkostwo, polecenia, zakupy, sprzedaż i licencja deweloperska",
        "tileReferFriendsTitle": "Zaproś Znajomych\nDarmowy Miesiąc",
        "tileReferFriendsDesc": "Zaproś 5 znajomych, którzy uruchomią raport i zdobądź darmowy miesiąc Standard!",
        "tileUserPacksTitle": "Pakiety Metryk\nOd Użytkowników",
        "tileUserPacksDesc": "Przeglądaj i kupuj pakiety metryk tworzone przez społeczność. Zdobywaj kredyty, przesyłając własne!",
        "tileBrowseButton": "Przeglądaj",
        "purchaseDialogCancel": "Anuluj",
        "installedPacksAccordionSubtitle": "{count} Metryk — Pakiet Społeczności",
    },
    "uk": {
        "tileMyAccountTitle": "Мій Акаунт",
        "tileMyAccountDesc": "Членство, реферали, покупки, продажі та ліцензія розробника",
        "tileReferFriendsTitle": "Запросити Друзів\nБезкоштовний Місяць",
        "tileReferFriendsDesc": "Запросіть 5 друзів, які запустять звіт, і отримайте безкоштовний місяць Standard!",
        "tileUserPacksTitle": "Пакети Метрик\nвід Користувачів",
        "tileUserPacksDesc": "Переглядайте та купуйте пакети метрик, створені спільнотою. Заробляйте кредити, надсилаючи власні!",
        "tileBrowseButton": "Переглянути",
        "purchaseDialogCancel": "Скасувати",
        "installedPacksAccordionSubtitle": "{count} Метрик — Пакет Спільноти",
    },
}

# ── Korean ?? fixes ───────────────────────────────────────────────────────────
KO_FIXES = {
    "appTitle": "AI 관계 독성 분석기",
    "psychologicalMetrics": "심리적 지표",
    "selectSMS": "SMS / RCS 채팅 선택",
    "filters": "필터",
    "sortBy": "정렬 기준:",
    "recent": "최근",
    "name": "이름",
    "namedOnly": "이름 있는 것만",
    "minMessages": "최소 메시지:",
    "minimumMessages": "최소 메시지 수:",
    "executiveSummary": "요약",
    "metricScores": "지표 점수",
    "contextualEvidenceExamples": "맥락적 증거 예시",
    "neutralSynthesis": "중립적 종합",
    "finalConclusion": "최종 결론",
    "selectUpToCount": "{max}개까지 선택 가능. 현재: {current}개",
    "metricsDescription": "선택한 지표가 적을수록 해당 행동에 대한 더 깊고 집중적인 분석이 이루어집니다. 선택한 지표가 많을수록 지표당 세부 정보가 적은 더 광범위한 보고서가 생성됩니다.",
}

# ── Korean missing keys (60 keys) — translations where available ─────────────
KO_MISSING_TRANSLATIONS = {
    "viewMembershipOptions": "멤버십 옵션 보기",
    "metricExpansionPacksTitle": "지표 확장 팩",
    "oneTimePurchasesSubtitle": "일회성 구매 — 추가 지표 영구 소유",
    "unlockGoodPackButton": "굿 팩 잠금 해제",
    "unlockBadPackButton": "배드 팩 잠금 해제",
    "unlockUglyPackButton": "어글리 팩 잠금 해제",
    "unlockNarcissistPackButton": "나르시시스트 팩 잠금 해제",
    "unlockSerialKillerPackButton": "시리얼 킬러 팩 잠금 해제",
    "goodPackBenefit1": "건강한 관계 지표 100개",
    "goodPackBenefit2": "긍정적 의사소통 패턴",
    "goodPackBenefit3": "감사, 공감 및 신뢰 신호",
    "goodPackBenefit4": "일회성 구매 — 영구 소유",
    "goodPackBenefit5": "구매 후 즉시 잠금 해제",
    "badPackBenefit1": "경고 신호 관계 지표 100개",
    "badPackBenefit2": "조종 및 무시 패턴 식별",
    "badPackBenefit3": "죄책감 유발, 냉담 등",
    "badPackBenefit4": "일회성 구매 — 영구 소유",
    "badPackBenefit5": "구매 후 즉시 잠금 해제",
    "uglyPackBenefit1": "심각한 적신호 학대 지표 100개",
    "uglyPackBenefit2": "강압, 위협 및 통제 식별",
    "uglyPackBenefit3": "트라우마 유대 및 고립 지표",
    "uglyPackBenefit4": "일회성 구매 — 영구 소유",
    "uglyPackBenefit5": "구매 후 즉시 잠금 해제",
    "narcissistPackBenefit1": "자기도취 행동 지표 50개",
    "narcissistPackBenefit2": "가스라이팅 및 러브 바밍 감지",
    "narcissistPackBenefit3": "후버링 및 평가절하 패턴",
    "narcissistPackBenefit4": "일회성 구매 — 영구 소유",
    "narcissistPackBenefit5": "구매 후 즉시 잠금 해제",
    "serialKillerPackBenefit1": "극단적 위험 지표 50개",
    "serialKillerPackBenefit2": "포식적이고 폭력적인 언어 감지",
    "serialKillerPackBenefit3": "정신병증 및 가학성 마커",
    "serialKillerPackBenefit4": "일회성 구매 — 영구 소유",
    "serialKillerPackBenefit5": "구매 후 즉시 잠금 해제",
    "aboutTitle": "정보",
    "aboutDescription": "AIRTA(AI 관계 독성 분석기)는 대화에서 건강하지 않은 패턴을 식별하는 데 도움을 줍니다.",
    "contactUs": "문의하기",
    "supportEmail": "지원",
    "supportEmailDesc": "앱 사용 도움 받기",
    "businessEmail": "비즈니스",
    "businessEmailDesc": "파트너십 및 문의",
    "privacyEmail": "개인정보",
    "privacyEmailDesc": "데이터 및 개인정보 문의",
    "importantLinks": "링크",
    "website": "웹사이트",
    "privacyPolicy": "개인정보 처리방침",
    "termsOfService": "이용약관",
    "github": "GitHub",
    "allRightsReserved": "모든 권리 보유.",
    "noMessagesInDateRangeBody": "선택한 날짜 범위에서 메시지를 찾을 수 없습니다. 날짜 범위를 조정해 보세요.",
    "credentialsSavedSuccess": "자격 증명이 성공적으로 저장되었습니다",
    "errorSavingCredentials": "자격 증명 저장 오류: {error}",
    "credentialsSecurityInfo": "자격 증명은 이 기기에만 안전하게 저장되며 업로드되지 않습니다.",
    "savingButton": "저장 중...",
    "saveAllCredentials": "자격 증명 저장",
    "proPlusLabel": "Pro+",
    "upgradeButton": "업그레이드",
    "usernameLabel": "사용자 이름",
    "passwordLabel": "비밀번호",
    "upgradeToProPlusBody": "서드파티 플랫폼 통합 및 고급 기능을 이용하려면 Pro Plus로 업그레이드하세요.",
    "noConversationsFoundBody": "대화를 찾을 수 없습니다. 자격 증명이 올바른지 확인하고 다시 시도해 보세요.",
}


def load_arb(path):
    with open(path, encoding='utf-8-sig') as f:
        return json.load(f)


def save_arb(path, data):
    with open(path, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=2)
    print(f"  Saved: {os.path.basename(path)}")


def insert_keys_before_first_at(data, new_pairs):
    """Insert new key/value pairs into dict, preserving @-keys at end."""
    result = {}
    at_keys = {k: v for k, v in data.items() if k.startswith('@')}
    non_at = {k: v for k, v in data.items() if not k.startswith('@')}

    result.update(non_at)
    for k, v in new_pairs.items():
        if k not in result:
            result[k] = v
    result.update(at_keys)
    return result


# ── Step 1: Add new tile keys to EN ARB first ─────────────────────────────────
print("Step 1: Adding new keys to EN ARB...")
en_path = os.path.join(ARB_DIR, 'app_en.arb')
en_data = load_arb(en_path)
added_to_en = 0
for k, v in NEW_EN_KEYS.items():
    if k not in en_data:
        en_data[k] = v
        if not k.startswith('@'):
            added_to_en += 1
save_arb(en_path, en_data)
print(f"  Added {added_to_en} new keys to EN")

# ── Step 2: Add new keys to all other language ARBs ───────────────────────────
print("\nStep 2: Adding translated tile keys to all language ARBs...")
langs = ['ar','de','es','fr','hi','it','ja','ko','nl','pl','pt','ru','tr','uk','zh']
simple_new_keys = {k: v for k, v in NEW_EN_KEYS.items() if not k.startswith('@')}

for lang in langs:
    path = os.path.join(ARB_DIR, f'app_{lang}.arb')
    data = load_arb(path)
    lang_trans = TRANSLATIONS.get(lang, {})
    added = 0
    for k in simple_new_keys:
        if k not in data:
            data[k] = lang_trans.get(k, NEW_EN_KEYS[k])  # fallback to EN
            added += 1
    save_arb(path, data)
    print(f"  {lang}: added {added} keys")

# ── Step 3: Fix Korean ?? values ──────────────────────────────────────────────
print("\nStep 3: Fixing Korean ?? placeholder values...")
ko_path = os.path.join(ARB_DIR, 'app_ko.arb')
ko_data = load_arb(ko_path)
fixed = 0
for k, v in KO_FIXES.items():
    if k in ko_data:
        ko_data[k] = v
        fixed += 1
print(f"  Fixed {fixed} ?? values")

# ── Step 4: Add missing Korean keys ──────────────────────────────────────────
print("\nStep 4: Adding missing Korean translations...")
added_ko = 0
for k, v in KO_MISSING_TRANSLATIONS.items():
    if k not in ko_data:
        ko_data[k] = v
        added_ko += 1
    else:
        ko_data[k] = v  # overwrite even if present (update)
save_arb(ko_path, ko_data)
print(f"  Added/updated {added_ko} Korean translations")

print("\nAll ARB updates complete.")
print("\nNow regenerating Dart files from ARBs...")
