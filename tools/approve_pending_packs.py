#!/usr/bin/env python3
"""
Approve all pending user-submitted packs in Firestore.
Run this to fix packs stuck in 'pending_review' status.
"""

import firebase_admin
from firebase_admin import credentials, firestore
import sys
import os

# Path to your Firebase service account key file
# You need to download this from Firebase Console > Project Settings > Service Accounts
FIREBASE_KEY_PATH = os.path.expanduser('~/airta-firebase-key.json')

def approve_pending_packs():
    """Find and approve all packs with status='pending_review'"""

    # Check for Firebase key file
    if not os.path.exists(FIREBASE_KEY_PATH):
        print(f"[ERROR] Firebase key file not found at: {FIREBASE_KEY_PATH}")
        print("\nTo get your Firebase service account key:")
        print("1. Go to https://console.firebase.google.com/project/airta-app/settings/serviceaccounts")
        print("2. Click 'Generate new private key'")
        print("3. Save the JSON file to your home directory as 'airta-firebase-key.json'")
        print("\nOr specify a different path:")
        print(f"  python {sys.argv[0]} /path/to/your/key.json")
        sys.exit(1)

    # Initialize Firebase
    try:
        cred = credentials.Certificate(FIREBASE_KEY_PATH)
        firebase_admin.initialize_app(cred)
        db = firestore.client()
        print("✓ Connected to Firebase\n")
    except Exception as e:
        print(f"[ERROR] Failed to initialize Firebase: {e}")
        sys.exit(1)

    # Find all pending packs
    packs_ref = db.collection('user_submitted_packs')
    pending_query = packs_ref.where('status', '==', 'pending_review')
    pending_docs = list(pending_query.stream())

    if not pending_docs:
        print("No pending packs found. All packs are already approved!")
        return

    print(f"Found {len(pending_docs)} pack(s) with status='pending_review':\n")

    # Show pending packs
    for doc in pending_docs:
        data = doc.to_dict()
        print(f"  ID: {doc.id}")
        print(f"  Name: {data.get('packName', 'N/A')}")
        print(f"  Creator: {data.get('creatorName', 'N/A')} ({data.get('creatorEmail', 'N/A')})")
        print(f"  Submitted: {data.get('submissionDate', 'N/A')}")
        print(f"  Status: {data.get('status', 'N/A')}")
        print()

    # Ask for confirmation
    if len(sys.argv) > 1 and sys.argv[1] == '--yes':
        confirm = 'yes'
    else:
        confirm = input(f"Approve all {len(pending_docs)} pending pack(s)? (yes/no): ")

    if confirm.lower() != 'yes':
        print("Cancelled. No changes made.")
        return

    # Approve all pending packs
    approved_count = 0
    for doc in pending_docs:
        try:
            doc.reference.update({
                'status': 'approved'
            })
            print(f"✓ Approved: {doc.id}")
            approved_count += 1
        except Exception as e:
            print(f"✗ Failed to approve {doc.id}: {e}")

    print(f"\n{approved_count}/{len(pending_docs)} pack(s) approved successfully!")
    print("\nThese packs will now:")
    print("  - Appear in the app marketplace")
    print("  - Be eligible for auto-translation")
    print("  - Be available for purchase")

if __name__ == '__main__':
    # Allow custom key path as argument
    if len(sys.argv) > 1 and not sys.argv[1].startswith('--'):
        FIREBASE_KEY_PATH = sys.argv[1]

    approve_pending_packs()
