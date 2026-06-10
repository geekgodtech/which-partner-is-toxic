content = open('docs/index.html', encoding='utf-8').read()

# ── 1. Replace METRICS array (20 → 50) ──────────────────────────────────────
old_metrics = '''// 20 core metrics for the demo
const METRICS = [
  { name: 'Contempt', description: 'Looks for superiority, disgust, mockery, eye-rolling language, or insults that place one partner beneath the other.' },
  { name: 'Defensiveness', description: 'Tracks reflexive self-protection, counterattacks, excuses, and refusal to consider the other person\'s complaint.' },
  { name: 'Stonewalling', description: 'Identifies shutdown, withdrawal, ignoring, refusal to answer, or ending conversations to avoid engagement.' },
  { name: 'Criticism', description: 'Detects attacks on character or personality instead of specific behaviors, needs, or incidents.' },
  { name: 'Gaslighting Indicators', description: 'Flags attempts to make someone doubt memory, perception, sanity, or the legitimacy of their experience.' },
  { name: 'Blame Shifting', description: 'Measures whether responsibility is redirected onto the other partner instead of being acknowledged directly.' },
  { name: 'Escalation Pattern', description: 'Evaluates whether tone, accusations, intensity, or threats increase instead of moving toward resolution.' },
  { name: 'Repair Attempt Recognition', description: 'Checks whether apologies, humor, pauses, reassurance, or peace offerings are noticed and accepted.' },
  { name: 'Accountability Language', description: 'Looks for clear ownership of harm, specific responsibility, and willingness to change behavior.' },
  { name: 'Boundary Respect', description: 'Assesses whether stated limits around time, privacy, body, emotions, or contact are honored.' },
  { name: 'Coercive Control Indicators', description: 'Flags patterns of intimidation, restriction, monitoring, dependency, or control over choices and movement.' },
  { name: 'Threat Language', description: 'Identifies explicit or implied threats involving safety, abandonment, exposure, retaliation, or punishment.' },
  { name: 'Dismissiveness', description: 'Detects brushing off concerns, treating needs as unimportant, or refusing to take distress seriously.' },
  { name: 'Invalidation', description: 'Measures denial, ridicule, or correction of another person\'s emotions instead of acknowledging them.' },
  { name: 'Empathy Expression', description: 'Looks for perspective-taking, care, emotional recognition, and concern for the other person\'s experience.' },
  { name: 'Reciprocity', description: 'Assesses whether attention, effort, apology, compromise, and emotional support flow both ways.' },
  { name: 'Emotional Regulation', description: 'Evaluates ability to stay grounded, pause, self-soothe, and communicate without explosive reactivity.' },
  { name: 'Sarcasm Used as Harm', description: 'Flags sarcasm used to belittle, punish, humiliate, or disguise hostility as humor.' },
  { name: 'Name Calling', description: 'Identifies derogatory labels, insults, profanity directed at the person, or identity-based attacks.' },
  { name: 'Silent Treatment Pattern', description: 'Detects prolonged deliberate silence used as punishment, control, or emotional withdrawal.' },
];'''

new_metrics = '''// 50 metrics — 20 randomly chosen by default
const METRICS = [
  // ── Harmful / toxic patterns ─────────────────────────────────────────────
  { name: 'Contempt', description: 'Looks for superiority, disgust, mockery, eye-rolling language, or insults that place one partner beneath the other.' },
  { name: 'Defensiveness', description: 'Tracks reflexive self-protection, counterattacks, excuses, and refusal to consider the other person\'s complaint.' },
  { name: 'Stonewalling', description: 'Identifies shutdown, withdrawal, ignoring, refusal to answer, or ending conversations to avoid engagement.' },
  { name: 'Criticism', description: 'Detects attacks on character or personality instead of specific behaviors, needs, or incidents.' },
  { name: 'Gaslighting Indicators', description: 'Flags attempts to make someone doubt memory, perception, sanity, or the legitimacy of their experience.' },
  { name: 'Blame Shifting', description: 'Measures whether responsibility is redirected onto the other partner instead of being acknowledged directly.' },
  { name: 'Escalation Pattern', description: 'Evaluates whether tone, accusations, intensity, or threats increase instead of moving toward resolution.' },
  { name: 'Coercive Control Indicators', description: 'Flags patterns of intimidation, restriction, monitoring, dependency, or control over choices and movement.' },
  { name: 'Threat Language', description: 'Identifies explicit or implied threats involving safety, abandonment, exposure, retaliation, or punishment.' },
  { name: 'Dismissiveness', description: 'Detects brushing off concerns, treating needs as unimportant, or refusing to take distress seriously.' },
  { name: 'Invalidation', description: 'Measures denial, ridicule, or correction of another person\'s emotions instead of acknowledging them.' },
  { name: 'Sarcasm Used as Harm', description: 'Flags sarcasm used to belittle, punish, humiliate, or disguise hostility as humor.' },
  { name: 'Name Calling', description: 'Identifies derogatory labels, insults, profanity directed at the person, or identity-based attacks.' },
  { name: 'Silent Treatment Pattern', description: 'Detects prolonged deliberate silence used as punishment, control, or emotional withdrawal.' },
  { name: 'Manipulation Tactics', description: 'Identifies guilt-tripping, emotional leveraging, selective honesty, or exploiting insecurities to influence behavior.' },
  { name: 'Love Bombing', description: 'Flags overwhelming flattery, excessive gifts, or intense early affection used to establish dependency.' },
  { name: 'Triangulation', description: 'Detects introducing third parties — real or implied — to create jealousy, insecurity, or competition.' },
  { name: 'Passive Aggression', description: 'Identifies indirect hostility expressed through procrastination, sarcasm, sulking, or deliberate unhelpfulness.' },
  { name: 'Jealousy and Possessiveness', description: 'Measures controlling or monitoring behavior driven by distrust, insecurity, or fear of loss.' },
  { name: 'Emotional Withholding', description: 'Detects deliberate withdrawal of affection, warmth, or connection as punishment or leverage.' },
  // ── Positive / healthy patterns ───────────────────────────────────────────
  { name: 'Repair Attempt Recognition', description: 'Checks whether apologies, humor, pauses, reassurance, or peace offerings are noticed and accepted.' },
  { name: 'Accountability Language', description: 'Looks for clear ownership of harm, specific responsibility, and willingness to change behavior.' },
  { name: 'Boundary Respect', description: 'Assesses whether stated limits around time, privacy, body, emotions, or contact are honored.' },
  { name: 'Empathy Expression', description: 'Looks for perspective-taking, care, emotional recognition, and concern for the other person\'s experience.' },
  { name: 'Reciprocity', description: 'Assesses whether attention, effort, apology, compromise, and emotional support flow both ways.' },
  { name: 'Emotional Regulation', description: 'Evaluates ability to stay grounded, pause, self-soothe, and communicate without explosive reactivity.' },
  { name: 'Active Listening Cues', description: 'Detects paraphrasing, clarifying questions, and demonstrated understanding of the partner\'s perspective.' },
  { name: 'Apology Sincerity', description: 'Detects genuine remorse, understanding of impact, and commitment to change without excuses.' },
  { name: 'Validation of Emotions', description: 'Detects acknowledgment that the partner\'s feelings are real, understandable, and worthy of attention.' },
  { name: 'Collaborative Tone', description: 'Measures use of "we," joint problem-solving language, and framing issues as shared challenges.' },
  { name: 'Vulnerability Expression', description: 'Identifies sharing fears, insecurities, needs, or emotional truths without defensiveness or blame.' },
  { name: 'Gentle Disagreement', description: 'Measures ability to express different views while preserving respect, curiosity, and the relationship.' },
  { name: 'Supportive Language', description: 'Tracks statements offering help, encouragement, belief in the partner\'s abilities, or standing beside them.' },
  { name: 'Conflict De-escalation', description: 'Identifies soft language, breaks, or solution-offering to calm heated discussions.' },
  { name: 'Perspective-Taking Language', description: 'Looks for statements showing understanding of the partner\'s viewpoint, context, or emotional reality.' },
  // ── Communication quality ─────────────────────────────────────────────────
  { name: 'Honesty and Transparency', description: 'Measures directness, willingness to disclose, and absence of deceptive or evasive language.' },
  { name: 'Respect for Differences', description: 'Measures acceptance of partner\'s unique traits, preferences, opinions, and ways of being.' },
  { name: 'Openness to Feedback', description: 'Identifies receptiveness to partner\'s concerns, willingness to hear criticism, and desire to improve.' },
  { name: 'Power Imbalance Signals', description: 'Assesses whether one partner consistently dominates decisions, conversations, or emotional tone.' },
  { name: 'Anxiety and Fear Language', description: 'Flags expressions of fear, hypervigilance, walking on eggshells, or anticipating punishment.' },
  { name: 'Commitment Language', description: 'Tracks expressions of dedication, long-term thinking, and investment in the relationship\'s future.' },
  { name: 'Affection and Warmth', description: 'Identifies expressions of love, tenderness, care, and emotional closeness.' },
  { name: 'Topic Avoidance', description: 'Detects deliberate steering away from certain subjects, unresolved issues, or difficult truths.' },
  { name: 'Apology Absence', description: 'Flags failure to acknowledge harm, absence of remorse, or deflecting responsibility entirely.' },
  { name: 'Emotional Reactivity', description: 'Measures sudden emotional outbursts, disproportionate responses, or volatility in communication.' },
  { name: 'Healthy Interdependence', description: 'Measures balance between togetherness and independence, supporting each other\'s autonomy.' },
  { name: 'Humor as Connection', description: 'Detects playful shared laughter that brings partners together rather than mocking or belittling.' },
  { name: 'Gratitude Expression', description: 'Identifies regular expressions of thanks for effort, presence, or support.' },
  { name: 'Encouragement Language', description: 'Looks for statements that inspire confidence, motivate action, or support the partner\'s goals.' },
  { name: 'Conflict Resolution Effort', description: 'Identifies attempts to find solutions, compromise, or restore peace after disagreement.' },
];'''

import re
content = re.sub(
    r'// 20 core metrics.*?const METRICS = \[.*?\];',
    new_metrics,
    content,
    count=1,
    flags=re.DOTALL
)
assert 'Love Bombing' in content, 'Metrics not updated'

# ── 2. Update slider: max=50, default=20 ────────────────────────────────────
content = content.replace(
    '<input type="range" id="metricSlider" min="3" max="20" value="10" />',
    '<input type="range" id="metricSlider" min="3" max="50" value="20" />'
)
content = content.replace(
    '<span class="slider-value" id="sliderValue">10</span>',
    '<span class="slider-value" id="sliderValue">20</span>'
)
assert 'max="50"' in content, 'Slider max not updated'
assert 'value="20"' in content, 'Slider default not updated'

open('docs/index.html', 'w', encoding='utf-8').write(content)
print('Done — 50 metrics, slider default 20, max 50')
