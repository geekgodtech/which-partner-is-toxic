import sys
sys.stdout.reconfigure(encoding='utf-8')

with open(r'C:\My Projects\AIRTA\AGENTS.md', encoding='utf-8') as f:
    content = f.read()

old = (
    "## Credentials (Local Only — Never Commit)\n"
    "Stored in `deploy.ps1` and `run_with_secrets.ps1` (both gitignored):\n"
    "- **Keystore:** `android/app/airta-release.keystore`\n"
    "- **Key alias:** `airta`\n"
    "- **Store/Key password:** `Kennyloggins1!`\n"
    "- **DeepSeek API key:** `YOUR_DEEPSEEK_API_KEY_FROM_SECRETS_ENV`"
)

new = (
    "## Credentials (Local Only — Never Commit)\n"
    "**API keys live in `secrets.env` (gitignored). Never hardcode keys in any committed file.**\n\n"
    "Stored in `deploy.ps1`, `run_with_secrets.ps1`, and `secrets.env` (all gitignored):\n"
    "- **Keystore:** `android/app/airta-release.keystore`\n"
    "- **Key alias:** `airta`\n"
    "- **Store/Key password:** `Kennyloggins1!`\n"
    "- **DeepSeek App API key:** see `secrets.env` → `DEEPSEEK_API_KEY`\n"
    "- **DeepSeek Video API key:** see `secrets.env` → `DEEPSEEK_VIDEO_API_KEY`"
)

if old in content:
    content = content.replace(old, new, 1)
    with open(r'C:\My Projects\AIRTA\AGENTS.md', 'w', encoding='utf-8') as f:
        f.write(content)
    print('AGENTS.md updated OK')
else:
    idx = content.find('Credentials')
    print('NOT FOUND. Context:')
    print(repr(content[idx:idx+400]))
