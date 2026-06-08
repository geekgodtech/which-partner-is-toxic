import time
from reply_generator import ReplyGenerator

rg = ReplyGenerator()
post = {
    "id": "test_001",
    "platform": "reddit",
    "author": "user123",
    "subreddit_or_channel": "relationship_advice",
    "title": "He denies everything I say happened",
    "body_preview": "Sample body text about gaslighting and manipulation",
    "keyword_matches": '["gaslighting", "manipulation"]',
    "posted_at": time.time() - 3600,
    "engagement_count": 450,
}
reply = rg.generate(post)
print(f"Reply length: {len(reply)} chars")
print("---")
print(reply[:300])
print("---")
print("ReplyGenerator OK")
