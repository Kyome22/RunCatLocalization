// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "RunCatLocalization",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(
            name: "strings",
            targets: ["RCLStrings"]
        ),
        .library(
            name: "RunCatLocalization",
            targets: ["RunCatLocalization"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", exact: "1.3.0")
    ],
    targets: [
        .executableTarget(
            name: "RCLStrings",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .target(
            name: "RunCatLocalization",
            resources: [.process("Resources")]
        )
    ]
)
