"""
Translate all 100 standard metric names and descriptions to Korean.
Updates app_ko.arb and regenerates the Dart file.
"""
import json, os, sys, subprocess
sys.stdout.reconfigure(encoding='utf-8')

ARB_DIR = r'C:\My Projects\AIRTA\lib\l10n'

# Korean translations for all 100 metrics
# Format: metric_N_name, metric_N_description
KO_METRICS = {
    "metric_1_name": "경멸",
    "metric_1_description": "한 파트너를 다른 파트너보다 열등하게 만드는 우월감, 혐오, 조롱, 눈을 굴리는 표현, 또는 모욕을 감지합니다.",

    "metric_2_name": "방어성",
    "metric_2_description": "반사적인 자기 보호, 반격, 변명, 그리고 상대방의 우려를 고려하는 것을 거부하는 패턴을 추적합니다.",

    "metric_3_name": "담 쌓기",
    "metric_3_description": "참여를 피하기 위한 차단, 철수, 무시, 응답 거부, 또는 대화 종료를 식별합니다.",

    "metric_4_name": "비판",
    "metric_4_description": "특정 행동, 요구, 또는 사건 대신 성격이나 인격을 공격하는 것을 감지합니다.",

    "metric_5_name": "가스라이팅 지표",
    "metric_5_description": "상대방의 기억, 인식, 정신 건강, 또는 경험의 타당성에 의심을 품게 만드려는 시도를 표시합니다.",

    "metric_6_name": "책임 전가",
    "metric_6_description": "책임을 인정하는 대신 상대 파트너에게 전가하는지 여부를 측정합니다.",

    "metric_7_name": "갈등 고조 패턴",
    "metric_7_description": "어조, 비난, 강도, 또는 위협이 해결로 나아가는 대신 고조되는지 평가합니다.",

    "metric_8_name": "화해 시도 인식",
    "metric_8_description": "사과, 유머, 일시 중지, 안심, 또는 평화 제안이 인지되고 받아들여지는지 확인합니다.",

    "metric_9_name": "책임 언어",
    "metric_9_description": "피해에 대한 명확한 인정, 구체적인 책임, 그리고 행동을 바꾸려는 의지를 확인합니다.",

    "metric_10_name": "경계 존중",
    "metric_10_description": "시간, 사생활, 신체, 감정, 또는 연락에 관한 명시된 한계가 지켜지는지 평가합니다.",

    "metric_11_name": "강압적 통제 지표",
    "metric_11_description": "위협, 제한, 감시, 의존성, 또는 선택과 움직임에 대한 통제 패턴을 표시합니다.",

    "metric_12_name": "위협 언어",
    "metric_12_description": "안전, 유기, 폭로, 보복, 또는 처벌과 관련된 명시적이거나 암묵적인 위협을 식별합니다.",

    "metric_13_name": "무시",
    "metric_13_description": "우려 사항을 무시하거나, 필요를 중요하지 않게 취급하거나, 고통을 진지하게 받아들이기를 거부하는 것을 감지합니다.",

    "metric_14_name": "무효화",
    "metric_14_description": "다른 사람의 감정을 인정하는 대신 부정, 조롱, 또는 교정하는 것을 측정합니다.",

    "metric_15_name": "공감 표현",
    "metric_15_description": "관점 취하기, 배려, 감정 인식, 그리고 상대방의 경험에 대한 관심을 확인합니다.",

    "metric_16_name": "상호성",
    "metric_16_description": "주의, 노력, 사과, 타협, 그리고 감정적 지원이 양방향으로 흐르는지 평가합니다.",

    "metric_17_name": "감정 조절",
    "metric_17_description": "폭발적인 반응 없이 안정을 유지하고, 일시 중지하고, 자기를 달래고, 소통할 수 있는 능력을 평가합니다.",

    "metric_18_name": "해를 끼치는 비꼬기",
    "metric_18_description": "깎아내리거나, 벌주거나, 모욕하거나, 적대감을 유머로 위장하는 데 사용되는 비꼬기를 표시합니다.",

    "metric_19_name": "욕설 사용",
    "metric_19_description": "인격을 비하하는 표현, 모욕, 사람을 향한 욕설, 또는 정체성 기반 공격을 식별합니다.",

    "metric_20_name": "침묵 처벌 패턴",
    "metric_20_description": "처벌, 통제, 회피, 또는 연결 철회로 사용되는 침묵을 추적합니다.",

    "metric_21_name": "질투심 표현",
    "metric_21_description": "감시, 제한, 또는 불안의 원천으로 질투심이 틀지어지거나 정당화되는지 확인합니다.",

    "metric_22_name": "고립 압력",
    "metric_22_description": "한 파트너가 가족, 친구, 또는 지원 네트워크로부터 분리되도록 밀거나 조작하는지 평가합니다.",

    "metric_23_name": "재정 통제 지표",
    "metric_23_description": "자원에 대한 접근 제한, 금전 감시, 또는 재정 의존성 패턴을 표시합니다.",

    "metric_24_name": "사생활 침해 지표",
    "metric_24_description": "동의 없이 메시지, 계정, 기기, 또는 개인 공간에 접근하는 언급을 표시합니다.",

    "metric_25_name": "사과 구체성",
    "metric_25_description": "사과가 구체적인 피해를 인정하는지, 아니면 막연하거나 조건부인지 또는 책임을 회피하는지 평가합니다.",

    "metric_26_name": "용서 압력",
    "metric_26_description": "상대방이 자신의 과정이나 속도를 존중받지 못한 채 용서하도록 밀리거나 서두르게 되는지 확인합니다.",

    "metric_27_name": "최소화",
    "metric_27_description": "피해, 우려, 또는 경험이 덜 심각하거나 유효하지 않은 것으로 축소되는 것을 감지합니다.",

    "metric_28_name": "투영",
    "metric_28_description": "한 파트너가 자신의 행동, 의도, 또는 감정을 상대방의 것으로 귀속시키는 것을 식별합니다.",

    "metric_29_name": "말 끊기 패턴",
    "metric_29_description": "한 목소리가 다른 목소리를 지속적으로 압도, 방해, 또는 막는지 추적합니다.",

    "metric_30_name": "주제 회피",
    "metric_30_description": "특히 갈등 중에 주제가 책임에서 벗어나 다른 방향으로 전환되는지 평가합니다.",

    "metric_31_name": "해결 지향성",
    "metric_31_description": "표현된 감정 이후에도 해결책, 타협, 또는 문제 해결을 향한 움직임이 있는지 측정합니다.",

    "metric_32_name": "상호 문제 해결",
    "metric_32_description": "과거의 불만 대신 공동의 노력으로 어려움에 접근하는 언어를 확인합니다.",

    "metric_33_name": "감정적 범람",
    "metric_33_description": "압도적인 감정 반응이 명확한 생각, 경청, 또는 참여를 방해하는 신호를 감지합니다.",

    "metric_34_name": "두려움 반응 신호",
    "metric_34_description": "특정 주제, 행동, 또는 어조를 두려움이나 위협의 원천으로 암시하는 언어를 표시합니다.",

    "metric_35_name": "주장의 일관성",
    "metric_35_description": "사실 진술, 약속, 또는 설명이 대화에 걸쳐 일관성이 있는지 추적합니다.",

    "metric_36_name": "증거 기반 기억",
    "metric_36_description": "사건에 대한 인식이 구체적인 세부 사항에 근거하는지, 아니면 의구심이나 재구성 없이 주장되는지 평가합니다.",

    "metric_37_name": "요구-철수 패턴",
    "metric_37_description": "한 파트너가 압력을 가하는 동안 다른 파트너가 물러나는 사이클을 측정합니다.",

    "metric_38_name": "권력 불균형 지표",
    "metric_38_description": "한 파트너가 결정, 주의, 또는 존중 면에서 지속적으로 지배적이거나 열등한 위치에 있는지 평가합니다.",

    "metric_39_name": "존중하는 이견",
    "metric_39_description": "의견 차이가 경멸, 위협, 또는 인신공격 없이 표현되는지 평가합니다.",

    "metric_40_name": "단절과 회복 사이클",
    "metric_40_description": "갈등 이후 의미 있는 화해 또는 이해 향상이 이루어지는지 추적합니다.",

    "metric_41_name": "애정 철수",
    "metric_41_description": "벌, 통제, 또는 조작의 도구로 사용되는 따뜻함, 친밀감, 또는 애정의 철수를 식별합니다.",

    "metric_42_name": "공개적 모욕 언급",
    "metric_42_description": "다른 사람들 앞에서 또는 공개 플랫폼에서 일어난 창피 주기, 비판, 또는 모욕을 감지합니다.",

    "metric_43_name": "물질 관련 갈등 신호",
    "metric_43_description": "물질 사용이 갈등을 유발하거나 악화시키거나 둘러싼 것과 관련되는지 표시합니다.",

    "metric_44_name": "양육 갈등 압력",
    "metric_44_description": "자녀 양육 방식이나 공동 양육에 관한 이견이 권력 다툼이나 처벌의 형태로 나타나는지 평가합니다.",

    "metric_45_name": "성적 경계 존중",
    "metric_45_description": "성적 접촉, 습관, 또는 선호에 관한 표현된 한계가 인정되고 존중되는지 확인합니다.",

    "metric_46_name": "디지털 괴롭힘 지표",
    "metric_46_description": "온라인 공간에서 괴롭히거나, 조종하거나, 통제하거나, 방해하는 행동을 표시합니다.",

    "metric_47_name": "감시 또는 사찰 언어",
    "metric_47_description": "동의 없이 다른 사람의 위치, 통신, 또는 활동을 추적하거나 모니터링하는 언급을 식별합니다.",

    "metric_48_name": "미래 지향성",
    "metric_48_description": "대화가 공동의 계획, 성장, 또는 희망 있는 앞날을 향해 나아가는지 측정합니다.",

    "metric_49_name": "안전 계획 신호",
    "metric_49_description": "한 파트너가 나가거나, 보호받거나, 위험한 상황에서 지원을 찾으려고 계획하거나 고려하고 있음을 나타내는 언어를 감지합니다.",

    "metric_50_name": "상호 갈등 완화 시도",
    "metric_50_description": "양 파트너가 긴장을 줄이고, 일시 중지하거나, 더 생산적인 교환으로 전환하려고 노력하는지 확인합니다.",

    "metric_51_name": "안정 애착 신호",
    "metric_51_description": "연결에 대한 자신감, 충돌 후 진정, 그리고 취약성과 지원에 대한 편안함을 반영하는 언어를 표시합니다.",

    "metric_52_name": "불안 애착 활성화",
    "metric_52_description": "감소에 대한 두려움, 안심 추구, 그리고 버려짐이나 거부를 예상하는 언어를 감지합니다.",

    "metric_53_name": "회피 애착 거리두기",
    "metric_53_description": "친밀감, 감정, 또는 개인적인 필요 사항으로부터 감정적으로 철수하는 것을 식별합니다.",

    "metric_54_name": "혼란 애착 신호",
    "metric_54_description": "불일치, 과거 또는 현재의 해결되지 않은 트라우마, 또는 두려움-접근 갈등을 반영하는 언어를 평가합니다.",

    "metric_55_name": "감정적 입찰과 반응",
    "metric_55_description": "연결, 주의, 위안, 또는 참여를 위한 시도와 그것이 받아들여지는지, 외면되는지, 또는 거부되는지 추적합니다.",

    "metric_56_name": "연결에서 등 돌리기",
    "metric_56_description": "감정적 입찰이 무관심, 산만함, 또는 최소한의 반응으로 충족되는지 측정합니다.",

    "metric_57_name": "연결에 맞서기",
    "metric_57_description": "감정적 입찰이 짜증, 비판, 또는 갈등으로 충족되는지 감지합니다.",

    "metric_58_name": "긍정적 정서 우세",
    "metric_58_description": "부정적인 사건이나 갈등이 따뜻함, 유머, 또는 선의의 렌즈를 통해 해석되는지 평가합니다.",

    "metric_59_name": "부정적 정서 우세",
    "metric_59_description": "중립적이거나 긍정적인 사건이 의심, 짜증, 또는 비난의 렌즈를 통해 필터링되는지 평가합니다.",

    "metric_60_name": "거친 시작 패턴",
    "metric_60_description": "비판, 비난, 또는 경멸로 대화나 갈등이 시작되는지 추적합니다.",

    "metric_61_name": "부드러운 시작 패턴",
    "metric_61_description": "대화나 갈등이 '나' 진술, 특정 요청, 또는 협력적인 어조로 시작되는지 평가합니다.",

    "metric_62_name": "신체적 자기 위안",
    "metric_62_description": "참여를 중단하지 않고 침착함을 회복하기 위해 일시 중지 또는 자기 조절을 사용하는 신호를 감지합니다.",

    "metric_63_name": "갈등 회피 패턴",
    "metric_63_description": "긴장이나 의견 불일치를 이름 붙이거나 해결하기를 일관되게 거부하는 것을 식별합니다.",

    "metric_64_name": "폭발적 갈등 스타일",
    "metric_64_description": "갈등이 강렬하고, 확대되고, 종종 감정적 또는 언어적 폭발을 포함하는지 측정합니다.",

    "metric_65_name": "인정적 갈등 스타일",
    "metric_65_description": "갈등이 경청, 검증, 그리고 공유된 이해를 향한 참여로 표시되는지 평가합니다.",

    "metric_66_name": "적대적 갈등 스타일",
    "metric_66_description": "갈등이 지속적인 적대감, 비난 또는 공격성으로 표시되는지 식별합니다.",

    "metric_67_name": "적대적-분리 패턴",
    "metric_67_description": "갈등이 동시에 적대적이고 감정적으로 분리된 특성을 보이는지 감지합니다.",

    "metric_68_name": "타협 의지",
    "metric_68_description": "양 파트너가 중간 지점, 조정, 또는 공유된 해결책을 향해 이동하는지 평가합니다.",

    "metric_69_name": "영향력 수용",
    "metric_69_description": "한 파트너가 상대방의 관점, 피드백, 또는 요청에 의해 영향을 받고 바꾸는지 측정합니다.",

    "metric_70_name": "교착 갈등 신호",
    "metric_70_description": "해결이나 이해 없이 반복되는 논쟁, 우선순위, 또는 가치를 감지합니다.",

    "metric_71_name": "해결 가능한 문제 구성",
    "metric_71_description": "갈등이 해결 가능한 실질적인 문제로 틀지어지는지, 아니면 변할 수 없는 성격 결함으로 틀지어지는지 평가합니다.",

    "metric_72_name": "공유된 의미 언급",
    "metric_72_description": "대화가 공유된 가치, 의식, 목표, 또는 관계 정체성을 반영하거나 강화하는지 확인합니다.",

    "metric_73_name": "사랑 지도 인식",
    "metric_73_description": "파트너가 서로의 삶, 두려움, 희망, 스트레스 요인, 또는 꿈에 대한 최신 지식을 보여주는지 평가합니다.",

    "metric_74_name": "애정과 존중",
    "metric_74_description": "파트너 사이의 감사, 감탄, 또는 따뜻함의 표현을 추적합니다.",

    "metric_75_name": "감정 노동 불균형",
    "metric_75_description": "한 파트너가 지속적으로 더 많은 감정 노동, 계획, 또는 관계 관리를 지고 있는지 측정합니다.",

    "metric_76_name": "정신적 부담 무시",
    "metric_76_description": "보이지 않는 가정 또는 관계 작업이 무시되거나 최소화되는지 감지합니다.",

    "metric_77_name": "의도적 무능 신호",
    "metric_77_description": "한 파트너가 책임을 피하기 위해 무능을 꾸미거나 과장하는 경우를 표시합니다.",

    "metric_78_name": "트라우마 촉발 민감성",
    "metric_78_description": "특정 어조, 주제, 또는 상호작용이 파트너에 대한 트라우마 반응을 촉발하는 것 같은 언어를 평가합니다.",

    "metric_79_name": "과각성 신호",
    "metric_79_description": "위험, 거부, 또는 배신에 대한 지속적인 경계 또는 모니터링을 나타내는 언어를 표시합니다.",

    "metric_80_name": "유기 두려움 언어",
    "metric_80_description": "관계에서 유기되거나 떠나지거나 대체될 것이라는 두려움을 나타내는 언어를 식별합니다.",

    "metric_81_name": "안심 추구 패턴",
    "metric_81_description": "두려움이나 불안을 줄이기 위해 반복적으로 안도를 원하는 언어를 감지합니다.",

    "metric_82_name": "추격자-거리두기 사이클",
    "metric_82_description": "한 파트너가 연결을 추구하는 동안 다른 파트너가 떠나는 패턴을 추적합니다.",

    "metric_83_name": "원한 축적",
    "metric_83_description": "과거 불만이나 오래된 언쟁이 현재 갈등으로 가져오는지 측정합니다.",

    "metric_84_name": "점수 기록 행동",
    "metric_84_description": "파트너가 과거 실수, 빚, 또는 불만의 목록을 유지하는지 감지합니다.",

    "metric_85_name": "조건부 애정",
    "metric_85_description": "따뜻함, 애정, 또는 지원이 준수나 행동에 명시적으로 연결되는지 평가합니다.",

    "metric_86_name": "러브 바밍 지표",
    "metric_86_description": "특히 사이클 초기나 갈등 후에 강렬하고, 반복적이고, 과도한 애정 또는 이상화를 표시합니다.",

    "metric_87_name": "후버링 시도",
    "metric_87_description": "특히 철수나 이별 이후에 다른 사람을 되찾아 오거나 재참여시키려는 조작적 시도를 감지합니다.",

    "metric_88_name": "DARVO 패턴",
    "metric_88_description": "가해자가 피해자가 되거나 공격자를 역전시키는 방어, 공격, 피해자 및 가해자 역전을 추적합니다.",

    "metric_89_name": "피해자 역할 패턴",
    "metric_89_description": "갈등에서 책임을 회피하거나 연민을 얻기 위해 피해자의 역할을 채택하는 것을 평가합니다.",

    "metric_90_name": "도덕적 우월감 구성",
    "metric_90_description": "한 파트너가 자신을 더 윤리적이거나 더 올바르거나 결함이 없는 것으로 일관되게 묘사하는지 감지합니다.",

    "metric_91_name": "인격 말살",
    "metric_91_description": "한 파트너의 정체성, 인격, 또는 가치를 체계적으로 공격하는 언어를 표시합니다.",

    "metric_92_name": "삼각 관계 지표",
    "metric_92_description": "제3자가 질투, 경쟁, 또는 압력을 만들기 위해 관계에 끌려들거나 사용되는지 식별합니다.",

    "metric_93_name": "사회적 비교 압력",
    "metric_93_description": "불충분함이나 부당함을 암시하기 위해 다른 관계, 사람, 또는 기준과 비교하는 것을 측정합니다.",

    "metric_94_name": "자율성 지원",
    "metric_94_description": "파트너가 서로의 독립적인 생각, 결정, 정체성, 또는 관계를 장려하고 존중하는지 평가합니다.",

    "metric_95_name": "동의와 선택 존중",
    "metric_95_description": "결정, 행동, 또는 경험에서 동의, 선택의 자유, 그리고 자발성이 존중되는지 확인합니다.",

    "metric_96_name": "협력적 계획",
    "metric_96_description": "미래 결정, 계획, 또는 목표가 공동으로 이루어지는지 측정합니다.",

    "metric_97_name": "화해 후속 조치",
    "metric_97_description": "사과나 약속이 측정 가능한 행동 변화로 뒤따르는지 추적합니다.",

    "metric_98_name": "변화된 행동 증거",
    "metric_98_description": "이전에 확인된 문제 패턴이 이후의 상호작용에서 감소, 수정, 또는 인정되었다는 신호를 평가합니다.",

    "metric_99_name": "감정 안전 언어",
    "metric_99_description": "파트너가 취약성, 감정, 또는 필요 사항을 두려움이나 보복 없이 표현할 수 있다고 느끼는지 반영하는 언어를 감지합니다.",

    "metric_100_name": "관계 양가감정",
    "metric_100_description": "파트너가 관계에 머물거나 떠날지에 대해 모순된 감정이나 불확실성을 표현하는지 추적합니다.",
}

# Load current KO ARB
ko_path = os.path.join(ARB_DIR, 'app_ko.arb')
with open(ko_path, encoding='utf-8-sig') as f:
    ko_data = json.load(f)

updated = 0
for k, v in KO_METRICS.items():
    ko_data[k] = v
    updated += 1

with open(ko_path, 'w', encoding='utf-8') as f:
    json.dump(ko_data, f, ensure_ascii=False, indent=2)

print(f"Updated {updated} metric translations in app_ko.arb")

# Regenerate Dart files
print("Regenerating Dart localizations...")
result = subprocess.run(
    ['flutter', 'gen-l10n'],
    cwd=r'C:\My Projects\AIRTA',
    capture_output=True, text=True
)
print(result.stdout[:500] if result.stdout else '')
print(result.stderr[:500] if result.stderr else '')
print("Done.")
