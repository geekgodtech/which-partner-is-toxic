# AIRTA Social Monitor

A local desktop dashboard that crawls Reddit, YouTube, TikTok, X (Twitter), and Facebook for
posts matching relationship toxicity keywords — then presents them in a prioritized queue so
you can respond one at a time.

## Quick Start

```powershell
cd "C:\My Projects\AIRTA\social_monitor"

# 1. Install dependencies
pip install -r requirements.txt
playwright install chromium   # only needed for Facebook crawling

# 2. Configure credentials
copy .env.template .env
# Edit .env and add your API keys (see comments in the file)

# 3. Run
python main.py
```

## What You Need (Minimum)

| Platform | Credential | Required? |
|----------|-----------|-----------|
| Reddit   | REDDIT_CLIENT_ID + SECRET + USERNAME + PASSWORD | Recommended — no quota limits |
| YouTube  | YOUTUBE_API_KEY | Optional — 10k free requests/day |
| X        | X_BEARER_TOKEN | Optional — 500k tweets/month free |
| TikTok   | CLIENT_KEY + SECRET | Optional — requires Research API approval |
| Facebook | FACEBOOK_EMAIL + PASSWORD | Optional — Playwright scraping |

The app starts and runs fine with zero credentials — Reddit is the only one worth prioritizing
first since it has the most relevant conversation volume.

## How It Works

1. **Crawlers** run in the background, streaming or polling for new posts that match
   relationship/toxicity keywords (same scoring system as the existing Reddit bot)
2. **Priority engine** scores each post 0–100 based on recency, engagement, keyword match
   strength, platform weight, and whether there's been activity since you last replied
3. **Queue panel** shows all active posts sorted by score — highest priority first
4. **You work through them one at a time:**
   - Click a post to see the full detail and auto-generated draft reply
   - Click **Open Post** to open it in your browser
   - Click **Copy Reply** to copy the draft to clipboard — paste and send manually
   - Click **Mark Contacted** to log it and remove from queue
5. **All history is saved** in a local SQLite database (`data/monitor.db`)

## Configuring Priority Weights

Open the **Settings** tab to adjust sliders:

| Factor | What it does |
|--------|-------------|
| Post Recency | Newer posts score higher |
| Engagement Size | Posts with more views/comments rank up |
| Keyword Strength | More toxicity keywords = higher score |
| Platform Weight | Your ranking of which platform matters most |
| Activity Since Reply | Posts with new comments after your reply get bumped back up |

Changes rescore the entire queue immediately.

## Data Storage

All data lives locally in `social_monitor/data/`:
- `monitor.db` — SQLite database (posts, history, stats)
- `monitor.log` — application log

Nothing is sent to any server.

## Getting API Keys

**Reddit:**
1. Go to https://www.reddit.com/prefs/apps
2. Create app → script type
3. Copy client ID (under app name) and secret

**YouTube:**
1. Go to https://console.cloud.google.com
2. Create project → Enable YouTube Data API v3
3. Credentials → Create API Key

**X (Twitter):**
1. Go to https://developer.twitter.com/en/portal/dashboard
2. Create project/app
3. Copy Bearer Token from Keys & Tokens tab

**TikTok Research API:**
1. Apply at https://developers.tiktok.com/products/research-api
2. Approval required — takes a few days
3. Once approved, copy Client Key and Secret

**Facebook:**
Enter your regular Facebook email/password in .env.
The crawler uses Playwright to scrape public posts only.
