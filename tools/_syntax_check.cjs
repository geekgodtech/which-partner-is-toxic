const fs = require('fs');
const vm = require('vm');

const html = fs.readFileSync('C:/My Projects/AIRTA/docs/index.html', 'utf-8');
const scriptStart = html.indexOf('<script>') + '<script>'.length;
const scriptEnd = html.indexOf('</script>');
const script = html.slice(scriptStart, scriptEnd);

console.log('Script length:', script.length, 'chars,', script.split('\n').length, 'lines');

try {
  new vm.Script(script);
  console.log('SYNTAX OK - no parse errors');
} catch(e) {
  console.error('SYNTAX ERROR:', e.message);
  if (e.stack) {
    const m = e.stack.match(/evalmachine[^:]*:(\d+)/);
    if (m) {
      const ln = parseInt(m[1]);
      const lines = script.split('\n');
      console.error(`At script line ${ln}:`);
      for (let i = Math.max(0, ln-5); i < Math.min(lines.length, ln+3); i++) {
        const marker = i+1 === ln ? '>>>' : '   ';
        console.error(`${marker} ${i+1}: ${lines[i]}`);
      }
    }
  }
}
