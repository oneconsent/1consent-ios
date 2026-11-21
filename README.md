# OneConsent for iOS 0.1.0

1Consent consent management for iOS apps. Closed source; see LICENSE.

## Requirements

- iOS 16.4 or later.
- Devices: arm64. Simulators: arm64 only (Apple silicon Macs). Intel Mac simulators (x86_64) are not
  supported in this release; build simulator targets with `ARCHS=arm64`.

## Setup

Use a banner published for apps. Live requires verified ownership for the published build identifier. Staging requires access for the selected site and plan.
[Native app setup and device checks](https://1consent.app/docs/integration/native-apps)

Add the package, put `1consent.json` (your app ID, banner ID and stage from the 1Consent
dashboard) in the app bundle, and call `OneConsentSDK.start()` before the first scene. You can
call `OneConsentSDK.configure(appId:bannerId:stage:)` before `start()` instead of the file.
