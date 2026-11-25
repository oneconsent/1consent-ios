// swift-tools-version: 5.9
// 1Consent iOS SDK 0.1.1. Closed source; see LICENSE.
import PackageDescription

let package = Package(
    name: "OneConsent",
    platforms: [.iOS("16.4")],
    products: [.library(name: "OneConsent", targets: ["OneConsentPackage"])],
    targets: [
        .binaryTarget(name: "OneConsent", url: "https://github.com/oneconsent/1consent-ios/releases/download/0.1.1/OneConsent.xcframework.zip", checksum: "661775f77a3de091dde292ef7f516b544b65c46d5217546bdfd2c459e55e1f59"),
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
