# AppSprint iOS SDK

Lightweight mobile attribution SDK for iOS. Tracks installs, events, and campaign attribution with offline support and Apple Ads integration.

## Installation

### Swift Package Manager (Recommended)

Add this package in Xcode:

1. File > Add Package Dependencies
2. Enter: `https://github.com/getappsprint/appsprint-ios-sdk`
3. Select version rule: "Up to Next Major" from `0.3.0`

Or add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/getappsprint/appsprint-ios-sdk", from: "0.3.0")
]
```

### CocoaPods

```ruby
pod 'AppSprintSDK', '~> 0.3.0'
```

## Quick Start

```swift
import AppSprintSDK

// Configure on app launch
let config = AppSprintConfig(apiKey: "as_live_your_api_key")
await AppSprint.shared.configure(config)

// Track events
await AppSprint.shared.sendEvent(.purchase, name: "premium_upgrade", params: ["price": 9.99])

// Get attribution
if let attribution = AppSprint.shared.getAttribution() {
    print("Source: \(attribution.source)")
}
```

## Configuration

```swift
let config = AppSprintConfig(
    apiKey: "as_live_...",                    // Required
    apiURL: URL(string: "https://api.appsprint.app")!,  // Default
    enableAppleAdsAttribution: true,          // Default: true
    isDebug: false,                           // Default: false
    logLevel: .warn,                          // Default: .warn
    customerUserId: nil,                      // Optional
    autoTrackSessions: true,                  // Default: true. Auto-fires .sessionStart on
                                              // configure() and foreground, debounced 30 min.
    autoRefreshAttribution: true              // Default: true. Refetches /v1/sdk/attribution
                                              // on configure() / foreground / late AdServices
                                              // PATCH so server-side late resolution propagates.
)
```

## API Reference

```swift
// Lifecycle
AppSprint.shared.configure(_ config: AppSprintConfig) async
AppSprint.shared.destroy()
AppSprint.shared.isInitialized -> Bool

// Events
AppSprint.shared.sendEvent(_ type: AppSprintEventType, name: String?, params: [String: Any]?) async
AppSprint.shared.sendTestEvent() async -> TestEventResult
AppSprint.shared.flush() async

// Attribution
AppSprint.shared.getAttribution() -> AttributionResult?
AppSprint.shared.getAttributionParams() -> [String: String]
AppSprint.shared.getAppSprintId() -> String?
AppSprint.shared.refreshAttribution() async -> AttributionResult?
AppSprint.shared.enableAppleAdsAttribution() -> Bool

// User
AppSprint.shared.setCustomerUserId(_ userId: String) async

// State
AppSprint.shared.isSdkDisabled() -> Bool
AppSprint.shared.clearData()
```

### Event Types

`sessionStart`, `login`, `signUp`, `register`, `purchase`, `subscribe`, `startTrial`, `addPaymentInfo`, `addToCart`, `addToWishlist`, `initiateCheckout`, `viewContent`, `viewItem`, `search`, `share`, `tutorialComplete`, `achieveLevel`, `levelStart`, `levelComplete`, `custom`

## Requirements

- iOS 14.0+
- Swift 5.9+
- Xcode 15+

## License

MIT License. See [LICENSE](LICENSE) for details.
