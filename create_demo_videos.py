#!/usr/bin/env python3
"""
AIRTA Demo Video Generator
Creates 5-6 demonstration videos showcasing AIRTA app features.
Uses Playwright to capture screen recordings and moviepy to edit them.

Output videos are saved to:
- C:\My Projects\AIRTA\docs\videos\
- C:\My Projects\AIRTA Video Studio\assets\videos\

Videos created:
1. App Overview & Dashboard (60s)
2. Metric Packs & Analysis (90s)
3. SMS Capture & Import (60s)
4. Report Generation & Viewer (60s)
5. Discord Integration (45s)
6. User-Submitted Packs (60s)
"""

import os
import sys
import asyncio
import subprocess
from pathlib import Path
from datetime import datetime

# Paths
PROJECT_ROOT = Path("C:/My Projects/AIRTA")
VIDEO_STUDIO_ASSETS = Path("C:/My Projects/AIRTA Video Studio/assets")
WEBSITE_VIDEOS = PROJECT_ROOT / "docs" / "videos"
SCREENSHOTS_DIR = PROJECT_ROOT / "Screenshots"

# Ensure output directories exist
WEBSITE_VIDEOS.mkdir(parents=True, exist_ok=True)
(VIDEO_STUDIO_ASSETS / "videos").mkdir(parents=True, exist_ok=True)
(VIDEO_STUDIO_ASSETS / "demo_videos").mkdir(parents=True, exist_ok=True)

# Video configurations
VIDEOS = [
    {
        "name": "01_app_overview",
        "title": "AIRTA - App Overview & Dashboard",
        "duration": 60,
        "scenes": [
            {"type": "intro", "text": "AIRTA - AI Relationship Toxicity Analyzer", "duration": 3},
            {"type": "screenshot", "file": "Android/en/dashboard.png", "text": "Beautiful Dark Theme Dashboard", "duration": 8},
            {"type": "screenshot", "file": "Android/en/analysis_progress.png", "text": "Real-Time Analysis Progress", "duration": 8},
            {"type": "screenshot", "file": "Android/en/results_chart.png", "text": "Detailed Results Charts", "duration": 8},
            {"type": "screenshot", "file": "Android/en/metric_detail.png", "text": "Deep Metric Insights", "duration": 8},
            {"type": "outro", "text": "Download AIRTA Today - airta.net", "duration": 3},
        ]
    },
    {
        "name": "02_metric_packs",
        "title": "AIRTA - Metric Packs & Analysis",
        "duration": 90,
        "scenes": [
            {"type": "intro", "text": "500+ Professional Metrics", "duration": 3},
            {"type": "screenshot", "file": "Android/en/good_pack.png", "text": "Good Signs Pack - Positive Indicators", "duration": 10},
            {"type": "screenshot", "file": "Android/en/bad_pack.png", "text": "Red Flags Pack - Warning Signs", "duration": 10},
            {"type": "screenshot", "file": "Android/en/ugly_pack.png", "text": "Danger Signs Pack - Serious Concerns", "duration": 10},
            {"type": "screenshot", "file": "Android/en/narcissist_pack.png", "text": "Narcissist Pattern Detection", "duration": 10},
            {"type": "screenshot", "file": "Android/en/serial_killer_pack.png", "text": "Extreme Danger Indicators", "duration": 10},
            {"type": "outro", "text": "Comprehensive Relationship Analysis", "duration": 3},
        ]
    },
    {
        "name": "03_sms_capture",
        "title": "AIRTA - SMS Capture & Import",
        "duration": 60,
        "scenes": [
            {"type": "intro", "text": "Easy SMS Import", "duration": 3},
            {"type": "screenshot", "file": "Android/en/sms_import.png", "text": "Import from Any Android Device", "duration": 10},
            {"type": "screenshot", "file": "Android/en/conversation_list.png", "text": "Browse All Conversations", "duration": 10},
            {"type": "screenshot", "file": "Android/en/message_thread.png", "text": "Select Message Threads", "duration": 10},
            {"type": "screenshot", "file": "Android/en/import_confirm.png", "text": "One-Tap Import & Analysis", "duration": 10},
            {"type": "outro", "text": "Your Data Stays Private & Secure", "duration": 3},
        ]
    },
    {
        "name": "04_reports",
        "title": "AIRTA - Report Generation",
        "duration": 60,
        "scenes": [
            {"type": "intro", "text": "Professional PDF Reports", "duration": 3},
            {"type": "screenshot", "file": "Android/en/report_overview.png", "text": "Comprehensive Analysis Summary", "duration": 10},
            {"type": "screenshot", "file": "Android/en/report_timeline.png", "text": "Timeline Visualization", "duration": 10},
            {"type": "screenshot", "file": "Android/en/report_metrics.png", "text": "Detailed Metric Breakdown", "duration": 10},
            {"type": "screenshot", "file": "Android/en/report_export.png", "text": "Share or Save Reports", "duration": 10},
            {"type": "outro", "text": "Evidence-Backed Documentation", "duration": 3},
        ]
    },
    {
        "name": "05_discord",
        "title": "AIRTA - Discord Integration",
        "duration": 45,
        "scenes": [
            {"type": "intro", "text": "Discord Server Analysis", "duration": 3},
            {"type": "screenshot", "file": "Android/en/discord_channels.png", "text": "Browse Discord Channels", "duration": 10},
            {"type": "screenshot", "file": "Android/en/discord_messages.png", "text": "Analyze Server Conversations", "duration": 10},
            {"type": "screenshot", "file": "Android/en/discord_results.png", "text": "Community Health Insights", "duration": 10},
            {"type": "outro", "text": "Moderate Communities Effectively", "duration": 3},
        ]
    },
    {
        "name": "06_user_packs",
        "title": "AIRTA - User-Submitted Packs",
        "duration": 60,
        "scenes": [
            {"type": "intro", "text": "Create & Sell Your Own Packs", "duration": 3},
            {"type": "screenshot", "file": "Android/en/user_packs_list.png", "text": "Browse Community Packs", "duration": 10},
            {"type": "screenshot", "file": "Android/en/submit_pack.png", "text": "Submit 50 or 100 Metrics", "duration": 10},
            {"type": "screenshot", "file": "Android/en/creator_credits.png", "text": "Earn Creator Credits", "duration": 10},
            {"type": "screenshot", "file": "Android/en/pack_purchase.png", "text": "Buy & Support Creators", "duration": 10},
            {"type": "outro", "text": "Join the AIRTA Creator Community", "duration": 3},
        ]
    },
]


def check_dependencies():
    """Check if required dependencies are installed."""
    required = ["moviepy", "PIL", "numpy"]
    missing = []

    for pkg in required:
        try:
            __import__(pkg)
        except ImportError:
            missing.append(pkg)

    if missing:
        print(f"Installing missing dependencies: {missing}")
        subprocess.check_call([sys.executable, "-m", "pip", "install", "moviepy", "pillow", "numpy", "imageio[ffmpeg]"])


def create_title_card(text: str, duration: int, size=(1280, 720)) -> str:
    """Create a title card image with the given text."""
    from PIL import Image, ImageDraw, ImageFont

    img = Image.new('RGB', size, color=(13, 13, 26))  # #0d0d1a
    draw = ImageDraw.Draw(img)

    # Try to use a nice font, fallback to default
    try:
        font_large = ImageFont.truetype("segoeui.ttf", 48)
        font_small = ImageFont.truetype("segoeui.ttf", 24)
    except:
        font_large = ImageFont.load_default()
        font_small = font_large

    # Draw gradient-like effect (simplified)
    for i in range(100):
        y = int(size[1] * 0.3) + i
        alpha = int(255 * (1 - i / 100))
        draw.line([(0, y), (size[0], y)], fill=(26, 26, 62, alpha))

    # Draw text
    bbox = draw.textbbox((0, 0), text, font=font_large)
    text_width = bbox[2] - bbox[0]
    x = (size[0] - text_width) // 2
    y = size[1] // 2 - 50

    # Shadow
    draw.text((x+2, y+2), text, font=font_large, fill=(0, 0, 0))
    # Main text
    draw.text((x, y), text, font=font_large, fill=(208, 208, 255))  # #d0d0ff

    # Subtitle
    subtitle = "AIRTA - AI Relationship Toxicity Analyzer"
    bbox2 = draw.textbbox((0, 0), subtitle, font=font_small)
    sub_width = bbox2[2] - bbox2[0]
    draw.text(((size[0] - sub_width) // 2, y + 70), subtitle, font=font_small, fill=(160, 160, 192))

    # Save
    output_path = WEBSITE_VIDEOS / f"title_{text.replace(' ', '_').lower()[:20]}.png"
    img.save(output_path)
    return str(output_path)


def create_video_from_screenshots(video_config: dict) -> str:
    """Create a video from screenshots using moviepy."""
    from moviepy.editor import (
        ImageClip, TextClip, CompositeVideoClip, concatenate_videoclips,
        AudioFileClip, ColorClip
    )
    from moviepy.video.fx.all import fadein, fadeout

    clips = []
    video_name = video_config["name"]

    print(f"\nCreating video: {video_config['title']}")

    for i, scene in enumerate(video_config["scenes"]):
        print(f"  Scene {i+1}: {scene.get('text', scene['type'])}")

        if scene["type"] == "intro":
            # Create intro title card
            title_path = create_title_card(scene["text"], scene["duration"])
            clip = ImageClip(title_path, duration=scene["duration"])
            clip = fadein(clip, 0.5).fx(fadeout, 0.5)
            clips.append(clip)

        elif scene["type"] == "screenshot":
            # Use actual screenshot if available, otherwise create placeholder
            screenshot_path = SCREENSHOTS_DIR / scene["file"]

            if screenshot_path.exists():
                # Load and resize screenshot
                clip = ImageClip(str(screenshot_path), duration=scene["duration"])

                # Add overlay text
                text_clip = TextClip(
                    scene["text"],
                    fontsize=32,
                    color='white',
                    font='Segoe-UI-Bold',
                    stroke_color='black',
                    stroke_width=2
                ).set_position(('center', 50)).set_duration(scene["duration"])

                # Composite
                clip = CompositeVideoClip([clip, text_clip])
            else:
                # Create placeholder with text
                print(f"    Screenshot not found: {screenshot_path}")
                print(f"    Creating placeholder...")

                # Create a placeholder image
                from PIL import Image, ImageDraw, ImageFont
                img = Image.new('RGB', (1280, 720), color=(26, 26, 62))
                draw = ImageDraw.Draw(img)

                try:
                    font = ImageFont.truetype("segoeui.ttf", 36)
                except:
                    font = ImageFont.load_default()

                # Draw placeholder text
                lines = [
                    f"Screenshot: {scene['file']}",
                    "",
                    scene["text"],
                    "",
                    "(Placeholder - Capture actual screenshot)"
                ]

                y = 250
                for line in lines:
                    bbox = draw.textbbox((0, 0), line, font=font)
                    x = (1280 - (bbox[2] - bbox[0])) // 2
                    draw.text((x, y), line, font=font, fill=(208, 208, 255))
                    y += 50

                placeholder_path = WEBSITE_VIDEOS / f"placeholder_{video_name}_{i}.png"
                img.save(placeholder_path)

                clip = ImageClip(str(placeholder_path), duration=scene["duration"])

            clip = fadein(clip, 0.5).fx(fadeout, 0.5)
            clips.append(clip)

        elif scene["type"] == "outro":
            # Create outro card
            outro_path = create_title_card(scene["text"], scene["duration"])
            clip = ImageClip(outro_path, duration=scene["duration"])
            clip = fadein(clip, 0.5).fx(fadeout, 0.5)
            clips.append(clip)

    # Concatenate all clips
    if clips:
        final_video = concatenate_videoclips(clips, method="compose")

        # Output paths
        website_output = WEBSITE_VIDEOS / f"{video_name}.mp4"
        studio_output = VIDEO_STUDIO_ASSETS / "demo_videos" / f"{video_name}.mp4"

        # Render video
        print(f"  Rendering to: {website_output}")
        final_video.write_videofile(
            str(website_output),
            fps=30,
            codec='libx264',
            audio=False,
            preset='fast',
            threads=4
        )

        # Copy to video studio assets
        print(f"  Copying to: {studio_output}")
        import shutil
        shutil.copy(str(website_output), str(studio_output))

        return str(website_output)

    return None


def generate_all_videos():
    """Generate all demo videos."""
    print("=" * 70)
    print("AIRTA Demo Video Generator")
    print("=" * 70)
    print(f"\nOutput locations:")
    print(f"  Website videos: {WEBSITE_VIDEOS}")
    print(f"  Studio assets: {VIDEO_STUDIO_ASSETS / 'demo_videos'}")
    print()

    # Check dependencies
    check_dependencies()

    # Generate each video
    results = []
    for video_config in VIDEOS:
        try:
            output_path = create_video_from_screenshots(video_config)
            if output_path:
                results.append({
                    "name": video_config["name"],
                    "path": output_path,
                    "status": "success"
                })
        except Exception as e:
            print(f"ERROR creating {video_config['name']}: {e}")
            results.append({
                "name": video_config["name"],
                "error": str(e),
                "status": "failed"
            })

    # Summary
    print("\n" + "=" * 70)
    print("VIDEO GENERATION SUMMARY")
    print("=" * 70)

    successful = [r for r in results if r["status"] == "success"]
    failed = [r for r in results if r["status"] == "failed"]

    print(f"\nSuccessful: {len(successful)}/{len(results)}")
    for r in successful:
        print(f"  ✓ {r['name']}: {r['path']}")

    if failed:
        print(f"\nFailed: {len(failed)}/{len(results)}")
        for r in failed:
            print(f"  ✗ {r['name']}: {r['error']}")

    print("\n" + "=" * 70)
    print("Done! Videos are ready for use in:")
    print(f"  - Website: {WEBSITE_VIDEOS}")
    print(f"  - Video Studio: {VIDEO_STUDIO_ASSETS / 'demo_videos'}")
    print("=" * 70)

    return results


if __name__ == "__main__":
    generate_all_videos()
