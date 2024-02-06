// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PangleMediation",
    products: [
        .library(
            name: "PangleAdapter",
            targets: ["PangleAdapter"]
        ),
        .library(
            name: "AdsGlobalPackage",
            targets: ["AdsGlobalWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/bytedance/AdsGlobalPackage", exact: "5.4.1-release.1"),
    ],
    targets: [
        .binaryTarget(
            name: "PangleAdapter",
            path: "./PangleAdapter.xcframework"
        ),
        .target(
            name: "AdsGlobalWrapper",
            dependencies: [
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ]
        )
    ]
)
