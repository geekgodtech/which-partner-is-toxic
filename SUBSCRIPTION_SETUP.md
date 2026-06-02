# In-App Purchase Setup Guide

This guide explains how to set up subscriptions in Google Play Console and Apple App Store Connect.

## Product IDs (Must Match Exactly)

The app is configured to use these product IDs:

- `standard_monthly` - Standard membership ($9.99/month)
- `pro_monthly` - Pro membership ($19.99/month)
- `pro_plus_monthly` - Pro Plus membership ($24.99/month)
- `one_time_unlock` - One-time report unlock ($20, non-consumable)

---

## Google Play Console Setup (Android)

### 1. Create a Google Play Developer Account
- Cost: $25 one-time fee
- Go to: https://play.google.com/console
- Complete registration

### 2. Create Your App Listing
- Upload your APK
- Fill out store listing (title, description, screenshots)
- Set content rating
- Set up pricing & distribution

### 3. Create Subscription Products

Navigate to: **Monetize → Products → Subscriptions**

#### Standard Monthly ($9.99/mo)
1. Click "Create subscription"
2. **Product ID:** `standard_monthly` (MUST match exactly)
3. **Name:** Standard Membership
4. **Description:** Full SMS analysis with 10 reports per day
5. **Price:** $9.99 USD/month
6. **Billing period:** 1 month
7. **Free trial:** Optional (e.g., 7 days)
8. **Grace period:** 3 days (recommended)
9. Save and activate

#### Pro Monthly ($19.99/mo)
1. Click "Create subscription"
2. **Product ID:** `pro_monthly`
3. **Name:** Pro Membership
4. **Description:** Unlimited reports + multi-platform analysis
5. **Price:** $19.99 USD/month
6. **Billing period:** 1 month
7. **Free trial:** Optional
8. **Grace period:** 3 days
9. Save and activate

#### Pro Plus Monthly ($24.99/mo)
1. Click "Create subscription"
2. **Product ID:** `pro_plus_monthly`
3. **Name:** Pro Plus Membership
4. **Description:** Everything in Pro + Discord analysis
5. **Price:** $24.99 USD/month
6. **Billing period:** 1 month
7. **Free trial:** Optional
8. **Grace period:** 3 days
9. Save and activate

### 4. Create One-Time Purchase

Navigate to: **Monetize → Products → In-app products**

#### One-Time Unlock ($20)
1. Click "Create product"
2. **Product ID:** `one_time_unlock`
3. **Name:** One-Time Report Unlock
4. **Description:** Unlock this report permanently
5. **Price:** $20 USD
6. **Product type:** Non-consumable (can only be purchased once)
7. Save and activate

### 5. Testing Subscriptions

1. Go to **Setup → License testing**
2. Add test Gmail accounts
3. These accounts can purchase without being charged
4. Test all subscription flows before launch

---

## Apple App Store Connect Setup (iOS)

### 1. Create an Apple Developer Account
- Cost: $99/year
- Go to: https://developer.apple.com
- Enroll in Apple Developer Program

### 2. Create Your App in App Store Connect
- Go to: https://appstoreconnect.apple.com
- Click "My Apps" → "+" → "New App"
- Fill out app information
- Upload your IPA (via Xcode or Transporter app)

### 3. Create Subscription Products

Navigate to: **Features → In-App Purchases**

#### Standard Monthly ($9.99/mo)
1. Click "+" to create new subscription
2. **Type:** Auto-Renewable Subscription
3. **Reference Name:** Standard Membership
4. **Product ID:** `standard_monthly` (MUST match exactly)
5. **Subscription Group:** Create new group "Memberships"
6. **Subscription Duration:** 1 month
7. **Price:** $9.99 USD (Tier 10)
8. **Localization:**
   - Display Name: Standard Membership
   - Description: Full SMS analysis with 10 reports per day
9. **Review Information:** Add screenshot
10. Submit for review

#### Pro Monthly ($19.99/mo)
1. Click "+" → Auto-Renewable Subscription
2. **Reference Name:** Pro Membership
3. **Product ID:** `pro_monthly`
4. **Subscription Group:** Memberships (same group)
5. **Subscription Duration:** 1 month
6. **Price:** $19.99 USD (Tier 20)
7. **Localization:**
   - Display Name: Pro Membership
   - Description: Unlimited reports + multi-platform analysis
8. Submit for review

#### Pro Plus Monthly ($24.99/mo)
1. Click "+" → Auto-Renewable Subscription
2. **Reference Name:** Pro Plus Membership
3. **Product ID:** `pro_plus_monthly`
4. **Subscription Group:** Memberships
5. **Subscription Duration:** 1 month
6. **Price:** $24.99 USD (Tier 25)
7. **Localization:**
   - Display Name: Pro Plus Membership
   - Description: Everything in Pro + Discord analysis
8. Submit for review

### 4. Create One-Time Purchase

#### One-Time Unlock ($20)
1. Click "+" → Non-Consumable
2. **Reference Name:** One-Time Report Unlock
3. **Product ID:** `one_time_unlock`
4. **Price:** $19.99 USD (Tier 20) - closest to $20
5. **Localization:**
   - Display Name: One-Time Report Unlock
   - Description: Unlock this report permanently
6. Submit for review

### 5. Testing Subscriptions

1. Go to **Users and Access → Sandbox Testers**
2. Create test Apple IDs
3. On your iPhone, sign out of App Store
4. Run your app and make a purchase
5. Sign in with sandbox tester account
6. Purchases won't be charged

---

## Testing Before Launch

### Android Testing
```bash
# Build and install test APK
flutter build apk --debug
adb install build/app/outputs/flutter-apk/app-debug.apk

# Add your Gmail to license testers in Play Console
# Make test purchases - they won't be charged
```

### iOS Testing
```bash
# Build for iOS
flutter build ios

# Open in Xcode and run on device
# Use sandbox tester account for purchases
```

---

## Important Notes

### Product ID Matching
The product IDs in the code **MUST** match exactly what you create in the stores:
- `standard_monthly`
- `pro_monthly`
- `pro_plus_monthly`
- `one_time_unlock`

### Subscription Groups (iOS)
All three subscription tiers should be in the same subscription group. This allows users to upgrade/downgrade between tiers.

### Review Time
- **Google Play:** Usually 1-3 days
- **Apple App Store:** Usually 1-2 days for in-app purchases

### Revenue Split
- Both stores take **30%** of all revenue
- You receive **70%**
- Example: $9.99 subscription = $6.99 to you

### Subscription Management
Users can manage/cancel subscriptions through:
- **Android:** Google Play Store app → Subscriptions
- **iOS:** Settings → Apple ID → Subscriptions

The app automatically detects when subscriptions are cancelled or expired.

---

## After Setup

Once products are created and approved:

1. **Test thoroughly** with sandbox/test accounts
2. **Verify** purchases work correctly
3. **Check** that features unlock properly
4. **Monitor** subscription status in store dashboards
5. **Track** revenue in store analytics

The app is already coded and ready - you just need to create the products in the store consoles!
