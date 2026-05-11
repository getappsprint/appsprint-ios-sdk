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
            checksum: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
        )
    ]
)
