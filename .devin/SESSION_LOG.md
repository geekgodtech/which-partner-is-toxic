# AIRTA Session Log
# Each session appends a new entry below. Most recent is at the bottom.
# Read this at the start of every session to get up to speed.

---

## Session - 2026-06-08 (Adaptive/Devin)

### What was accomplished
- Scanned and assessed full project state after free-agent session left things in an unknown state
- Confirmed all production build artifacts are intact in `Builds/` folder (AAB, APK, IPA)
- Confirmed signing keystore `android/app/airta-release.keystore` is present and valid (alias: `airta`)
- Explained Play Protect warning: normal for sideloaded APKs, NOT a signing issue; ADB installs bypass it
- Deleted 13 blank white placeholder PNGs from `Screenshots/Android/` and `Screenshots/Apple/` root level
- Rebuilt demo APK from scratch with latest code (95.4 MB, all ~30 commits since last demo build)
  - Includes: Discord integration, dark mode toggle, RCS/MMS timeout fixes, 16-language localization,
    date range analysis, cycling loading messages, large-thread warning, medical disclaimer screen,
    jet-black loading overlay, percentage metric display, and more
- Copied new demo APK to `docs/releases/airta-demo.apk` and committed + pushed to GitHub Pages
- Uninstalled old app from phone (device: RFCX70ZAWZX), installed new demo APK via ADB, launched app
- Fixed NDK version in `build.gradle.kts`: 27.0.12077973 → 28.2.13676358 (eliminates build warning)
- Created `deploy.ps1` — full automated workflow script (gitignored, contains credentials)
- Created `run_with_secrets.ps1` — credentials-only file (gitignored)
- Wired Windows Git Credential Manager so `C:\Program Files\Git\bin\git.exe` can push to GitHub
- Created `AGENTS.md` at project root — permanent project memory read by all agents
- Created `.devin/workflows/deploy.md` — deploy skill agents can invoke
- Created `.devin/hooks.v1.json` — SessionStart and Stop hooks
- Created `.devin/scripts/session_start.ps1` — checks git/ADB/project dir, injects session log
- Created `.devin/scripts/session_end.ps1` — forces session summary before agent stops
- Created global `%APPDATA%\devin\AGENTS.md` — applies to every session, ensures session log is read first

### Current state
- **Phone:** Demo APK installed and running (device RFCX70ZAWZX)
- **GitHub Pages demo URL:** https://geekgodtech.github.io/AIRTA/releases/airta-demo.apk (current)
- **Git:** main branch, all changes pushed, remote = https://github.com/geekgodtech/AIRTA.git
- **Last commit:** `30191b4` — Add AGENTS.md project memory and deploy workflow skill
- **Production builds** (latest): `Builds/06-07-26--13.50/` — `AIRTA - Release.apk`, `.aab`, `.ipa`
- **Screenshots:** 223 valid PNGs across 16 languages in `Screenshots/Android/` and `Screenshots/Apple/`
- **Firebase error in screenshots:** Known/harmless — Remote Config can't init in headless mode

### Next steps / open items
- User wants to register an S-Corp in Florida (recommended: file directly at dos.myflorida.com/sunbiz, skip Inc Authority, save money)
- Google Play Store submission ($25 one-time fee)
- Apple App Store submission ($99/year, needs Apple Developer account)
- Consider updating app version number before store submission (currently 1.0.0+1)
- Kotlin Gradle Plugin (KGP) warnings on build — non-blocking but will eventually need plugin updates

### Key facts
- **Package ID:** `com.airta.airelationshiptoxicityanalyzer`
- **Keystore:** `android/app/airta-release.keystore` | Alias: `airta` | Password: `Kennyloggins1!`
- **DeepSeek API key:** `sk-61422c74411549248f23b4656d4152ae`
- **Credentials file:** `deploy.ps1` (gitignored — never commit)
- **Git push:** MUST use `C:\Program Files\Git\bin\git.exe` — MSYS2 git has no GitHub auth
- **Deploy command:** `powershell -ExecutionPolicy Bypass -File "C:\My Projects\AIRTA\deploy.ps1"`
- **ADB device:** RFCX70ZAWZX (Samsung, USB debugging active)
- **Flutter:** 3.44.0 stable | Dart: 3.12.0
