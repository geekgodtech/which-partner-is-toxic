// Test the script in Node.js CJS context
const fs = require('fs');

const html = fs.readFileSync('C:/My Projects/AIRTA/docs/index.html', 'utf-8');

const scriptStart = html.indexOf('<script>') + '<script>'.length;
const scriptEnd = html.indexOf('</script>');
const script = html.slice(scriptStart, scriptEnd);

// Mock DOM
const mockEl = (id) => ({
  id,
  textContent: '',
  style: {},
  disabled: false,
  classList: { toggle: () => {}, add: () => {}, remove: () => {} },
  getAttribute: (a) => null,
  querySelector: () => ({ textContent: '' }),
  querySelectorAll: () => [],
  addEventListener: () => {},
  value: '',
});

const fakeDoc = {
  getElementById: (id) => mockEl(id),
  querySelectorAll: (sel) => [],
  documentElement: { lang: 'en', dir: 'ltr' },
  get cookie() { return ''; },
  set cookie(v) {},
};

const fakeWindow = {
  checkMath: null,
  _selectedLang: 'en',
  addEventListener: () => {},
};

const fakeNavigator = { language: 'en' };

// Wrap in a function to provide controlled globals
const wrappedScript = `
(function(document, window, navigator) {
  ${script}
})
`;

try {
  const fn = eval(wrappedScript);
  fn(fakeDoc, fakeWindow, fakeNavigator);
  console.log('Script executed successfully - no syntax/runtime errors');
} catch (e) {
  console.error('ERROR:', e.message);
  if (e.stack) {
    const lines = e.stack.split('\n');
    console.error(lines.slice(0, 5).join('\n'));
  }
  
  // Try to find where in the script the error occurs by chunking
  const scriptLines = script.split('\n');
  console.error('\nSearching for error location...');
  for (let i = 100; i <= scriptLines.length; i += 100) {
    const chunk = scriptLines.slice(0, i).join('\n');
    try {
      eval(`(function(document, window, navigator) { ${chunk} })`);
    } catch (e2) {
      if (e2.message !== 'Unexpected end of input') {
        console.error(`Error around script line ${i}: ${e2.message}`);
        // Show context
        for (let j = Math.max(0, i-105); j < Math.min(scriptLines.length, i+5); j++) {
          if (scriptLines[j] && (scriptLines[j].includes("'") || scriptLines[j].includes('"'))) {
            console.error(`  ${j+1}: ${scriptLines[j].substring(0, 100)}`);
          }
        }
        break;
      }
    }
  }
}
