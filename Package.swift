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
            name: "rcl-strings",
            targets: ["rcl-strings"]
        ),
        .plugin(
            name: "RCLStringsPlugin",
            targets: ["RCLStringsPlugin"]
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
            name: "rcl-strings",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            path: "Sources/RCLStrings",
            swiftSettings: swiftSettings
        ),
        .plugin(
            name: "RCLStringsPlugin",
            capability: .buildTool(),
            dependencies: [.target(name: "rcl-strings")]
        ),
        .target(
            name: "RunCatLocalization",
            resources: [.process("Resources")],
            swiftSettings: swiftSettings,
            plugins: ["RCLStringsPlugin"]
        )
    ]
)
