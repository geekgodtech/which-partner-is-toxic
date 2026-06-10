path = r'C:\My Projects\AIRTA\docs\index.html'
with open(path, encoding='utf-8') as f:
    c = f.read()

SEARCH = (
    "// Auto-detect browser language on load\n"
    "(function() {\n"
    "  const nav = navigator.language || 'en';\n"
    "  const code = nav.split('-')[0].toLowerCase();\n"
    "  const supported = Object.keys(TRANSLATIONS);\n"
    "  const detected = supported.includes(code) ? code : 'en';\n"
    "  setLang(detected);\n"
    "})();"
)

REPLACE = (
    "// Auto-detect browser language on load\n"
    "(function() {\n"
    "  const nav = navigator.language || 'en';\n"
    "  const code = nav.split('-')[0].toLowerCase();\n"
    "  const supported = Object.keys(TRANSLATIONS);\n"
    "  const detected = supported.includes(code) ? code : 'en';\n"
    "  setLang(detected);\n"
    "})();\n"
    "\n"
    "// Belt-and-suspenders: re-run after DOM is fully loaded in case\n"
    "// the inline IIFE ran before layout was complete (e.g. cached page)\n"
    "if (document.readyState === 'loading') {\n"
    "  document.addEventListener('DOMContentLoaded', generateMathQuestion);\n"
    "} else {\n"
    "  generateMathQuestion();\n"
    "}"
)

assert SEARCH in c, "Block not found"
c2 = c.replace(SEARCH, REPLACE, 1)
assert c2 != c
with open(path, 'w', encoding='utf-8') as f:
    f.write(c2)
print("Done.")
