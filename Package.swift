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
    dependencies: [
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", from: "2.1.1")
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
