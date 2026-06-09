"""Translate narcissist and serial_killer pack keys into all 15 non-English languages."""
import json, time, requests
from pathlib import Path

API_KEY = "sk-61422c74411549248f23b4656d4152ae"
API_URL = "https://api.deepseek.com/v1/chat/completions"
L10N = Path(r'C:\My Projects\AIRTA\lib\l10n')

LANGUAGES = {
    "es": "Spanish", "fr": "French", "pt": "Portuguese", "de": "German",
    "it": "Italian", "ja": "Japanese", "ko": "Korean", "zh": "Chinese (Simplified)",
    "ar": "Arabic", "hi": "Hindi", "tr": "Turkish", "ru": "Russian",
    "nl": "Dutch", "pl": "Polish", "uk": "Ukrainian",
}
NEW_PREFIXES = ['metric_narcissist_', 'metric_serial_killer_', 'packNarcissistLabel', 'packSerialKillerLabel']

SYSTEM = """You are a professional translator specialising in psychology, forensic science, and relationship terminology.
Translate the given JSON object of English metric names and descriptions into {lang_name}.
Rules:
- Return ONLY a valid JSON object with the same keys — no markdown, no explanation.
- Translate values only — never translate keys.
- Names (short labels) should be 2-5 words.
- Descriptions (1-2 sentences) should be clear and professional.
- For Arabic, Hindi, Ukrainian, Russian, Japanese, Korean, Chinese: use native script."""

def call_deepseek(system, user, retries=4):
    headers = {"Authorization": f"Bearer {API_KEY}", "Content-Type": "application/json"}
    payload = {"model": "deepseek-chat",
               "messages": [{"role": "system", "content": system}, {"role": "user", "content": user}],
               "temperature": 0.3, "max_tokens": 2000}
    for attempt in range(retries):
        try:
            r = requests.post(API_URL, headers=headers, json=payload, timeout=60)
            r.raise_for_status()
            return r.json()["choices"][0]["message"]["content"].strip()
        except requests.exceptions.HTTPError:
            if r.status_code == 429: time.sleep(2 ** (attempt + 2))
            else: raise
        except Exception:
            if attempt < retries - 1: time.sleep(2 ** attempt)
            else: raise

def parse_json(raw):
    raw = raw.strip()
    if raw.startswith("```"):
        raw = raw.split("\n", 1)[1] if "\n" in raw else raw[3:]
        if raw.endswith("```"): raw = raw[:-3]
    return json.loads(raw.strip())

def translate_lang(lang_code, lang_name):
    en_arb = json.load(open(L10N / 'app_en.arb', encoding='utf-8'))
    arb = json.load(open(L10N / f'app_{lang_code}.arb', encoding='utf-8'))

    untranslated = {k: en_arb[k] for k in arb
                    if any(k.startswith(p) or k == p for p in NEW_PREFIXES)
                    and arb.get(k) == en_arb.get(k)}

    if not untranslated:
        print(f"[{lang_code}] Already done", flush=True)
        return

    items = list(untranslated.items())
    print(f"[{lang_code}] {lang_name}: {len(items)} to translate...", flush=True)

    BATCH_SIZE = 20
    system = SYSTEM.format(lang_name=lang_name)
    for i in range(0, len(items), BATCH_SIZE):
        batch = dict(items[i:i+BATCH_SIZE])
        print(f"  Batch {i//BATCH_SIZE+1}/{(len(items)-1)//BATCH_SIZE+1}...", end=" ", flush=True)
        try:
            raw = call_deepseek(system, json.dumps(batch, ensure_ascii=False, indent=2))
            result = parse_json(raw)
            for k, v in result.items():
                if k in arb: arb[k] = v
            print(f"OK ({len(result)})", flush=True)
        except Exception as e:
            print(f"FAILED: {e}", flush=True)
        time.sleep(0.5)

    with open(L10N / f'app_{lang_code}.arb', 'w', encoding='utf-8') as f:
        json.dump(arb, f, ensure_ascii=False, indent=2)
        f.write('\n')
    print(f"  [{lang_code}] Saved", flush=True)

if __name__ == '__main__':
    import sys
    if len(sys.argv) < 3:
        print("Usage: python translate_new_packs.py <lang_code> <lang_name>")
        sys.exit(1)
    translate_lang(sys.argv[1], sys.argv[2])
