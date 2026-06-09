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

---

## Session - 2026-06-08 14:45

### What was accomplished
- Fixed missing pack tiles in the metrics grid by correcting demo mode initialization
  - Changed `isPackGoodUnlocked`, `isPackBadUnlocked`, and `isPackUglyUnlocked` to default to `true` in DEMO_MODE
  - Previously they were defaulting to false even in demo mode, causing pack tiles to always show
- Fixed purchase custom metric tile text overflow issue
  - Increased spacing between title and description from 0.03 to 0.04 of constraint width
- Successfully built and deployed demo APK (95.9 MB)
  - Pushed to GitHub Pages: https://geekgodtech.github.io/AIRTA/releases/airta-demo.apk
  - Installed and launched on device RFCX70ZAWZX

### Current state
- **Phone:** Latest demo APK installed with pack tiles and text overflow fixes
- **Pack tiles:** Now correctly hidden in demo mode since packs are pre-unlocked
- **Purchase custom metric tile:** Text no longer overlaps with proper spacing
- **Git:** Commit `c1c17ad` - Update demo APK - 2026-06-08 14:44

### Next steps / open items
- None - all requested fixes have been completed and deployed

### Key facts
- Demo mode now pre-unlocks all three metric packs (Good, Bad, Ugly)
- Pack tiles only appear when packs are locked (production mode or before purchase)

---

## Session - 2026-06-08 14:54

### What was accomplished
- Fixed pack tiles not showing by converting `availableMetrics` from a final list to a getter that dynamically builds the list based on unlock status
  - Now properly includes pack metrics when packs are unlocked
  - Simplified unlock methods to only set flags and notify listeners
- Fixed purchase custom metric tile text overflow on all screen sizes
  - Added `maxLines: 2` with `TextOverflow.ellipsis` to the title
  - Added `maxLines: 3` with `TextOverflow.ellipsis` to the description
- Moved return-to-top arrow button up from bottom: 16 to bottom: 80 to avoid covering the price tag
- Successfully built and deployed demo APK (95.9 MB)
  - Pushed to GitHub Pages: https://geekgodtech.github.io/AIRTA/releases/airta-demo.apk
  - Installed and launched on device RFCX70ZAWZX

### Current state
- **Phone:** Latest demo APK installed with all fixes applied
- **Pack tiles:** Now correctly showing/hiding based on unlock status
- **Text overflow:** Fixed for both title and description in purchase tile
- **Return-to-top button:** Moved up to avoid covering price tags
- **Git:** Commit `23d8923` - Update demo APK - 2026-06-08 14:54

### Next steps / open items
- None - all requested fixes have been completed and deployed

### Key facts
- `availableMetrics` is now a computed getter that dynamically includes metrics based on unlock status
- Text widgets now have proper overflow handling with ellipsis
---

## Session - 2026-06-08 21:00 (Adaptive/Devin)

### What was accomplished

#### AIRTA Flutter App — Metric Tile Layout (SEALED / DO NOT REGRESS)
- Replaced broken GridView aspect-ratio approach with a single unified GridView using mainAxisExtent for fixed pixel tile heights
- Per-column tile heights: 1-col=	ileWidth*0.90 (260-380px), 2-col=	ileWidth*1.20, 3+col=	ileWidth*1.35
- All tiles (metric + sales) in one grid — same column count, same spacing, seamless layout
- AutoSizeText on all titles with wrapWords: false — font scales DOWN from large starting size, never breaks words mid-word
- AutoSizeText on body text — starts at fontSize 32, scales down to fill the full Expanded space between title and radio/price badge
- Removed all ClipRect wrappers that were preventing ellipsis from rendering
- MainAxisSize.max on inner columns so content fills the tile height
- Expanded wraps body text so price badge/radio stays anchored at bottom
- Fixed deploy script: db install -r (upgrade install) instead of uninstall+install — preserves SharedPreferences across deploys
- Purchased metric packs now persist across app restarts in demo mode
- Sales tiles (Purchase Custom, The Good/Bad/Ugly) disappear from grid after purchase
- **GIT TAG SEALED:** -tiles-perfect-2026-06-08 — pushed to origin

#### airta.net Website
- Domain airta.net is LIVE (DNS pointing to GitHub Pages correctly)
- Added 6 logo JPGs (Logo 01-06) to docs/ — rotate randomly on every page load via JavaScript
- Logo displayed at 180x180px with rounded corners in page header
- Site remains noindex/nofollow (not discoverable by Google — intentional)

#### Backup Created
- Source backup (excluding build artifacts): C:\My Projects\AIRTA-Backup-TILES-PERFECT-2026-06-08-src.zip (60 MB)
- Full backup (includes APK): C:\My Projects\AIRTA-Backup-TILES-PERFECT-2026-06-08.zip (1.16 GB)

### Current State
- Demo APK deployed to phone (device RFCX70ZAWZX) and GitHub Pages
- airta.net is live, logo rotating, noindex
- Tile layout is PERFECT on both small screen (1-col) and large screen (3-col)
- Git tag -tiles-perfect-2026-06-08 seals this state on origin

### Concurrent Projects in Progress
- **AIRTA Social Monitor** (C:\My Projects\AIRTA Social Monitor\) — Reddit/social aggregator crawler that monitors relationship-topic content. Backend modules being built.
- **AIRTA Video Studio** (C:\My Projects\AIRTA Video Studio\) — Automated video generation pipeline. Modules in progress: DeepSeek script generator (30 scripts/day x 16 languages), Edge TTS voiceover, moviepy compositor (9:16 format, subtitles, lower-third), YouTube/TikTok/Facebook upload, PyQt6 GUI, daily scheduler.
- **Future implementation plans** for the main AIRTA app are documented in: C:\My Projects\AIRTA\PROJECT_VISION.md

### Next Steps / Open Items
- Resume AIRTA Video Studio build (edge TTS, compositor, upload modules, GUI, scheduler)
- Resume Social Monitor aggregator crawler
- Continue Play Store / App Store submission prep
- airta.net DNS: may want to add AAAA (IPv6) records and www CNAME for full coverage
- Consider iOS TestFlight build when ready

### Key Facts
- Git tag for perfect tile state: -tiles-perfect-2026-06-08
- Backup zips: C:\My Projects\AIRTA-Backup-TILES-PERFECT-2026-06-08-src.zip
- airta.net → geekgodtech.github.io (GitHub Pages, DNS A records set at registrar)
- Deploy command: powershell -ExecutionPolicy Bypass -File "C:\My Projects\AIRTA\deploy.ps1"
- deploy.ps1 now uses db install -r (preserves app data / purchases)
