import sys, re
sys.stdout.reconfigure(encoding='utf-8')
with open(r'C:\My Projects\AIRTA\docs\index.html', encoding='utf-8') as f:
    content = f.read()

# Find all data-i18n elements
pattern = r'<([a-zA-Z][a-zA-Z0-9]*)[^>]*data-i18n="([^"]+)"[^>]*>(.*?)</\1>'
matches = re.findall(pattern, content, re.DOTALL)
print('data-i18n elements:')
for tag, key, inner in matches:
    inner_stripped = inner.strip()
    has_html = '<' in inner_stripped
    if inner_stripped:
        print(f'  <{tag}> key={key!r:35} has_html_children={has_html}  content={repr(inner_stripped[:50])}')

# Check the lang selector section
idx = content.find('lang-selector')
print()
print('Lang selector HTML:')
print(content[idx-30:idx+600])
