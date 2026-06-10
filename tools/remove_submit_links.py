import re
content = open('docs/index.html', encoding='utf-8').read()
pattern = r'\s*<h2>Create [^<]+ Metric Packs</h2>\s*<div class="links">.*?</div>'
content2 = re.sub(pattern, '', content, flags=re.DOTALL)
open('docs/index.html', 'w', encoding='utf-8').write(content2)
print('submit-50 still present:', 'submit-50' in content2)
print('submit-100 still present:', 'submit-100' in content2)
