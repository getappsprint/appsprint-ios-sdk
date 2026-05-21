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
            url: "https://github.com/getappsprint/appsprint-ios-sdk/releases/download/v1.1.7/AppSprintSDK.xcframework.zip",
            checksum: "be75987b8de63f1cc8c18a3ebed2a5145b291c569c0cc38ec919c22b5dcda89b"
        )
    ]
)
