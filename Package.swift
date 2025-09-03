// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UIKitTools",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "UIKitTools",
            targets: ["UIKitTools"]
        ),
    ],
    targets: [
        .target(
            name: "UIKitTools",
            path: "Sources/UIKitTools"
        ),
        .testTarget(
            name: "UIKitToolsTests",
            dependencies: ["UIKitTools"],
            path: "Tests/UIKitToolsTests"
        ),
    ]
)