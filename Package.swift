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
            url: "https://github.com/getappsprint/appsprint-ios-sdk/releases/download/v1.1.4/AppSprintSDK.xcframework.zip",
            checksum: "6a4a8bd0a6575786fc89a0409785ec3e34cd9a0283b5f599e5887c532cae05b5"
        )
    ]
)
