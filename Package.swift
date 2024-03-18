// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SwiftStomp",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "SwiftStomp", targets: ["SwiftStomp"])
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", .upToNextMinor(from: "4.0.8")),
        .package(url: "https://github.com/ashleymills/Reachability.swift", .upToNextMinor(from: "5.2.1"))
    ],
    targets: [
        .target(
            name: "SwiftStomp",
            dependencies: ["Starscream",
                           "Reachability"],
            path: "SwiftStomp"
        )
    ]
)

