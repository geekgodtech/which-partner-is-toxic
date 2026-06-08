"""
Stats panel — historical engagement metrics displayed as cards.
"""

from PyQt6.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout, QGridLayout,
    QLabel, QFrame
)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QFont

from ui.styles import PANEL_BG, BORDER, ACCENT, TEXT_SECONDARY, PLATFORM_COLORS, PLATFORM_ICONS


class StatCard(QWidget):
    """A single metric card: big number + label."""

    def __init__(self, label: str, value: str = "0", color: str = ACCENT, parent=None):
        super().__init__(parent)
        self.setStyleSheet(f"""
            background-color: {PANEL_BG};
            border: 1px solid {BORDER};
            border-radius: 10px;
        """)
        layout = QVBoxLayout(self)
        layout.setContentsMargins(14, 12, 14, 12)
        layout.setSpacing(4)

        self._lbl_val = QLabel(value)
        self._lbl_val.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self._lbl_val.setFont(QFont("Segoe UI", 28, QFont.Weight.Bold))
        self._lbl_val.setStyleSheet(f"color: {color}; border: none;")
        layout.addWidget(self._lbl_val)

        lbl = QLabel(label)
        lbl.setAlignment(Qt.AlignmentFlag.AlignCenter)
        lbl.setStyleSheet(f"color: {TEXT_SECONDARY}; font-size: 11px; border: none;")
        layout.addWidget(lbl)

    def set_value(self, value: str):
        self._lbl_val.setText(value)


class StatsPanel(QWidget):
    """Full stats panel showing totals and per-platform breakdowns."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self._setup_ui()

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(16, 16, 16, 16)
        layout.setSpacing(16)

        # ── Section header ────────────────────────────────────────────────────
        lbl_title = QLabel("ENGAGEMENT STATS")
        lbl_title.setObjectName("label_section")
        layout.addWidget(lbl_title)

        # ── Today / Week / All-time cards ─────────────────────────────────────
        lbl_overall = QLabel("Overall Activity")
        lbl_overall.setObjectName("label_dim")
        layout.addWidget(lbl_overall)

        overall_grid = QGridLayout()
        overall_grid.setSpacing(10)

        self._card_today     = StatCard("Contacted Today",    "0", "#3ddc84")
        self._card_week      = StatCard("This Week",          "0", "#6060ff")
        self._card_alltime   = StatCard("All Time",           "0", "#a060ff")
        self._card_queue     = StatCard("In Queue",           "0", "#ffcc00")
        self._card_activity  = StatCard("New Activity",       "0", "#ff8800")
        self._card_skipped   = StatCard("Skipped Today",      "0", "#555577")

        overall_grid.addWidget(self._card_today,    0, 0)
        overall_grid.addWidget(self._card_week,     0, 1)
        overall_grid.addWidget(self._card_alltime,  0, 2)
        overall_grid.addWidget(self._card_queue,    1, 0)
        overall_grid.addWidget(self._card_activity, 1, 1)
        overall_grid.addWidget(self._card_skipped,  1, 2)

        layout.addLayout(overall_grid)

        # ── Divider ───────────────────────────────────────────────────────────
        div = QFrame()
        div.setObjectName("divider")
        div.setFrameShape(QFrame.Shape.HLine)
        layout.addWidget(div)

        # ── Per-platform breakdown ────────────────────────────────────────────
        lbl_platforms = QLabel("Per Platform")
        lbl_platforms.setObjectName("label_dim")
        layout.addWidget(lbl_platforms)

        platform_grid = QGridLayout()
        platform_grid.setSpacing(10)

        self._platform_cards = {}
        platforms = ["reddit", "youtube", "tiktok", "x", "facebook"]
        for i, platform in enumerate(platforms):
            icon  = PLATFORM_ICONS.get(platform, "●")
            color = PLATFORM_COLORS.get(platform, "#ffffff")
            card  = StatCard(f"{icon} {platform.upper()}", "0", color)
            self._platform_cards[platform] = card
            row = i // 3
            col = i % 3
            platform_grid.addWidget(card, row, col)

        layout.addLayout(platform_grid)

        # ── Divider ───────────────────────────────────────────────────────────
        div2 = QFrame()
        div2.setObjectName("divider")
        div2.setFrameShape(QFrame.Shape.HLine)
        layout.addWidget(div2)

        # ── Crawler status ────────────────────────────────────────────────────
        lbl_crawlers = QLabel("Crawler Status")
        lbl_crawlers.setObjectName("label_dim")
        layout.addWidget(lbl_crawlers)

        self._crawler_rows = {}
        for platform in platforms:
            row_widget = QWidget()
            row_layout = QHBoxLayout(row_widget)
            row_layout.setContentsMargins(0, 0, 0, 0)

            icon  = PLATFORM_ICONS.get(platform, "●")
            color = PLATFORM_COLORS.get(platform, "#ffffff")

            lbl_name = QLabel(f"{icon}  {platform.upper()}")
            lbl_name.setStyleSheet(f"color: {color}; font-weight: 700; font-size: 12px;")
            lbl_name.setFixedWidth(120)
            row_layout.addWidget(lbl_name)

            lbl_status = QLabel("⚪ Not configured")
            lbl_status.setStyleSheet(f"color: {TEXT_SECONDARY}; font-size: 11px;")
            row_layout.addWidget(lbl_status)
            row_layout.addStretch()

            lbl_last = QLabel("Never")
            lbl_last.setStyleSheet(f"color: {TEXT_SECONDARY}; font-size: 11px;")
            row_layout.addWidget(lbl_last)

            self._crawler_rows[platform] = (lbl_status, lbl_last)
            layout.addWidget(row_widget)

        layout.addStretch()

    # ── Public API ────────────────────────────────────────────────────────────

    def update_stats(self, today: dict, week: dict, alltime: dict,
                     queue_count: int, activity_count: int):
        self._card_today.set_value(str(today.get("contacted", 0)))
        self._card_week.set_value(str(week.get("contacted", 0)))
        self._card_alltime.set_value(str(alltime.get("contacted", 0)))
        self._card_queue.set_value(str(queue_count))
        self._card_activity.set_value(str(activity_count))
        self._card_skipped.set_value(str(today.get("skipped", 0)))

    def update_platform_count(self, platform: str, count: int):
        if platform in self._platform_cards:
            self._platform_cards[platform].set_value(str(count))

    def set_crawler_status(self, platform: str, running: bool, last_found: str = ""):
        if platform in self._crawler_rows:
            lbl_status, lbl_last = self._crawler_rows[platform]
            if running:
                lbl_status.setText("🟢 Running")
                lbl_status.setStyleSheet("color: #3ddc84; font-size: 11px;")
            else:
                lbl_status.setText("🔴 Stopped")
                lbl_status.setStyleSheet("color: #ff4444; font-size: 11px;")
            if last_found:
                lbl_last.setText(f"Last: {last_found}")

    def set_crawler_no_creds(self, platform: str):
        if platform in self._crawler_rows:
            lbl_status, _ = self._crawler_rows[platform]
            lbl_status.setText("⚪ No credentials")
            lbl_status.setStyleSheet(f"color: {TEXT_SECONDARY}; font-size: 11px;")
