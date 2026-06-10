// Minimal test: extract just the TRANSLATIONS + setLang + generateMathQuestion code
// and run it in Node to find any syntax/runtime errors

import { readFileSync } from 'fs';
import { createRequire } from 'module';

const html = readFileSync('C:/My Projects/AIRTA/docs/index.html', 'utf-8');

// Extract the script content
const scriptStart = html.indexOf('<script>') + '<script>'.length;
const scriptEnd = html.indexOf('</script>');
const script = html.slice(scriptStart, scriptEnd);

// Mock the DOM
const mockEl = (id) => ({
  id,
  textContent: '',
  style: {},
  disabled: false,
  classList: { toggle: () => {}, add: () => {}, remove: () => {} },
  getAttribute: (a) => a === 'onclick' ? `setLang('en')` : null,
  querySelector: () => ({ textContent: '' }),
  querySelectorAll: () => [],
  addEventListener: () => {},
  value: '',
});

global.document = {
  getElementById: (id) => mockEl(id),
  querySelectorAll: (sel) => [],
  documentElement: { lang: 'en', dir: 'ltr' },
  cookie: '',
};
global.window = {
  checkMath: null,
  _selectedLang: 'en',
  addEventListener: () => {},
};
global.navigator = { language: 'en' };
global.setTimeout = () => {};

// Try to parse and execute - will throw on syntax error
try {
  eval(script);
  console.log('Script executed successfully');
  console.log('currentLang:', typeof currentLang !== 'undefined' ? currentLang : 'UNDEFINED');
  console.log('TRANSLATIONS keys:', typeof TRANSLATIONS !== 'undefined' ? Object.keys(TRANSLATIONS).join(', ') : 'UNDEFINED');
  // Test setLang
  if (typeof setLang === 'function') {
    setLang('de');
    console.log('setLang("de") OK');
  }
  if (typeof generateMathQuestion === 'function') {
    generateMathQuestion();
    console.log('generateMathQuestion() OK');
  }
} catch (e) {
  console.error('ERROR:', e.message);
  // Find line number
  const lines = script.split('\n');
  if (e.stack) {
    const m = e.stack.match(/<anonymous>:(\d+):(\d+)/);
    if (m) {
      const ln = parseInt(m[1]);
      console.error(`At script line ${ln}:`);
      for (let i = Math.max(0, ln-3); i < Math.min(lines.length, ln+2); i++) {
        console.error(`  ${i+1}: ${lines[i]}`);
      }
    }
  }
}
