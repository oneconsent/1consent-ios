// swift-tools-version: 5.9
// 1Consent iOS SDK 0.1.0. Closed source; see LICENSE.
import PackageDescription

let package = Package(
    name: "OneConsent",
    platforms: [.iOS("16.4")],
    products: [.library(name: "OneConsent", targets: ["OneConsentPackage"])],
    targets: [
        .binaryTarget(name: "OneConsent", url: "https://github.com/oneconsent/1consent-ios/releases/download/0.1.0/OneConsent.xcframework.zip", checksum: "5a038f8bf51c28a2a1032758203b932a1cdda26a2ccc8c2e238c94fae1fa8655"),
        // Binary targets cannot declare linker settings; this target links what the static core needs.
        .target(
            name: "OneConsentPackage",
            dependencies: ["OneConsent"],
            path: "Sources/OneConsentPackage",
            resources: [.copy("PrivacyInfo.xcprivacy")],
            linkerSettings: [.linkedLibrary("c++"), .linkedLibrary("sqlite3")]
        ),
    ]
)
