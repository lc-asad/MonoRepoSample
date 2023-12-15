// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MonoRepo",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MonoRepo",
            targets: ["MonoRepo"]),
        .library(
            name: "Package1",
            targets: ["MonoRepo"]),
        .library(
            name: "Package2",
            targets: ["MonoRepo"]),
    ],
    dependencies: [
        .package(path: "Package1"),
        .package(path: "Package2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MonoRepo",
            dependencies: [
                "Package1",
                "Package2",
            ]),
        .testTarget(
            name: "MonoRepoTests",
            dependencies: ["MonoRepo"]),
    ]
)
