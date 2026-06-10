import urllib.request, ssl, re, sys
sys.stdout.reconfigure(encoding='utf-8')
ctx = ssl.create_default_context()
req = urllib.request.Request('https://airta.net/', headers={'User-Agent': 'Mozilla/5.0 Chrome/120', 'Cache-Control': 'no-cache'})
with urllib.request.urlopen(req, context=ctx, timeout=15) as r:
    body = r.read().decode('utf-8')

cf_idx = body.find('cloudflareinsights')
print('CF analytics script present:', cf_idx != -1)
if cf_idx != -1:
    print('CF script length added approx 743 bytes (standard beacon.min.js tag)')

print('DOMContentLoaded present:', 'DOMContentLoaded' in body)
print('generateMathQuestion present:', 'generateMathQuestion' in body)
print('window.checkMath present:', 'window.checkMath = checkMath' in body)
print('Belt-and-suspenders:', 'Belt-and-suspenders' in body)

# Find math_question template
match = re.search(r"math_question: '([^']+)'", body)
if match:
    print('math_question template:', match.group(1))
else:
    print('math_question NOT found')

# Show span area
idx = body.find('mathQuestion')
print('\nSpan area:')
print(repr(body[idx-20:idx+200]))

# Check if setLang is called on load
print('\nsetLang call present:', 'setLang(detected)' in body)
print('currentLang set:', 'currentLang = lang' in body)
