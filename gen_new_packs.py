"""
Generate 50 Serial Killer + 50 Narcissist metric definitions via DeepSeek,
then write them to a JSON file for use in the code generation step.
"""
import json, requests, time

API_KEY = "sk-61422c74411549248f23b4656d4152ae"
API_URL = "https://api.deepseek.com/v1/chat/completions"

def call_deepseek(system, user):
    headers = {"Authorization": f"Bearer {API_KEY}", "Content-Type": "application/json"}
    payload = {
        "model": "deepseek-chat",
        "messages": [{"role": "system", "content": system},
                     {"role": "user",   "content": user}],
        "temperature": 0.4,
        "max_tokens": 4000,
    }
    for attempt in range(4):
        try:
            r = requests.post(API_URL, headers=headers, json=payload, timeout=90)
            r.raise_for_status()
            return r.json()["choices"][0]["message"]["content"].strip()
        except Exception as e:
            if attempt < 3:
                time.sleep(2 ** attempt)
            else:
                raise

def parse_json(raw):
    raw = raw.strip()
    if raw.startswith("```"):
        raw = raw.split("\n", 1)[1] if "\n" in raw else raw[3:]
        if raw.endswith("```"):
            raw = raw[:-3]
    return json.loads(raw.strip())

SYSTEM = """You are a forensic psychologist and criminology expert writing definitions for a relationship toxicity analysis app.
Return ONLY a valid JSON array — no markdown, no explanation.
Each element: {"name": "Short Label 2-5 words", "description": "One-sentence clinical description of what the app looks for in text, 15-30 words."}"""

# ── Serial Killer Pack ─────────────────────────────────────────────────────────
sk_prompt = """Generate exactly 50 psychological metrics most commonly attributed to serial killers and violent predators, suitable for detecting dangerous behavioral patterns in text communications.
Focus on: predatory framing, lack of empathy, dehumanization, objectification, control fixation, thrill-seeking language, compartmentalization, victim-selection signals, sadistic enjoyment, manipulation for harm.
Make names concise (2-5 words) and descriptions clinical/forensic. Return JSON array of 50 objects."""

print("Generating Serial Killer metrics...")
sk_raw = call_deepseek(SYSTEM, sk_prompt)
sk_metrics = parse_json(sk_raw)
print(f"  Got {len(sk_metrics)} metrics")

# ── Narcissist Pack ───────────────────────────────────────────────────────────
narc_prompt = """Generate exactly 50 psychological metrics that are the most common narcissistic personality traits and behaviors, suitable for detecting narcissistic patterns in text communications.
Focus on: grandiosity, entitlement, lack of empathy, supply-seeking, triangulation, love bombing, devaluation, silent treatment, DARVO, gaslighting, rage at criticism, boundary violations, envy, exploitation, mirroring.
Make names concise (2-5 words) and descriptions clinical. Return JSON array of 50 objects."""

print("Generating Narcissist metrics...")
time.sleep(1)
narc_raw = call_deepseek(SYSTEM, narc_prompt)
narc_metrics = parse_json(narc_raw)
print(f"  Got {len(narc_metrics)} metrics")

out = {
    "serial_killer": sk_metrics,
    "narcissist": narc_metrics,
}
with open(r"C:\My Projects\AIRTA\new_pack_metrics.json", "w", encoding="utf-8") as f:
    json.dump(out, f, ensure_ascii=False, indent=2)
print("Saved to new_pack_metrics.json")
