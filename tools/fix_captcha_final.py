path = r'C:\My Projects\AIRTA\docs\index.html'
with open(path, encoding='utf-8') as f:
    c = f.read()

# 1. Change DOMContentLoaded to window 'load' event so it fires AFTER
#    Cloudflare's email-decode.min.js has finished, avoiding race condition.
#    Also add a direct fallback call with setTimeout(0) for immediate execution.
SEARCH_INIT = (
    "// Belt-and-suspenders: re-run after DOM is fully loaded in case\n"
    "// the inline IIFE ran before layout was complete (e.g. cached page)\n"
    "if (document.readyState === 'loading') {\n"
    "  document.addEventListener('DOMContentLoaded', generateMathQuestion);\n"
    "} else {\n"
    "  generateMathQuestion();\n"
    "}"
)

REPLACE_INIT = (
    "// Belt-and-suspenders: ensure math question is visible after all\n"
    "// third-party scripts (including Cloudflare's email-decode) have run.\n"
    "// Use window 'load' event + setTimeout fallback to survive any race.\n"
    "function _ensureMathVisible() {\n"
    "  const span = document.getElementById('mathQuestion');\n"
    "  if (!span || span.textContent.trim()) return; // already set\n"
    "  generateMathQuestion();\n"
    "}\n"
    "window.addEventListener('load', _ensureMathVisible);\n"
    "// Also fire after a short delay as a final fallback\n"
    "setTimeout(_ensureMathVisible, 300);"
)

assert SEARCH_INIT in c, "Init block not found"
c = c.replace(SEARCH_INIT, REPLACE_INIT, 1)
print("OK: Replaced DOMContentLoaded with window.load + setTimeout fallback")

with open(path, 'w', encoding='utf-8') as f:
    f.write(c)
print("Saved.")
