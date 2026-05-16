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
            url: "https://github.com/getappsprint/appsprint-ios-sdk/releases/download/v1.1.0/AppSprintSDK.xcframework.zip",
            checksum: "7b34ac36c186abb969f0da678f85edb828f4c72e0376e4169fe8e8c6c78113d8"
        )
    ]
)
