"""
Main application window — assembles all panels, wires signals, drives crawlers.
"""

import sys
import time
import logging
import datetime
from PyQt6.QtWidgets import (
    QMainWindow, QWidget, QHBoxLayout, QVBoxLayout,
    QSplitter, QTabWidget, QLabel, QStatusBar,
    QPushButton, QFrame, QToolBar
)
from PyQt6.QtCore import Qt, QTimer, QThread, pyqtSignal, QObject
from PyQt6.QtGui import QFont, QIcon, QAction

from ui.queue_panel   import QueuePanel
from ui.post_detail   import PostDetailPanel
from ui.settings_panel import SettingsPanel
from ui.stats_panel   import StatsPanel
from ui.styles        import APP_STYLESHEET, DARK_BG, PANEL_BG, BORDER, ACCENT, TEXT_SECONDARY

logger = logging.getLogger(__name__)


# ── Background worker that feeds posts from crawlers into the UI thread ───────

class CrawlerWorker(QObject):
    """Runs in a background QThread. Emits new posts as they are found."""
    post_found    = pyqtSignal(dict)
    status_update = pyqtSignal(str, bool, str)   # platform, running, last_found_str

    def __init__(self, tracker, reply_gen, priority_engine, weights, platform_ranks):
        super().__init__()
        self._tracker        = tracker
        self._reply_gen      = reply_gen
        self._priority_engine = priority_engine
        self._weights        = weights
        self._platform_ranks = platform_ranks
        self._crawlers       = {}
        self._running        = False

    def start_crawlers(self, enabled_platforms: list):
        """Instantiate and start each enabled crawler."""
        self._running = True

        # Reddit (streaming — runs on its own thread internally)
        if "reddit" in enabled_platforms:
            try:
                from crawlers.reddit_crawler import RedditCrawler
                c = RedditCrawler()
                c.start(callback=self._on_post_found)
                self._crawlers["reddit"] = c
                self.status_update.emit("reddit", True, "")
                logger.info("Reddit crawler started")
            except Exception as e:
                logger.warning(f"Reddit crawler failed to start: {e}")
                self.status_update.emit("reddit", False, "")

        # YouTube (polling)
        if "youtube" in enabled_platforms:
            try:
                from crawlers.youtube_crawler import YoutubeCrawler
                c = YoutubeCrawler(callback=self._on_post_found)
                c.start()
                self._crawlers["youtube"] = c
                self.status_update.emit("youtube", True, "")
            except Exception as e:
                logger.warning(f"YouTube crawler failed to start: {e}")
                self.status_update.emit("youtube", False, "")

        # X
        if "x" in enabled_platforms:
            try:
                from crawlers.x_crawler import XCrawler
                c = XCrawler(callback=self._on_post_found)
                c.start()
                self._crawlers["x"] = c
                self.status_update.emit("x", True, "")
            except Exception as e:
                logger.warning(f"X crawler failed to start: {e}")
                self.status_update.emit("x", False, "")

        # TikTok
        if "tiktok" in enabled_platforms:
            try:
                from crawlers.tiktok_crawler import TikTokCrawler
                c = TikTokCrawler(callback=self._on_post_found)
                c.start()
                self._crawlers["tiktok"] = c
                self.status_update.emit("tiktok", True, "")
            except Exception as e:
                logger.warning(f"TikTok crawler failed to start: {e}")
                self.status_update.emit("tiktok", False, "")

        # Facebook
        if "facebook" in enabled_platforms:
            try:
                from crawlers.facebook_crawler import FacebookCrawler
                c = FacebookCrawler(callback=self._on_post_found)
                c.start()
                self._crawlers["facebook"] = c
                self.status_update.emit("facebook", True, "")
            except Exception as e:
                logger.warning(f"Facebook crawler failed to start: {e}")
                self.status_update.emit("facebook", False, "")

    def stop_all(self):
        self._running = False
        for name, crawler in self._crawlers.items():
            try:
                crawler.stop()
            except Exception:
                pass
        self._crawlers.clear()

    def _on_post_found(self, post_dict: dict):
        """Called by each crawler when a qualifying post is found."""
        if not self._running:
            return
        post_id = post_dict.get("id", "")
        if not post_id or self._tracker.has_post(post_id):
            return

        # Score the post
        score = self._priority_engine.calculate_score(
            post_dict, self._weights, self._platform_ranks
        )
        post_dict["score"] = round(score, 1)

        # Generate draft reply
        post_dict["draft_reply"] = self._reply_gen.generate(post_dict)

        # Save to DB
        self._tracker.upsert_post(post_dict)

        # Emit to UI thread
        self.post_found.emit(post_dict)

        platform = post_dict.get("platform", "")
        now_str  = datetime.datetime.now().strftime("%H:%M")
        self.status_update.emit(platform, True, now_str)


# ── Main window ───────────────────────────────────────────────────────────────

class MainWindow(QMainWindow):

    def __init__(self):
        super().__init__()
        self._setup_services()
        self._setup_ui()
        self._setup_toolbar()
        self._setup_statusbar()
        self._load_queue()
        self._start_crawlers()
        self._refresh_timer = QTimer(self)
        self._refresh_timer.timeout.connect(self._refresh_stats)
        self._refresh_timer.start(30_000)   # refresh stats every 30s

    # ── Service init ──────────────────────────────────────────────────────────

    def _setup_services(self):
        from dotenv import load_dotenv
        load_dotenv()

        from contact_tracker  import ContactTracker
        from priority_engine  import PriorityEngine
        from reply_generator  import ReplyGenerator

        self._tracker  = ContactTracker()
        self._priority = PriorityEngine()
        self._reply    = ReplyGenerator()

    # ── UI setup ──────────────────────────────────────────────────────────────

    def _setup_ui(self):
        self.setWindowTitle("AIRTA Social Monitor")
        self.setMinimumSize(1200, 700)
        self.resize(1400, 820)
        self.setStyleSheet(APP_STYLESHEET)

        central = QWidget()
        self.setCentralWidget(central)
        root = QHBoxLayout(central)
        root.setContentsMargins(0, 0, 0, 0)
        root.setSpacing(0)

        # ── Main splitter: queue | detail ─────────────────────────────────────
        main_splitter = QSplitter(Qt.Orientation.Horizontal)
        main_splitter.setHandleWidth(2)

        # Left: queue panel (fixed width)
        self._queue_panel = QueuePanel()
        self._queue_panel.setMinimumWidth(280)
        self._queue_panel.setMaximumWidth(420)
        self._queue_panel.sig_post_selected.connect(self._on_post_selected)
        main_splitter.addWidget(self._queue_panel)

        # Right: tabs (detail | settings | stats)
        self._tabs = QTabWidget()
        self._tabs.setTabPosition(QTabWidget.TabPosition.North)

        self._detail_panel = PostDetailPanel()
        self._detail_panel.sig_contacted.connect(self._on_contacted)
        self._detail_panel.sig_skipped.connect(self._on_skipped)
        self._detail_panel.sig_opened.connect(self._on_opened)
        self._detail_panel.sig_regenerate.connect(self._on_regenerate)
        self._tabs.addTab(self._detail_panel, "📋  Post Detail")

        self._settings_panel = SettingsPanel()
        self._settings_panel.sig_weights_changed.connect(self._on_weights_changed)
        self._tabs.addTab(self._settings_panel, "⚙️  Settings")

        self._stats_panel = StatsPanel()
        self._tabs.addTab(self._stats_panel, "📊  Stats")

        main_splitter.addWidget(self._tabs)
        main_splitter.setSizes([320, 880])

        root.addWidget(main_splitter)

    def _setup_toolbar(self):
        toolbar = QToolBar("Main")
        toolbar.setMovable(False)
        toolbar.setStyleSheet(f"""
            QToolBar {{
                background: {PANEL_BG};
                border-bottom: 1px solid {BORDER};
                padding: 4px 8px;
                spacing: 8px;
            }}
        """)
        self.addToolBar(toolbar)

        # App title
        lbl_title = QLabel("  AIRTA Social Monitor  ")
        lbl_title.setFont(QFont("Segoe UI", 13, QFont.Weight.Bold))
        lbl_title.setStyleSheet(f"color: {ACCENT};")
        toolbar.addWidget(lbl_title)

        toolbar.addSeparator()

        # Crawler status indicators (updated dynamically)
        self._toolbar_status = {}
        for platform in ("reddit", "youtube", "tiktok", "x", "facebook"):
            from ui.styles import PLATFORM_ICONS
            lbl = QLabel(f"  {PLATFORM_ICONS[platform]} ⚪  ")
            lbl.setStyleSheet(f"color: {TEXT_SECONDARY}; font-size: 12px;")
            lbl.setToolTip(f"{platform} crawler status")
            toolbar.addWidget(lbl)
            self._toolbar_status[platform] = lbl

        toolbar.addSeparator()

        # Spacer
        spacer = QWidget()
        spacer.setSizePolicy(
            spacer.sizePolicy().horizontalPolicy(),
            spacer.sizePolicy().verticalPolicy()
        )
        from PyQt6.QtWidgets import QSizePolicy
        spacer.setSizePolicy(QSizePolicy.Policy.Expanding, QSizePolicy.Policy.Preferred)
        toolbar.addWidget(spacer)

        # Refresh button
        btn_refresh = QPushButton("⟳  Refresh Queue")
        btn_refresh.setFixedWidth(140)
        btn_refresh.clicked.connect(self._load_queue)
        toolbar.addWidget(btn_refresh)

    def _setup_statusbar(self):
        self._statusbar = QStatusBar()
        self.setStatusBar(self._statusbar)
        self._statusbar.showMessage("Ready — crawlers starting...")

    # ── Load queue from DB ────────────────────────────────────────────────────

    def _load_queue(self):
        posts = self._tracker.get_queue(limit=500)
        self._queue_panel.load_posts(posts)
        self._statusbar.showMessage(
            f"Queue loaded: {len(posts)} posts  •  "
            f"Last refresh: {datetime.datetime.now().strftime('%H:%M:%S')}"
        )
        self._refresh_stats()

    # ── Start crawlers ────────────────────────────────────────────────────────

    def _start_crawlers(self):
        weights        = self._settings_panel.get_weights()
        platform_ranks = self._settings_panel.get_platform_ranks()
        enabled        = self._settings_panel.get_enabled_platforms()

        self._worker_thread = QThread(self)
        self._worker = CrawlerWorker(
            self._tracker, self._reply, self._priority,
            weights, platform_ranks
        )
        self._worker.moveToThread(self._worker_thread)
        self._worker.post_found.connect(self._on_new_post)
        self._worker.status_update.connect(self._on_crawler_status)
        self._worker_thread.started.connect(
            lambda: self._worker.start_crawlers(enabled)
        )
        self._worker_thread.start()

    def _stop_crawlers(self):
        if hasattr(self, "_worker"):
            self._worker.stop_all()
        if hasattr(self, "_worker_thread"):
            self._worker_thread.quit()
            self._worker_thread.wait(3000)

    # ── Slots ─────────────────────────────────────────────────────────────────

    def _on_post_selected(self, post: dict):
        self._detail_panel.load_post(post)
        self._tabs.setCurrentIndex(0)

    def _on_new_post(self, post: dict):
        """Called when a crawler finds a new post."""
        self._queue_panel.add_post(post)
        platform = post.get("platform", "")
        self._statusbar.showMessage(
            f"New match: [{platform}] {post.get('title', '')[:60]}  •  "
            f"Score: {post.get('score', 0):.0f}"
        )

    def _on_contacted(self, post_id: str):
        self._tracker.mark_contacted(post_id)
        self._queue_panel.remove_post(post_id)
        self._detail_panel.clear()
        self._statusbar.showMessage(f"✓ Marked as contacted: {post_id}")
        self._refresh_stats()

    def _on_skipped(self, post_id: str):
        self._tracker.mark_skipped(post_id)
        self._queue_panel.remove_post(post_id)
        self._detail_panel.clear()

    def _on_opened(self, post_id: str):
        self._tracker.mark_opened(post_id)

    def _on_regenerate(self, post_id: str):
        post = self._tracker.get_post(post_id)
        if post:
            new_reply = self._reply.regenerate(post)
            post["draft_reply"] = new_reply
            self._tracker.upsert_post(post)
            self._detail_panel.load_post(post)

    def _on_weights_changed(self, weights: dict, platform_ranks: dict):
        """Rescore all posts in DB and reload queue."""
        self._priority.rescore_all(self._tracker, weights, platform_ranks)
        self._load_queue()

    def _on_crawler_status(self, platform: str, running: bool, last_found: str):
        """Update toolbar indicator and stats panel."""
        if platform in self._toolbar_status:
            lbl = self._toolbar_status[platform]
            from ui.styles import PLATFORM_ICONS
            icon = PLATFORM_ICONS.get(platform, "●")
            dot  = "🟢" if running else "🔴"
            lbl.setText(f"  {icon} {dot}  ")

        if running:
            self._stats_panel.set_crawler_status(platform, True, last_found)
        else:
            self._stats_panel.set_crawler_no_creds(platform)

    def _refresh_stats(self):
        today   = self._tracker.get_today_stats()
        week    = self._tracker.get_week_stats()
        alltime = self._tracker.get_all_time_stats()
        queue   = self._queue_panel.get_count()

        # Count posts with has_activity
        activity = sum(
            1 for p in self._tracker.get_queue(500)
            if p.get("status") == "has_activity"
        )
        self._stats_panel.update_stats(today, week, alltime, queue, activity)

    # ── Cleanup ───────────────────────────────────────────────────────────────

    def closeEvent(self, event):
        self._stop_crawlers()
        super().closeEvent(event)
