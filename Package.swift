// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "IceCream",
    platforms: [
        .macOS(.v10_14), .iOS(.v12), .tvOS(.v12), .watchOS(.v5)
    ],
    products: [
        .library(
            name: "IceCream",
            targets: ["IceCream"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/realm/realm-cocoa", 
            from: "10.5.1"
        )
    ],
    targets: [
        .target(
            name: "IceCream",
            dependencies: ["RealmSwift", "Realm"],
            path: "IceCream",
            sources: ["Classes"])
    ],
    swiftLanguageVersions: [.v5]
)
