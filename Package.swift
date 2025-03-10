// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "kitsune-kawaii-mcp-server",
    platforms: [.macOS(.v15)],
    dependencies: [
        .package(url: "https://github.com/loopwork-ai/mcp-swift-sdk", from: "0.3.0")
    ],
    targets: [
        .executableTarget(
            name: "kitsune-kawaii-mcp-server",
            dependencies: [
                .product(name: "MCP", package: "mcp-swift-sdk"),
            ]
        ),
    ]
)
