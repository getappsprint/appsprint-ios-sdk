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
            url: "https://github.com/getappsprint/appsprint-ios-sdk/releases/download/v1.1.1/AppSprintSDK.xcframework.zip",
            checksum: "443adfecf06d1c05fa8d94769201c66e2187f12d07866ed6c7ec58a9259671f6"
        )
    ]
)
