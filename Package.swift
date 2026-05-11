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
            checksum: "aa289b88a35e34cea96dfb87a830d4a3154f28a2f30b099e67a8b22b035bd55c"
        )
    ]
)
