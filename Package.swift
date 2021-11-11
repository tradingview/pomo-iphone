// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pomo-iphone",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "pomo-iphone",
            targets: ["pomo-iphone", "muparser"]),
    ],
    targets: [
        .target(
            name: "pomo-iphone",
            dependencies: ["muparser"],
            path: "pomo-iphone",
            publicHeadersPath: ""
        ),
        .target(
            name: "muparser",
            path: "vendor/muparser",
            exclude: ["samples"]
        )
    ]
)
