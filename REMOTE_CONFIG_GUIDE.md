# Remote Config & Version Management Guide

## Overview

This app uses Firebase Remote Config to dynamically control:
- **Force app updates** when new versions are released
- **Pricing tiers** and feature availability
- **Supported platforms** (SMS, WhatsApp, Messenger, etc.)
- **Feature flags** for gradual rollouts

## Setup Instructions

### 1. Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Add project"
3. Name it: `which-partner-is-toxic`
4. Disable Google Analytics (optional)
5. Click "Create project"

### 2. Add Android App

1. In Firebase Console, click "Add app" → Android icon
2. **Android package name:** `com.yourcompany.which_partner_is_toxic` (match your app)
3. Download `google-services.json`
4. Place it in: `android/app/google-services.json`

### 3. Add iOS App

1. Click "Add app" → iOS icon
2. **iOS bundle ID:** `com.yourcompany.whichPartnerIsToxic` (match your app)
3. Download `GoogleService-Info.plist`
4. Place it in: `ios/Runner/GoogleService-Info.plist`

### 4. Configure Android Build

Add to `android/build.gradle`:
```gradle
buildscript {
    dependencies {
        classpath 'com.google.gms:google-services:4.4.0'
    }
}
```

Add to `android/app/build.gradle` (at the bottom):
```gradle
apply plugin: 'com.google.gms.google-services'
```

### 5. Configure iOS

Open `ios/Runner.xcworkspace` in Xcode and add `GoogleService-Info.plist` to the project.

### 6. Set Up Remote Config in Firebase

1. Go to Firebase Console → Remote Config
2. Click "Create configuration"
3. Add the following parameters:

#### Version Control Parameters

| Parameter | Type | Default Value | Description |
|-----------|------|---------------|-------------|
| `min_required_version` | String | `1.0.0` | Minimum app version required |
| `force_update` | Boolean | `false` | Whether to force users to update |
| `update_message` | String | `A new version is available!` | Message shown on update screen |
| `android_store_url` | String | Your Play Store URL | Link to Android app |
| `ios_store_url` | String | Your App Store URL | Link to iOS app |

#### Pricing Parameters

| Parameter | Type | Default Value | Description |
|-----------|------|---------------|-------------|
| `standard_tier_price` | String | `9.99` | Standard tier monthly price |
| `pro_tier_price` | String | `19.99` | Pro tier monthly price |
| `pro_plus_tier_price` | String | `24.99` | Pro Plus tier monthly price |
| `one_time_unlock_price` | String | `19.99` | One-time unlock price |

#### Feature Flags

| Parameter | Type | Default Value | Description |
|-----------|------|---------------|-------------|
| `pro_tier_enabled` | Boolean | `false` | Enable Pro tier (WhatsApp, Messenger, etc.) |
| `pro_plus_tier_enabled` | Boolean | `false` | Enable Pro Plus tier (Discord) |

#### Feature Lists (Comma-separated strings)

| Parameter | Type | Default Value |
|-----------|------|---------------|
| `standard_tier_features` | String | `Unlimited SMS analysis,Advanced AI insights,PDF report export,Priority support` |
| `pro_tier_features` | String | `Everything in Standard,WhatsApp analysis,Facebook Messenger analysis,Instagram DM analysis,Email analysis,LinkedIn message analysis,Telegram analysis,Twitter/X DM analysis` |
| `pro_plus_tier_features` | String | `Everything in Pro,Discord server analysis,Custom integrations,API access,White-label reports` |
| `supported_platforms` | String | `sms,whatsapp,messenger,instagram,email,linkedin,telegram,twitter,discord` |

---

## How to Use

### Launch v1.0.0 (SMS Only)

**Firebase Remote Config Settings:**
```json
{
  "min_required_version": "1.0.0",
  "force_update": false,
  "pro_tier_enabled": false,
  "pro_plus_tier_enabled": false,
  "supported_platforms": "sms"
}
```

**Available Tiers:**
- Free (basic features)
- Standard ($9.99/month) - Full SMS analysis
- One-time unlock ($19.99) - Permanent access

---

### Launch v1.1.0 (Add Multi-Platform Support)

**Step 1:** Build and submit v1.1.0 to app stores with Unipile integration

**Step 2:** Wait for app store approval (1-3 days)

**Step 3:** Update Firebase Remote Config:
```json
{
  "min_required_version": "1.1.0",
  "force_update": true,
  "update_message": "🎉 NEW: WhatsApp, Messenger, Instagram, Email, LinkedIn, Telegram, and Twitter/X analysis now available!",
  "pro_tier_enabled": true,
  "pro_plus_tier_enabled": false,
  "supported_platforms": "sms,whatsapp,messenger,instagram,email,linkedin,telegram,twitter"
}
```

**Step 4:** All users on v1.0.0 will be forced to update on next app launch

**Available Tiers:**
- Free (basic features)
- Standard ($9.99/month) - Full SMS analysis
- **Pro ($19.99/month)** - SMS + WhatsApp + Messenger + Instagram + Email + LinkedIn + Telegram + Twitter/X
- One-time unlock ($19.99) - Grandfathered permanent access

---

### Launch v1.2.0 (Add Discord Support)

**Step 1:** Build v1.2.0 with Discord API integration

**Step 2:** Submit to app stores

**Step 3:** Update Firebase Remote Config:
```json
{
  "min_required_version": "1.2.0",
  "force_update": true,
  "update_message": "🚀 NEW: Discord server analysis now available in Pro Plus tier!",
  "pro_tier_enabled": true,
  "pro_plus_tier_enabled": true,
  "supported_platforms": "sms,whatsapp,messenger,instagram,email,linkedin,telegram,twitter,discord"
}
```

**Available Tiers:**
- Free (basic features)
- Standard ($9.99/month) - Full SMS analysis
- Pro ($19.99/month) - SMS + WhatsApp + Messenger + Instagram + Email + LinkedIn + Telegram + Twitter/X
- **Pro Plus ($24.99/month)** - Everything + Discord

---

## Testing

### Test Version Check Locally

1. Set `force_update: true` in Remote Config
2. Set `min_required_version: 2.0.0` (higher than your current version)
3. Restart the app
4. You should see the force update screen

### Test Feature Flags

1. Toggle `pro_tier_enabled: true` in Remote Config
2. Restart the app
3. Pro tier should now appear in subscription options

---

## Emergency Rollback

If v1.1.0 has critical bugs:

```json
{
  "min_required_version": "1.0.0",
  "force_update": false,
  "pro_tier_enabled": false
}
```

This allows users to stay on v1.0.0 while you fix v1.1.0.

---

## Best Practices

1. **Always test Remote Config changes** in a staging environment first
2. **Gradual rollouts:** Set `force_update: false` initially, monitor for issues, then set to `true`
3. **Clear update messages:** Tell users exactly what's new
4. **Monitor crash reports:** Check Firebase Crashlytics after forcing updates
5. **Keep defaults in code:** If Remote Config fails to fetch, app uses hardcoded defaults

---

## Troubleshooting

### Remote Config not updating?

- Wait up to 12 hours for changes to propagate
- Or reduce `minimumFetchInterval` in `remote_config_service.dart` for testing
- Clear app data and restart

### Firebase initialization failing?

- Check `google-services.json` is in `android/app/`
- Check `GoogleService-Info.plist` is in `ios/Runner/`
- Verify package name matches Firebase project

### Version check not working?

- Verify `pubspec.yaml` version matches your build
- Check Firebase Remote Config has correct `min_required_version`
- Check `force_update` is set to `true`

---

## Cost

Firebase Remote Config is **FREE** for:
- Unlimited config updates
- Unlimited active users
- Unlimited API calls

Perfect for your use case!
