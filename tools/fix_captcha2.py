import re

path = r'C:\My Projects\AIRTA\docs\index.html'
with open(path, encoding='utf-8') as f:
    content = f.read()

# ── 1. Remove Turnstile script tag ───────────────────────────────────────────
content = re.sub(
    r'  <script src="https://challenges\.cloudflare\.com/turnstile[^"]*"[^>]*></script>\n',
    '',
    content
)
print('Script tag removed:', 'challenges.cloudflare.com' not in content)

# ── 2. Replace Turnstile widget HTML block ────────────────────────────────────
content = re.sub(
    r'<h3 style="margin-top:24px;">3\. Verify You\'re Human</h3>\s*'
    r'<div style="display:flex[^>]+>\s*<div id="turnstile-widget"></div>\s*</div>\s*'
    r'<div id="captchaStatus"[^>]+>Loading verification\.\.\.</div>',
    '''<h3 style="margin-top:24px;">3. Quick Check</h3>
      <div style="display:flex; align-items:center; gap:10px; justify-content:center; margin:12px 0;">
        <span id="mathQuestion" style="color:#a0a0ff; font-size:1rem; font-weight:600;"></span>
        <input id="mathAnswer" type="number" placeholder="?" style="width:70px; padding:8px; border-radius:8px; border:1px solid #3a3a7a; background:#1a1a3a; color:#e0e0ff; font-size:1rem; text-align:center;" oninput="checkMath()" />
      </div>
      <div id="captchaStatus" style="text-align:center; color:#6666aa; font-size:0.8rem; min-height:18px;"></div>''',
    content
)
print('Widget HTML replaced:', 'mathQuestion' in content)
print('turnstile-widget still present:', 'turnstile-widget' in content)

# ── 3. Replace all Turnstile JS with math CAPTCHA ────────────────────────────
content = re.sub(
    r'// CAPTCHA state\s*\n.*?}, 5000\);',
    '''// Simple math CAPTCHA
let captchaPassed = false;
let mathCorrectAnswer = 0;

function generateMathQuestion() {
  const a = Math.floor(Math.random() * 9) + 1;
  const b = Math.floor(Math.random() * 9) + 1;
  mathCorrectAnswer = a + b;
  document.getElementById('mathQuestion').textContent = 'What is ' + a + ' + ' + b + ' =';
  document.getElementById('mathAnswer').value = '';
  captchaPassed = false;
}

function checkMath() {
  const val = parseInt(document.getElementById('mathAnswer').value);
  const statusEl = document.getElementById('captchaStatus');
  if (val === mathCorrectAnswer) {
    captchaPassed = true;
    statusEl.textContent = '\u2713 Verified';
    statusEl.style.color = '#60ff60';
  } else {
    captchaPassed = false;
    statusEl.textContent = '';
  }
  updateAnalyzeButton();
}

// Generate question on page load
generateMathQuestion();''',
    content,
    flags=re.DOTALL
)
print('JS replaced:', 'generateMathQuestion' in content)
print('onloadTurnstileCallback still present:', 'onloadTurnstileCallback' in content)

with open(path, 'w', encoding='utf-8') as f:
    f.write(content)

print('Done.')
