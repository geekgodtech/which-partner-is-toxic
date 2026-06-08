"""Quick smoke test — run headlessly to verify all imports and data layer work."""
import os, sys, time, tempfile, shutil
os.environ["QT_QPA_PLATFORM"] = "offscreen"

# Imports
from contact_tracker import ContactTracker
from priority_engine import PriorityEngine
from reply_generator import ReplyGenerator
print("  Data layer imports OK")

from ui.styles       import APP_STYLESHEET
from ui.post_detail  import PostDetailPanel
from ui.queue_panel  import QueuePanel
from ui.settings_panel import SettingsPanel
from ui.stats_panel  import StatsPanel
print("  UI imports OK")

# ContactTracker functional test
tmp = tempfile.mkdtemp()
t = ContactTracker(db_path=os.path.join(tmp, "test.db"))

post = {
    "id": "test_001",
    "platform": "reddit",
    "title": "He denies everything I say",
    "url": "https://reddit.com/r/test",
    "author": "user123",
    "subreddit_or_channel": "relationship_advice",
    "body_preview": "Sample body text about gaslighting",
    "posted_at": time.time() - 3600,
    "found_at": time.time(),
    "score": 0,
    "keyword_matches": '["gaslighting", "manipulation"]',
    "engagement_count": 450,
    "status": "new",
    "draft_reply": "",
    "notes": "",
}

t.upsert_post(post)
assert t.has_post("test_001"), "has_post failed"
queue = t.get_queue()
assert len(queue) == 1, f"queue should have 1 post, got {len(queue)}"
t.mark_opened("test_001")
t.mark_contacted("test_001")
stats = t.get_today_stats()
assert stats["contacted"] == 1, f"stats failed: {stats}"
try:
    t.close()
except Exception:
    pass
import gc; gc.collect()
shutil.rmtree(tmp, ignore_errors=True)
print("  ContactTracker functional test OK")

# PriorityEngine test
pe = PriorityEngine()
weights = {"recency": 0.4, "engagement": 0.25, "keyword_strength": 0.2, "platform": 0.1, "activity": 0.05}
platform_ranks = {"reddit": 5, "youtube": 4, "tiktok": 3, "x": 3, "facebook": 2}
score = pe.calculate_score(post, weights, platform_ranks)
print(f"  PriorityEngine score: {score:.1f}/100  OK")

# ReplyGenerator test
rg = ReplyGenerator()
reply = rg.generate(post)
assert len(reply) > 50, f"Reply too short: {len(reply)} chars"
print(f"  ReplyGenerator OK — {len(reply)} chars generated")

print()
print("All smoke tests passed.")
