// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "RunCatLocalization",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "RunCatLocalization",
            targets: ["RunCatLocalization"]
        )
    ],
    targets: [
        .target(name: "RunCatLocalization")
    ]
)
