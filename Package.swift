// swift-tools-version: 6.0

import PackageDescription

let swiftSettings: [SwiftSetting] = [
    .enableUpcomingFeature("ExistentialAny"),
]

let package = Package(
    name: "RunCatLocalization",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(
            name: "strings",
            targets: ["RCLStrings"]
        ),
        .library(
            name: "RunCatLocalization",
            targets: ["RunCatLocalization"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.5.0"),
    ],
    targets: [
        .executableTarget(
            name: "RCLStrings",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            swiftSettings: swiftSettings
        ),
        .target(
            name: "RunCatLocalization",
            resources: [.process("Resources")],
            swiftSettings: swiftSettings
        )
    ]
)
