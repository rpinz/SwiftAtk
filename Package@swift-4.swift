// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Atk",
    products: [
        .library(
            name: "Atk",
            targets: ["Atk"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/rpinz/CAtk",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftGObject",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "Atk",
            dependencies: ["GLibObject"],
            path: "Sources"),
        .testTarget(
            name: "AtkTests",
            dependencies: ["Atk"])
    ],
    swiftLanguageVersions: [4]
)
