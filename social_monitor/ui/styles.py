"""
Shared stylesheet and color constants for the AIRTA Social Monitor GUI.
"""

DARK_BG       = "#0d0d1a"
PANEL_BG      = "#12122a"
BORDER        = "#2a2a5a"
ACCENT        = "#6060ff"
ACCENT_HOVER  = "#8080ff"
TEXT_PRIMARY  = "#e8e8f0"
TEXT_SECONDARY= "#8888aa"
TEXT_DIM      = "#4a4a6a"

STATUS_COLORS = {
    "new":          "#6060ff",
    "opened":       "#a0a0ff",
    "contacted":    "#3ddc84",
    "has_activity": "#ffcc00",
    "expired":      "#4a4a6a",
    "skipped":      "#555577",
}

PLATFORM_COLORS = {
    "reddit":   "#ff4500",
    "youtube":  "#ff0000",
    "tiktok":   "#ee1d52",
    "x":        "#1d9bf0",
    "facebook": "#1877f2",
}

PLATFORM_ICONS = {
    "reddit":   "🟠",
    "youtube":  "🔴",
    "tiktok":   "🎵",
    "x":        "𝕏",
    "facebook": "🔵",
}

APP_STYLESHEET = f"""
QMainWindow, QWidget {{
    background-color: {DARK_BG};
    color: {TEXT_PRIMARY};
    font-family: 'Segoe UI', Arial, sans-serif;
    font-size: 13px;
}}

QSplitter::handle {{
    background-color: {BORDER};
    width: 2px;
}}

QListWidget {{
    background-color: {PANEL_BG};
    border: 1px solid {BORDER};
    border-radius: 8px;
    outline: none;
    padding: 4px;
}}

QListWidget::item {{
    border-radius: 6px;
    padding: 6px 8px;
    margin: 2px 0;
}}

QListWidget::item:selected {{
    background-color: {ACCENT};
    color: white;
}}

QListWidget::item:hover:!selected {{
    background-color: #1e1e4a;
}}

QTextEdit, QPlainTextEdit {{
    background-color: {PANEL_BG};
    border: 1px solid {BORDER};
    border-radius: 8px;
    color: {TEXT_PRIMARY};
    padding: 8px;
    selection-background-color: {ACCENT};
}}

QPushButton {{
    background-color: #1e1e4a;
    color: {TEXT_PRIMARY};
    border: 1px solid {BORDER};
    border-radius: 8px;
    padding: 8px 16px;
    font-weight: 600;
}}

QPushButton:hover {{
    background-color: #2a2a6a;
    border-color: {ACCENT};
}}

QPushButton:pressed {{
    background-color: {ACCENT};
}}

QPushButton#btn_contacted {{
    background-color: #1a4a2a;
    border-color: #3ddc84;
    color: #3ddc84;
}}

QPushButton#btn_contacted:hover {{
    background-color: #226633;
}}

QPushButton#btn_open {{
    background-color: #1a1a4a;
    border-color: {ACCENT};
    color: {ACCENT};
}}

QPushButton#btn_open:hover {{
    background-color: #22226a;
}}

QPushButton#btn_copy {{
    background-color: #2a1a4a;
    border-color: #a060ff;
    color: #a060ff;
}}

QPushButton#btn_copy:hover {{
    background-color: #3a2a6a;
}}

QPushButton#btn_skip {{
    background-color: #2a2a2a;
    border-color: #555555;
    color: #888888;
}}

QSlider::groove:horizontal {{
    border: 1px solid {BORDER};
    height: 6px;
    background: #1e1e4a;
    border-radius: 3px;
}}

QSlider::handle:horizontal {{
    background: {ACCENT};
    border: none;
    width: 16px;
    height: 16px;
    margin: -5px 0;
    border-radius: 8px;
}}

QSlider::sub-page:horizontal {{
    background: {ACCENT};
    border-radius: 3px;
}}

QLabel {{
    color: {TEXT_PRIMARY};
}}

QLabel#label_dim {{
    color: {TEXT_SECONDARY};
    font-size: 11px;
}}

QLabel#label_section {{
    color: {ACCENT};
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 1px;
    text-transform: uppercase;
}}

QFrame#divider {{
    background-color: {BORDER};
    max-height: 1px;
}}

QScrollBar:vertical {{
    background: {DARK_BG};
    width: 8px;
    border-radius: 4px;
}}

QScrollBar::handle:vertical {{
    background: {BORDER};
    border-radius: 4px;
    min-height: 20px;
}}

QScrollBar::handle:vertical:hover {{
    background: {ACCENT};
}}

QScrollBar::add-line:vertical, QScrollBar::sub-line:vertical {{
    height: 0;
}}

QComboBox {{
    background-color: {PANEL_BG};
    border: 1px solid {BORDER};
    border-radius: 6px;
    padding: 4px 8px;
    color: {TEXT_PRIMARY};
}}

QComboBox::drop-down {{
    border: none;
}}

QTabWidget::pane {{
    border: 1px solid {BORDER};
    border-radius: 8px;
    background: {PANEL_BG};
}}

QTabBar::tab {{
    background: {DARK_BG};
    color: {TEXT_SECONDARY};
    padding: 8px 20px;
    border: 1px solid {BORDER};
    border-bottom: none;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
}}

QTabBar::tab:selected {{
    background: {PANEL_BG};
    color: {TEXT_PRIMARY};
    border-bottom: 2px solid {ACCENT};
}}

QCheckBox {{
    color: {TEXT_PRIMARY};
    spacing: 8px;
}}

QCheckBox::indicator {{
    width: 16px;
    height: 16px;
    border: 1px solid {BORDER};
    border-radius: 4px;
    background: {PANEL_BG};
}}

QCheckBox::indicator:checked {{
    background: {ACCENT};
    border-color: {ACCENT};
}}

QStatusBar {{
    background-color: {PANEL_BG};
    color: {TEXT_SECONDARY};
    border-top: 1px solid {BORDER};
}}

QToolTip {{
    background-color: {PANEL_BG};
    color: {TEXT_PRIMARY};
    border: 1px solid {BORDER};
    border-radius: 6px;
    padding: 4px 8px;
}}
"""
