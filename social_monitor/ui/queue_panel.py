"""
Left-panel queue list widget.
Shows prioritized posts as compact cards.
"""

import json
import datetime
from PyQt6.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout, QLabel,
    QListWidget, QListWidgetItem, QAbstractItemView,
    QComboBox, QLineEdit, QPushButton
)
from PyQt6.QtCore import Qt, pyqtSignal, QSize
from PyQt6.QtGui import QFont, QColor

from ui.styles import PLATFORM_COLORS, PLATFORM_ICONS, STATUS_COLORS, DARK_BG, PANEL_BG, BORDER, ACCENT


class PostCard(QWidget):
    """Compact card displayed in the queue list for one post."""

    def __init__(self, post: dict, parent=None):
        super().__init__(parent)
        self.post = post
        self._setup_ui()

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(8, 6, 8, 6)
        layout.setSpacing(2)

        platform = self.post.get("platform", "")
        icon     = PLATFORM_ICONS.get(platform, "●")
        color    = PLATFORM_COLORS.get(platform, "#ffffff")
        score    = self.post.get("score", 0)
        status   = self.post.get("status", "new")
        channel  = self.post.get("subreddit_or_channel", "")
        title    = self.post.get("title", "")[:80]
        engagement = self.post.get("engagement_count", 0)

        # Age
        posted_ts = self.post.get("posted_at", 0)
        if posted_ts:
            age = datetime.datetime.now() - datetime.datetime.fromtimestamp(posted_ts)
            hours = int(age.total_seconds() / 3600)
            age_str = f"{hours}h" if hours > 0 else "now"
        else:
            age_str = "?"

        # Score color
        if score >= 80:   score_color = "#ff4444"
        elif score >= 60: score_color = "#ffaa00"
        elif score >= 40: score_color = "#ffff00"
        else:             score_color = "#6060ff"

        status_color = STATUS_COLORS.get(status, "#ffffff")

        # Top row: icon + channel + score
        top = QHBoxLayout()
        top.setSpacing(4)

        lbl_platform = QLabel(f"{icon} {channel}")
        lbl_platform.setStyleSheet(f"color: {color}; font-size: 11px; font-weight: 700;")
        top.addWidget(lbl_platform)
        top.addStretch()

        # Status dot
        if status == "has_activity":
            lbl_activity = QLabel("⚡")
            lbl_activity.setToolTip("New activity since you contacted this post")
            top.addWidget(lbl_activity)

        lbl_score = QLabel(f"{score:.0f}")
        lbl_score.setStyleSheet(f"color: {score_color}; font-weight: 800; font-size: 14px;")
        lbl_score.setToolTip(f"Priority score: {score:.1f}/100")
        top.addWidget(lbl_score)

        layout.addLayout(top)

        # Title
        lbl_title = QLabel(title)
        lbl_title.setStyleSheet("color: #d0d0f0; font-size: 12px;")
        lbl_title.setWordWrap(True)
        layout.addWidget(lbl_title)

        # Bottom row: age + engagement
        bot = QHBoxLayout()
        bot.setSpacing(6)

        lbl_age = QLabel(f"🕐 {age_str}")
        lbl_age.setStyleSheet("color: #666688; font-size: 10px;")
        bot.addWidget(lbl_age)

        lbl_eng = QLabel(f"💬 {engagement:,}")
        lbl_eng.setStyleSheet("color: #666688; font-size: 10px;")
        bot.addWidget(lbl_eng)

        bot.addStretch()

        lbl_status = QLabel(f"● {status}")
        lbl_status.setStyleSheet(f"color: {status_color}; font-size: 10px;")
        bot.addWidget(lbl_status)

        layout.addLayout(bot)


class QueuePanel(QWidget):
    """Left panel showing the prioritized post queue."""

    sig_post_selected = pyqtSignal(dict)   # emits full post dict

    def __init__(self, parent=None):
        super().__init__(parent)
        self._posts = []
        self._setup_ui()

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(0, 0, 0, 0)
        layout.setSpacing(8)

        # ── Header ────────────────────────────────────────────────────────────
        header = QHBoxLayout()
        lbl_queue = QLabel("QUEUE")
        lbl_queue.setObjectName("label_section")
        header.addWidget(lbl_queue)
        header.addStretch()
        self._lbl_count = QLabel("0 posts")
        self._lbl_count.setObjectName("label_dim")
        header.addWidget(self._lbl_count)
        layout.addLayout(header)

        # ── Filter bar ────────────────────────────────────────────────────────
        filter_row = QHBoxLayout()
        filter_row.setSpacing(6)

        self._filter_platform = QComboBox()
        self._filter_platform.addItems(["All Platforms", "reddit", "youtube", "tiktok", "x", "facebook"])
        self._filter_platform.currentTextChanged.connect(self._apply_filter)
        filter_row.addWidget(self._filter_platform)

        self._filter_status = QComboBox()
        self._filter_status.addItems(["Active", "All", "contacted", "has_activity", "skipped"])
        self._filter_status.currentTextChanged.connect(self._apply_filter)
        filter_row.addWidget(self._filter_status)

        layout.addLayout(filter_row)

        # ── Search ────────────────────────────────────────────────────────────
        self._search = QLineEdit()
        self._search.setPlaceholderText("🔍  Filter by keyword...")
        self._search.textChanged.connect(self._apply_filter)
        layout.addWidget(self._search)

        # ── List ──────────────────────────────────────────────────────────────
        self._list = QListWidget()
        self._list.setSelectionMode(QAbstractItemView.SelectionMode.SingleSelection)
        self._list.setHorizontalScrollBarPolicy(Qt.ScrollBarPolicy.ScrollBarAlwaysOff)
        self._list.setSpacing(2)
        self._list.currentItemChanged.connect(self._on_selection_changed)
        layout.addWidget(self._list)

    # ── Public API ────────────────────────────────────────────────────────────

    def load_posts(self, posts: list):
        """Replace queue with a new sorted list of post dicts."""
        self._posts = posts
        self._apply_filter()

    def add_post(self, post: dict):
        """Add a single post (new match found by crawler)."""
        # Insert at position based on score
        inserted = False
        for i, p in enumerate(self._posts):
            if post.get("score", 0) > p.get("score", 0):
                self._posts.insert(i, post)
                inserted = True
                break
        if not inserted:
            self._posts.append(post)
        self._apply_filter()

    def remove_post(self, post_id: str):
        """Remove a post by ID (after contacted/skipped)."""
        self._posts = [p for p in self._posts if p.get("id") != post_id]
        self._apply_filter()

    def update_post(self, post: dict):
        """Update an existing post in place."""
        for i, p in enumerate(self._posts):
            if p.get("id") == post.get("id"):
                self._posts[i] = post
                break
        self._apply_filter()

    def get_count(self) -> int:
        return self._list.count()

    # ── Internal ─────────────────────────────────────────────────────────────

    def _apply_filter(self):
        platform_filter = self._filter_platform.currentText()
        status_filter   = self._filter_status.currentText()
        search_text     = self._search.text().lower().strip()

        filtered = []
        for p in self._posts:
            # Platform filter
            if platform_filter not in ("All Platforms", p.get("platform", "")):
                continue
            # Status filter
            status = p.get("status", "new")
            if status_filter == "Active":
                if status not in ("new", "opened", "has_activity"):
                    continue
            elif status_filter not in ("All",) and status != status_filter:
                continue
            # Search filter
            if search_text:
                haystack = (
                    p.get("title", "") + " " +
                    p.get("body_preview", "") + " " +
                    p.get("subreddit_or_channel", "")
                ).lower()
                if search_text not in haystack:
                    continue
            filtered.append(p)

        self._rebuild_list(filtered)
        self._lbl_count.setText(f"{len(filtered)} posts")

    def _rebuild_list(self, posts: list):
        self._list.clear()
        for post in posts:
            card = PostCard(post)
            item = QListWidgetItem()
            item.setData(Qt.ItemDataRole.UserRole, post)
            item.setSizeHint(QSize(0, 90))
            self._list.addItem(item)
            self._list.setItemWidget(item, card)

    def _on_selection_changed(self, current, previous):
        if current:
            post = current.data(Qt.ItemDataRole.UserRole)
            if post:
                self.sig_post_selected.emit(post)
