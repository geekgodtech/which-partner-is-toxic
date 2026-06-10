# Fix Pending Packs

## The Problem
Packs submitted BEFORE we added auto-approval are stuck with `status: 'pending_review'`
and won't show up in the app. The app only fetches packs with `status: 'approved'`.

## Quick Fix Options

### Option 1: Web Admin (Easiest)
1. Push the admin page to GitHub Pages (done with this commit)
2. Visit: https://geekgodtech.github.io/AIRTA/admin-approve-packs.html
3. Sign in with Google
4. Click "Approve All Pending Packs"
5. Done! Packs will appear in the app immediately

### Option 2: Firebase Console (Manual)
1. Go to https://console.firebase.google.com/project/airta-app/firestore
2. Find the collection `user_submitted_packs`
3. Look for documents with `status: 'pending_review'`
4. Edit each one and change `status` to `'approved'`

### Option 3: Python Script (For Developers)
1. Download Firebase service account key from:
   https://console.firebase.google.com/project/airta-app/settings/serviceaccounts
2. Save it as `~/airta-firebase-key.json`
3. Run: `python tools/approve_pending_packs.py`

## Prevention
New submissions are now automatically approved. This only affects packs submitted
between when the feature launched and when we added auto-approval.
