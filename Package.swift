import PackageDescription

let package = Package(
    name: "Atk",
    dependencies: [
        .Package(url: "https://github.com/rpinz/CAtk", majorVersion: 1),
        .Package(url: "https://github.com/rpinz/SwiftGObject", majorVersion: 2)
    ],
    swiftLanguageVersions: [3, 4]
)
