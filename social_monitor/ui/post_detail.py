"""
Right-panel post detail widget.
Shows post info, draft reply, and action buttons.
"""

import webbrowser
from PyQt6.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout, QLabel,
    QPushButton, QTextEdit, QFrame, QScrollArea
)
from PyQt6.QtCore import Qt, pyqtSignal
from PyQt6.QtGui import QFont, QClipboard, QGuiApplication

from ui.styles import PLATFORM_COLORS, PLATFORM_ICONS, STATUS_COLORS, TEXT_SECONDARY


def _divider():
    f = QFrame()
    f.setObjectName("divider")
    f.setFrameShape(QFrame.Shape.HLine)
    return f


class PostDetailPanel(QWidget):
    """Displays full detail for a selected post with action buttons."""

    sig_contacted  = pyqtSignal(str)   # post_id
    sig_skipped    = pyqtSignal(str)
    sig_opened     = pyqtSignal(str)
    sig_regenerate = pyqtSignal(str)

    def __init__(self, parent=None):
        super().__init__(parent)
        self._current_post = None
        self._setup_ui()

    # ── UI setup ──────────────────────────────────────────────────────────────

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(16, 16, 16, 16)
        layout.setSpacing(12)

        # ── Header ────────────────────────────────────────────────────────────
        self._lbl_platform = QLabel("")
        self._lbl_platform.setFont(QFont("Segoe UI", 11, QFont.Weight.Bold))

        self._lbl_score = QLabel("")
        self._lbl_score.setAlignment(Qt.AlignmentFlag.AlignRight | Qt.AlignmentFlag.AlignVCenter)
        self._lbl_score.setFont(QFont("Segoe UI", 22, QFont.Weight.Bold))

        header_row = QHBoxLayout()
        header_row.addWidget(self._lbl_platform)
        header_row.addStretch()
        header_row.addWidget(self._lbl_score)
        layout.addLayout(header_row)

        # ── Meta row ──────────────────────────────────────────────────────────
        self._lbl_meta = QLabel("")
        self._lbl_meta.setObjectName("label_dim")
        self._lbl_meta.setWordWrap(True)
        layout.addWidget(self._lbl_meta)

        layout.addWidget(_divider())

        # ── Title ─────────────────────────────────────────────────────────────
        self._lbl_title = QLabel("")
        self._lbl_title.setFont(QFont("Segoe UI", 13, QFont.Weight.Bold))
        self._lbl_title.setWordWrap(True)
        layout.addWidget(self._lbl_title)

        # ── Keywords ──────────────────────────────────────────────────────────
        self._lbl_keywords = QLabel("")
        self._lbl_keywords.setObjectName("label_dim")
        self._lbl_keywords.setWordWrap(True)
        layout.addWidget(self._lbl_keywords)

        # ── Body preview ──────────────────────────────────────────────────────
        self._txt_body = QTextEdit()
        self._txt_body.setReadOnly(True)
        self._txt_body.setMaximumHeight(120)
        self._txt_body.setPlaceholderText("Post content preview...")
        layout.addWidget(self._txt_body)

        layout.addWidget(_divider())

        # ── Draft reply label ─────────────────────────────────────────────────
        reply_header = QHBoxLayout()
        lbl_reply = QLabel("DRAFT REPLY")
        lbl_reply.setObjectName("label_section")
        reply_header.addWidget(lbl_reply)
        reply_header.addStretch()

        self._btn_regenerate = QPushButton("↻ New Draft")
        self._btn_regenerate.setFixedWidth(100)
        self._btn_regenerate.clicked.connect(self._on_regenerate)
        reply_header.addWidget(self._btn_regenerate)
        layout.addLayout(reply_header)

        # ── Draft reply text ──────────────────────────────────────────────────
        self._txt_reply = QTextEdit()
        self._txt_reply.setMinimumHeight(140)
        self._txt_reply.setPlaceholderText("Select a post to see the draft reply...")
        layout.addWidget(self._txt_reply)

        # ── Action buttons ────────────────────────────────────────────────────
        btn_row1 = QHBoxLayout()
        btn_row1.setSpacing(8)

        self._btn_copy = QPushButton("📋  Copy Reply")
        self._btn_copy.setObjectName("btn_copy")
        self._btn_copy.setToolTip("Copy the draft reply to clipboard")
        self._btn_copy.clicked.connect(self._on_copy)

        self._btn_open = QPushButton("🔗  Open Post")
        self._btn_open.setObjectName("btn_open")
        self._btn_open.setToolTip("Open post in browser")
        self._btn_open.clicked.connect(self._on_open)

        btn_row1.addWidget(self._btn_copy)
        btn_row1.addWidget(self._btn_open)
        layout.addLayout(btn_row1)

        btn_row2 = QHBoxLayout()
        btn_row2.setSpacing(8)

        self._btn_contacted = QPushButton("✓  Mark Contacted")
        self._btn_contacted.setObjectName("btn_contacted")
        self._btn_contacted.setToolTip("Mark as replied — removes from queue")
        self._btn_contacted.clicked.connect(self._on_contacted)

        self._btn_skip = QPushButton("✗  Skip")
        self._btn_skip.setObjectName("btn_skip")
        self._btn_skip.setToolTip("Skip this post — won't show again")
        self._btn_skip.clicked.connect(self._on_skip)

        btn_row2.addWidget(self._btn_contacted)
        btn_row2.addWidget(self._btn_skip)
        layout.addLayout(btn_row2)

        layout.addStretch()
        self._set_buttons_enabled(False)

    # ── Public API ────────────────────────────────────────────────────────────

    def load_post(self, post: dict):
        """Populate the panel with data from a post dict."""
        self._current_post = post
        platform = post.get("platform", "")
        icon     = PLATFORM_ICONS.get(platform, "●")
        color    = PLATFORM_COLORS.get(platform, "#ffffff")
        score    = post.get("score", 0)
        status   = post.get("status", "new")

        # Platform label
        channel = post.get("subreddit_or_channel", "")
        self._lbl_platform.setText(f"{icon}  {platform.upper()}  •  {channel}")
        self._lbl_platform.setStyleSheet(f"color: {color};")

        # Score
        score_color = self._score_color(score)
        self._lbl_score.setText(f"{score:.0f}")
        self._lbl_score.setStyleSheet(f"color: {score_color};")

        # Meta
        import datetime
        posted_ts = post.get("posted_at", 0)
        if posted_ts:
            dt = datetime.datetime.fromtimestamp(posted_ts)
            age = datetime.datetime.now() - dt
            hours = int(age.total_seconds() / 3600)
            age_str = f"{hours}h ago" if hours > 0 else "just now"
        else:
            age_str = "unknown"

        engagement = post.get("engagement_count", 0)
        status_color = STATUS_COLORS.get(status, "#ffffff")
        self._lbl_meta.setText(
            f"Posted {age_str}  •  {engagement:,} engagements  •  "
            f"<span style='color:{status_color};'>● {status.upper()}</span>  •  "
            f"u/{post.get('author', '?')}"
        )
        self._lbl_meta.setTextFormat(Qt.TextFormat.RichText)

        # Title
        self._lbl_title.setText(post.get("title", ""))

        # Keywords
        import json
        kws = post.get("keyword_matches", "[]")
        if isinstance(kws, str):
            try:
                kws = json.loads(kws)
            except Exception:
                kws = []
        if kws:
            kw_text = "  •  ".join(f"🔑 {k}" for k in kws[:8])
            self._lbl_keywords.setText(kw_text)
        else:
            self._lbl_keywords.setText("")

        # Body preview
        self._txt_body.setPlainText(post.get("body_preview", ""))

        # Draft reply
        self._txt_reply.setPlainText(post.get("draft_reply", ""))

        self._set_buttons_enabled(True)

        # Emit opened signal
        self.sig_opened.emit(post.get("id", ""))

    def clear(self):
        """Clear the panel (no post selected)."""
        self._current_post = None
        self._lbl_platform.setText("")
        self._lbl_score.setText("")
        self._lbl_meta.setText("")
        self._lbl_title.setText("")
        self._lbl_keywords.setText("")
        self._txt_body.clear()
        self._txt_reply.setPlaceholderText("Select a post from the queue →")
        self._set_buttons_enabled(False)

    # ── Slots ─────────────────────────────────────────────────────────────────

    def _on_copy(self):
        text = self._txt_reply.toPlainText()
        if text:
            QGuiApplication.clipboard().setText(text)
            self._btn_copy.setText("✓  Copied!")
            from PyQt6.QtCore import QTimer
            QTimer.singleShot(2000, lambda: self._btn_copy.setText("📋  Copy Reply"))

    def _on_open(self):
        if self._current_post:
            url = self._current_post.get("url", "")
            if url:
                webbrowser.open(url)

    def _on_contacted(self):
        if self._current_post:
            self.sig_contacted.emit(self._current_post.get("id", ""))

    def _on_skip(self):
        if self._current_post:
            self.sig_skipped.emit(self._current_post.get("id", ""))

    def _on_regenerate(self):
        if self._current_post:
            self.sig_regenerate.emit(self._current_post.get("id", ""))

    # ── Helpers ───────────────────────────────────────────────────────────────

    def _set_buttons_enabled(self, enabled: bool):
        for btn in (self._btn_copy, self._btn_open, self._btn_contacted,
                    self._btn_skip, self._btn_regenerate):
            btn.setEnabled(enabled)

    def _score_color(self, score: float) -> str:
        if score >= 80: return "#ff4444"
        if score >= 60: return "#ffaa00"
        if score >= 40: return "#ffff00"
        return "#6060ff"
