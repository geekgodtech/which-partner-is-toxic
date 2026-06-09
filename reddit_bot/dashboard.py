#!/usr/bin/env python3
"""
Simple web dashboard for monitoring the Reddit bot
Requires: pip install flask
"""

from flask import Flask, render_template, jsonify, request
import json
from pathlib import Path
from datetime import datetime
import time
from main import RedditEngagementBot

app = Flask(__name__)
bot = None

@app.route('/')
def index():
    """Main dashboard page"""
    return render_template('dashboard.html')

@app.route('/api/status')
def get_status():
    """Get bot status as JSON"""
    global bot
    if bot:
        status = bot.get_status_report()
        return jsonify(status)
    return jsonify({"error": "Bot not initialized"})

@app.route('/api/threads')
def get_threads():
    """Get all threads as JSON"""
    global bot
    if bot:
        threads = bot.get_prioritized_threads()
        thread_data = []
        for thread in threads:
            thread_dict = {
                'thread_id': thread.thread_id,
                'title': thread.title,
                'url': thread.url,
                'subreddit': thread.subreddit,
                'author': thread.author,
                'engagement_score': thread.engagement_score,
                'priority_score': thread.priority_score,
                'upvotes': thread.upvotes,
                'comment_count': thread.comment_count,
                'keywords_found': thread.keywords_found,
                'my_responses': len(thread.my_responses),
                'has_followups': thread.has_followups,
                'created_utc': datetime.fromtimestamp(thread.created_utc).strftime('%Y-%m-%d %H:%M'),
                'last_message_utc': datetime.fromtimestamp(thread.last_message_utc).strftime('%Y-%m-%d %H:%M')
            }
            thread_data.append(thread_dict)
        return jsonify(thread_data)
    return jsonify({"error": "Bot not initialized"})

@app.route('/api/toggle_pr_time', methods=['POST'])
def toggle_pr_time():
    """Toggle PR-Time mode"""
    global bot
    if bot:
        new_state = bot.toggle_pr_time_mode()
        return jsonify({"pr_time_mode": new_state})
    return jsonify({"error": "Bot not initialized"})

if __name__ == '__main__':
    # Initialize bot
    bot = RedditEngagementBot()
    
    # Run dashboard
    print("Dashboard running at http://localhost:5000")
    app.run(debug=True, port=5000)