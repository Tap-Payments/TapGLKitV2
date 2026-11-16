// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TapGLKitV2",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "TapGLKitV2", targets: ["TapGLKitV2"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tap-Payments/TapAdditionsKitV2.git", from: "0.0.21"),
        .package(url: "https://github.com/Tap-Payments/TapSwiftFixesV2.git", from: "1.0.4")
    ],
    targets: [
        .target(
            name: "TapGLKitV2",
            dependencies: [
                .product(name: "TapAdditionsKitV2", package: "TapAdditionsKitV2"),
                .product(name: "TapSwiftFixesV2", package: "TapSwiftFixesV2")
            ],
            path: "TapGLKitV2/TapGLKitV2/Source"
        )
    ],
    swiftLanguageVersions: [.v5]
)
