// swift-tools-version:5.0

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
