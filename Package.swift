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
            url: "https://github.com/getappsprint/appsprint-ios-sdk/releases/download/v1.1.2/AppSprintSDK.xcframework.zip",
            checksum: "0a3c4e7f12ed185d2a70a7c4227b5b9af4960a7a9f33074d0bac6ca033a88cd7"
        )
    ]
)
