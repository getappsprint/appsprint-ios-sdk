// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AppSprintSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "AppSprintSDK",
            targets: ["AppSprintSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppSprintSDK",
            url: "https://github.com/getappsprint/appsprint-ios-sdk/releases/download/v1.0.0/AppSprintSDK.xcframework.zip",
            checksum: "6f76d784566a4f9fdd6cced4a5be84dd645004e8d2d62e6f3f9e61c2bde65f1b"
        )
    ]
)
