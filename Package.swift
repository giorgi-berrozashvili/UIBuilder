// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIBuilder",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "UIBuilder",
            targets: ["UIBuilder"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "UIBuilder",
            dependencies: []
        )
    ]
)
