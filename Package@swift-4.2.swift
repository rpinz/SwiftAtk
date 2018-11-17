// swift-tools-version:4.2

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
            url: "https://github.com/rpinz/SwiftGObject",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "Atk",
            dependencies: ["CAtk","GLibObject"],
            path: "Sources"),
        .testTarget(
            name: "AtkTests",
            dependencies: ["Atk"]),
        .systemLibrary(
            name: "CAtk",
            path: "Library/CAtk",
            pkgConfig: "atk",
            providers: [
                .brew(["libatk1.0"]),
                .apt(["libatk1.0-dev"])
            ])
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)
