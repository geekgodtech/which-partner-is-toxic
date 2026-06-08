"""
Settings panel — priority weight sliders and platform toggles.
All changes emit sig_weights_changed so the main window can rescore.
"""

from PyQt6.QtWidgets import (
    QWidget, QVBoxLayout, QHBoxLayout, QLabel,
    QSlider, QCheckBox, QGroupBox, QPushButton, QSpinBox
)
from PyQt6.QtCore import Qt, pyqtSignal
from PyQt6.QtGui import QFont

from ui.styles import ACCENT, TEXT_SECONDARY


class WeightSlider(QWidget):
    """A labeled slider for a single priority weight."""
    changed = pyqtSignal(float)  # 0.0–1.0

    def __init__(self, label: str, default: float, tooltip: str = "", parent=None):
        super().__init__(parent)
        layout = QHBoxLayout(self)
        layout.setContentsMargins(0, 0, 0, 0)
        layout.setSpacing(10)

        self._lbl = QLabel(label)
        self._lbl.setFixedWidth(160)
        layout.addWidget(self._lbl)

        self._slider = QSlider(Qt.Orientation.Horizontal)
        self._slider.setRange(0, 100)
        self._slider.setValue(int(default * 100))
        self._slider.setToolTip(tooltip)
        self._slider.valueChanged.connect(self._on_changed)
        layout.addWidget(self._slider)

        self._lbl_val = QLabel(f"{int(default*100)}%")
        self._lbl_val.setFixedWidth(36)
        self._lbl_val.setStyleSheet(f"color: {ACCENT}; font-weight: 700;")
        layout.addWidget(self._lbl_val)

    def value(self) -> float:
        return self._slider.value() / 100.0

    def _on_changed(self, v: int):
        self._lbl_val.setText(f"{v}%")
        self.changed.emit(v / 100.0)


class PlatformRankRow(QWidget):
    """A row for ranking a single platform (checkbox + rank spinbox)."""
    changed = pyqtSignal()

    def __init__(self, platform: str, default_rank: int, default_enabled: bool = True, parent=None):
        super().__init__(parent)
        self.platform = platform
        layout = QHBoxLayout(self)
        layout.setContentsMargins(0, 2, 0, 2)
        layout.setSpacing(10)

        from ui.styles import PLATFORM_ICONS, PLATFORM_COLORS
        icon  = PLATFORM_ICONS.get(platform, "●")
        color = PLATFORM_COLORS.get(platform, "#ffffff")

        self._check = QCheckBox(f"{icon}  {platform.upper()}")
        self._check.setChecked(default_enabled)
        self._check.setStyleSheet(f"color: {color}; font-weight: 700;")
        self._check.stateChanged.connect(lambda _: self.changed.emit())
        layout.addWidget(self._check)

        layout.addStretch()

        lbl_rank = QLabel("Priority:")
        lbl_rank.setStyleSheet(f"color: {TEXT_SECONDARY}; font-size: 11px;")
        layout.addWidget(lbl_rank)

        self._spin = QSpinBox()
        self._spin.setRange(1, 5)
        self._spin.setValue(default_rank)
        self._spin.setFixedWidth(50)
        self._spin.setToolTip("1 = lowest, 5 = highest priority")
        self._spin.valueChanged.connect(lambda _: self.changed.emit())
        layout.addWidget(self._spin)

    def is_enabled(self) -> bool:
        return self._check.isChecked()

    def rank(self) -> int:
        return self._spin.value()


class SettingsPanel(QWidget):
    """Full settings panel with weight sliders and platform config."""

    sig_weights_changed = pyqtSignal(dict, dict)   # weights dict, platform_ranks dict

    def __init__(self, parent=None):
        super().__init__(parent)
        self._setup_ui()

    def _setup_ui(self):
        layout = QVBoxLayout(self)
        layout.setContentsMargins(16, 16, 16, 16)
        layout.setSpacing(16)

        # ── Header ────────────────────────────────────────────────────────────
        lbl_title = QLabel("PRIORITY SETTINGS")
        lbl_title.setObjectName("label_section")
        layout.addWidget(lbl_title)

        lbl_desc = QLabel(
            "Adjust how posts are ranked in the queue. "
            "Weights are applied together to produce a score out of 100."
        )
        lbl_desc.setObjectName("label_dim")
        lbl_desc.setWordWrap(True)
        layout.addWidget(lbl_desc)

        # ── Weight sliders ────────────────────────────────────────────────────
        weights_group = QGroupBox("Score Weights")
        weights_group.setStyleSheet("QGroupBox { color: #a0a0ff; font-weight: 700; border: 1px solid #2a2a5a; border-radius: 8px; margin-top: 8px; padding-top: 12px; }")
        wg_layout = QVBoxLayout(weights_group)
        wg_layout.setSpacing(10)

        self._w_recency   = WeightSlider("Post Recency",        0.40, "Newer posts score higher")
        self._w_engagement= WeightSlider("Engagement Size",     0.25, "More views/comments = higher score")
        self._w_keywords  = WeightSlider("Keyword Strength",    0.20, "More toxicity keywords matched")
        self._w_platform  = WeightSlider("Platform Weight",     0.10, "Based on your platform priority ranking")
        self._w_activity  = WeightSlider("Activity Since Reply",0.05, "Posts with new comments after your reply")

        for w in (self._w_recency, self._w_engagement, self._w_keywords, self._w_platform, self._w_activity):
            w.changed.connect(self._on_changed)
            wg_layout.addWidget(w)

        layout.addWidget(weights_group)

        # ── Platform ranks ────────────────────────────────────────────────────
        platforms_group = QGroupBox("Platform Priority & Toggles")
        platforms_group.setStyleSheet("QGroupBox { color: #a0a0ff; font-weight: 700; border: 1px solid #2a2a5a; border-radius: 8px; margin-top: 8px; padding-top: 12px; }")
        pg_layout = QVBoxLayout(platforms_group)
        pg_layout.setSpacing(4)

        self._platforms = {
            "reddit":   PlatformRankRow("reddit",   5),
            "youtube":  PlatformRankRow("youtube",  4),
            "tiktok":   PlatformRankRow("tiktok",   3),
            "x":        PlatformRankRow("x",        3),
            "facebook": PlatformRankRow("facebook", 2),
        }
        for row in self._platforms.values():
            row.changed.connect(self._on_changed)
            pg_layout.addWidget(row)

        layout.addWidget(platforms_group)

        # ── Crawl settings ────────────────────────────────────────────────────
        crawl_group = QGroupBox("Crawl Settings")
        crawl_group.setStyleSheet("QGroupBox { color: #a0a0ff; font-weight: 700; border: 1px solid #2a2a5a; border-radius: 8px; margin-top: 8px; padding-top: 12px; }")
        cg_layout = QVBoxLayout(crawl_group)

        age_row = QHBoxLayout()
        age_row.addWidget(QLabel("Max post age (hours):"))
        self._spin_max_age = QSpinBox()
        self._spin_max_age.setRange(1, 168)
        self._spin_max_age.setValue(6)
        self._spin_max_age.setFixedWidth(70)
        age_row.addWidget(self._spin_max_age)
        age_row.addStretch()
        cg_layout.addLayout(age_row)

        score_row = QHBoxLayout()
        score_row.addWidget(QLabel("Min score to show:"))
        self._spin_min_score = QSpinBox()
        self._spin_min_score.setRange(0, 90)
        self._spin_min_score.setValue(3)
        self._spin_min_score.setFixedWidth(70)
        score_row.addWidget(self._spin_min_score)
        score_row.addStretch()
        cg_layout.addLayout(score_row)

        layout.addWidget(crawl_group)

        # ── Apply button ──────────────────────────────────────────────────────
        self._btn_apply = QPushButton("⟳  Apply & Rescore Queue")
        self._btn_apply.clicked.connect(self._on_changed)
        layout.addWidget(self._btn_apply)

        layout.addStretch()

    # ── Public API ────────────────────────────────────────────────────────────

    def get_weights(self) -> dict:
        raw = {
            "recency":    self._w_recency.value(),
            "engagement": self._w_engagement.value(),
            "keyword_strength": self._w_keywords.value(),
            "platform":   self._w_platform.value(),
            "activity":   self._w_activity.value(),
        }
        # Normalize so weights sum to 1.0
        total = sum(raw.values()) or 1.0
        return {k: v / total for k, v in raw.items()}

    def get_platform_ranks(self) -> dict:
        return {
            name: row.rank()
            for name, row in self._platforms.items()
            if row.is_enabled()
        }

    def get_enabled_platforms(self) -> list:
        return [name for name, row in self._platforms.items() if row.is_enabled()]

    def get_max_age_hours(self) -> int:
        return self._spin_max_age.value()

    def get_min_score(self) -> int:
        return self._spin_min_score.value()

    # ── Slots ─────────────────────────────────────────────────────────────────

    def _on_changed(self, *args):
        self.sig_weights_changed.emit(self.get_weights(), self.get_platform_ranks())
