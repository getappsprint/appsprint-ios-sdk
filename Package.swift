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
            url: "https://github.com/getappsprint/appsprint-ios-sdk/releases/download/0.2.0/AppSprintSDK.xcframework.zip",
            checksum: "66a417aff3cb467390fc7cc43037cc6acb93b3a8fd935f5843695c79ba09e295"
        )
    ]
)
