import re

path = r'C:\My Projects\AIRTA\docs\index.html'
c = open(path, encoding='utf-8').read()

# ── 1. Bigger math CAPTCHA widget ────────────────────────────────────────────
c = re.sub(
    r'<h3 style="margin-top:24px;" data-i18n="quick_check">3\. Quick Check</h3>\s*'
    r'<div style="display:flex[^>]+>\s*'
    r'<span id="mathQuestion"[^>]+></span>\s*'
    r'<input id="mathAnswer"[^>]+/>\s*'
    r'</div>\s*'
    r'<div id="captchaStatus"[^>]+></div>',
    '''      <h3 style="margin-top:24px;" data-i18n="quick_check">3. Quick Check</h3>
      <div style="display:flex; align-items:center; gap:16px; justify-content:center; margin:16px 0;">
        <span id="mathQuestion" style="color:#a0a0ff; font-size:1.5rem; font-weight:700;"></span>
        <input id="mathAnswer" type="number" placeholder="?" inputmode="numeric"
          style="width:90px; padding:12px; border-radius:10px; border:2px solid #4040aa;
                 background:#1a1a3a; color:#ffffff; font-size:1.5rem; font-weight:700;
                 text-align:center; outline:none; -moz-appearance:textfield;"
          oninput="if(window.checkMath)window.checkMath()" />
      </div>
      <div id="captchaStatus" style="text-align:center; font-size:0.9rem; min-height:20px; font-weight:600;"></div>''',
    c,
    flags=re.DOTALL
)
assert 'font-size:1.5rem' in c, 'Widget not updated'
print('Widget updated')

# ── 2. Fix updateAnalyzeButton — stop clobbering the inner span ──────────────
c = re.sub(
    r'function updateAnalyzeButton\(\) \{.*?^}',
    '''function updateAnalyzeButton() {
  const btnSpan = analyzeBtn.querySelector('[data-i18n]') || analyzeBtn;
  if (isUsageLimitReached()) {
    analyzeBtn.disabled = true;
    btnSpan.textContent = 'Demo Limit Reached (2/2)';
    return;
  }
  analyzeBtn.disabled = !(conversationText && captchaPassed);
  if (typeof t === 'function') {
    btnSpan.textContent = t('analyze_btn');
  }
}''',
    c,
    flags=re.DOTALL | re.MULTILINE
)
assert 'btnSpan' in c, 'updateAnalyzeButton not updated'
print('updateAnalyzeButton updated')

# ── 3. Make checkMath global right after its definition ──────────────────────
c = c.replace(
    'window.checkMath = checkMath;',  # remove any existing assignment first
    ''
)
c = re.sub(
    r'(function checkMath\(\) \{.*?\n\})',
    r'\1\nwindow.checkMath = checkMath;',
    c,
    flags=re.DOTALL
)
assert 'window.checkMath = checkMath' in c, 'checkMath not globalised'
print('checkMath globalised')

# Write with surrogateescape to handle any odd bytes
with open(path, 'w', encoding='utf-8', errors='surrogateescape') as f:
    f.write(c)

import os
size = os.path.getsize(path)
print(f'Written OK — {size} bytes')
