import re

content = open('docs/index.html', encoding='utf-8').read()

# 1. Remove Turnstile script tag
content = content.replace(
    '  <script src="https://challenges.cloudflare.com/turnstile/v0/api.js?onload=onloadTurnstileCallback" async defer></script>\n',
    ''
)

# 2. Replace the Turnstile widget + captchaStatus with a math challenge
old_captcha_html = '''      <h3 style="margin-top:24px;">3. Verify You're Human</h3>
      <div style="display:flex; justify-content:center; margin:12px 0; min-height:65px;">
        <div id="turnstile-widget"></div>
      </div>
      <div id="captchaStatus" style="text-align:center; color:#6666aa; font-size:0.8rem; min-height:18px;">Loading verification...</div>'''

new_captcha_html = '''      <h3 style="margin-top:24px;">3. Quick Check</h3>
      <div style="display:flex; align-items:center; gap:10px; justify-content:center; margin:12px 0;">
        <span id="mathQuestion" style="color:#a0a0ff; font-size:1rem; font-weight:600;"></span>
        <input id="mathAnswer" type="number" placeholder="?" style="width:70px; padding:8px; border-radius:8px; border:1px solid #3a3a7a; background:#1a1a3a; color:#e0e0ff; font-size:1rem; text-align:center;" oninput="checkMath()" />
      </div>
      <div id="captchaStatus" style="text-align:center; color:#6666aa; font-size:0.8rem; min-height:18px;"></div>'''

content = content.replace(old_captcha_html, new_captcha_html)
assert 'mathQuestion' in content, 'CAPTCHA HTML not replaced'

# 3. Replace all the Turnstile JS with a simple math challenge
old_captcha_js = '''// CAPTCHA state
let captchaPassed = false;

function onCaptchaSuccess(token) {
  captchaPassed = true;
  document.getElementById('captchaStatus').textContent = '✓ Verified';
  document.getElementById('captchaStatus').style.color = '#60ff60';
  updateAnalyzeButton();
}

function onCaptchaExpired() {
  captchaPassed = false;
  document.getElementById('captchaStatus').textContent = 'Verification expired — please re-verify';
  document.getElementById('captchaStatus').style.color = '#c0c040';
  updateAnalyzeButton();
}

// Make callbacks global for Turnstile
window.onCaptchaSuccess = onCaptchaSuccess;
window.onCaptchaExpired = onCaptchaExpired;

// Explicitly render Turnstile widget when script loads
window.onloadTurnstileCallback = function() {
  try {
    if (typeof turnstile === 'undefined') {
      console.error('Turnstile library not loaded');
      document.getElementById('captchaStatus').textContent = 'Verification library failed to load.';
      document.getElementById('captchaStatus').style.color = '#ff6060';
      return;
    }
    turnstile.render('#turnstile-widget', {
      sitekey: '0x4AAAAAADh4XmsBKqBvRtu_',
      theme: 'dark',
      callback: onCaptchaSuccess,
      'expired-callback': onCaptchaExpired,
      'error-callback': function(error) {
        console.error('Turnstile error:', error);
        document.getElementById('captchaStatus').textContent = 'Verification failed. Please refresh or check browser compatibility.';
        document.getElementById('captchaStatus').style.color = '#ff6060';
      }
    });
    document.getElementById('captchaStatus').textContent = '';
  } catch (e) {
    console.error('Failed to render Turnstile:', e);
    document.getElementById('captchaStatus').textContent = 'Verification unavailable. Try disabling ad blockers or using a different browser.';
    document.getElementById('captchaStatus').style.color = '#ff6060';
  }
};

setTimeout(function() {
  const widget = document.getElementById('turnstile-widget');
  if (widget && widget.children.length === 0) {
    console.warn('Turnstile widget did not render');
    document.getElementById('captchaStatus').textContent = 'Verification not loading. Ad blockers or privacy extensions may be blocking it.';
    document.getElementById('captchaStatus').style.color = '#ff6060';
  }
}, 5000);'''

new_captcha_js = '''// Simple math CAPTCHA
let captchaPassed = false;
let mathCorrectAnswer = 0;

function generateMathQuestion() {
  const a = Math.floor(Math.random() * 9) + 1;
  const b = Math.floor(Math.random() * 9) + 1;
  mathCorrectAnswer = a + b;
  document.getElementById('mathQuestion').textContent = `What is ${a} + ${b} =`;
  document.getElementById('mathAnswer').value = '';
  captchaPassed = false;
}

function checkMath() {
  const val = parseInt(document.getElementById('mathAnswer').value);
  const statusEl = document.getElementById('captchaStatus');
  if (val === mathCorrectAnswer) {
    captchaPassed = true;
    statusEl.textContent = '✓ Verified';
    statusEl.style.color = '#60ff60';
  } else {
    captchaPassed = false;
    statusEl.textContent = '';
  }
  updateAnalyzeButton();
}

// Generate question on page load
generateMathQuestion();'''

content = content.replace(old_captcha_js, new_captcha_js)
assert 'generateMathQuestion' in content, 'CAPTCHA JS not replaced'

open('docs/index.html', 'w', encoding='utf-8').write(content)
print('CAPTCHA fixed successfully')
