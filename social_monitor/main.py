#!/usr/bin/env python3
"""
AIRTA Social Monitor — entry point.

Usage:
    python main.py

Requirements:
    pip install -r requirements.txt
    Copy .env.template to .env and fill in your API keys.
"""

import sys
import os
import logging

# ── Add parent dir to path so imports work from anywhere ──────────────────────
sys.path.insert(0, os.path.dirname(__file__))

# ── Logging ───────────────────────────────────────────────────────────────────
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s  %(levelname)-8s  %(name)s  %(message)s",
    datefmt="%H:%M:%S",
    handlers=[
        logging.StreamHandler(sys.stdout),
        logging.FileHandler(
            os.path.join(os.path.dirname(__file__), "data", "monitor.log"),
            encoding="utf-8",
        )
        if os.path.isdir(os.path.join(os.path.dirname(__file__), "data"))
        else logging.StreamHandler(sys.stdout),
    ],
)

logger = logging.getLogger("airta.monitor")


def _ensure_data_dir():
    data_dir = os.path.join(os.path.dirname(__file__), "data")
    os.makedirs(data_dir, exist_ok=True)


def main():
    _ensure_data_dir()

    # Re-configure file logging now that data/ exists
    log_file = os.path.join(os.path.dirname(__file__), "data", "monitor.log")
    file_handler = logging.FileHandler(log_file, encoding="utf-8")
    file_handler.setFormatter(logging.Formatter(
        "%(asctime)s  %(levelname)-8s  %(name)s  %(message)s",
        datefmt="%H:%M:%S",
    ))
    logging.getLogger().addHandler(file_handler)

    logger.info("AIRTA Social Monitor starting up")

    # Load .env
    try:
        from dotenv import load_dotenv
        env_path = os.path.join(os.path.dirname(__file__), ".env")
        if os.path.exists(env_path):
            load_dotenv(env_path)
            logger.info(".env loaded")
        else:
            logger.warning(".env not found — create one from .env.template to enable crawlers")
    except ImportError:
        logger.warning("python-dotenv not installed — run: pip install python-dotenv")

    # Launch Qt app
    try:
        from PyQt6.QtWidgets import QApplication
        from PyQt6.QtCore import Qt
    except ImportError:
        print("\nERROR: PyQt6 is not installed.")
        print("Run: pip install -r requirements.txt\n")
        sys.exit(1)

    app = QApplication(sys.argv)
    app.setApplicationName("AIRTA Social Monitor")
    app.setOrganizationName("AIRTA Corp")

    # High DPI support
    app.setAttribute(Qt.ApplicationAttribute.AA_UseHighDpiPixmaps, True)

    from ui.main_window import MainWindow
    window = MainWindow()
    window.show()

    logger.info("UI started")
    sys.exit(app.exec())


if __name__ == "__main__":
    main()
