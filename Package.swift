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
            url: "https://github.com/getappsprint/appsprint-ios-sdk/releases/download/v1.1.5/AppSprintSDK.xcframework.zip",
            checksum: "958a4d20f8c269e6044b890b07bd5718257fb89166bea9ceb9083ba11cdf845d"
        )
    ]
)
