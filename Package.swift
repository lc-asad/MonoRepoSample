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
        .library(name: "MonoRepo", targets: ["MonoRepo"]),
        .library(name: "Package1", targets: ["Package1"]),
        .library(name: "Package2", targets: ["Package2"]),
    ],
    dependencies: [
//        .package(path: "Package1"),
//        .package(path: "Package2")
    ],
    targets: [
        .target(name: "MonoRepo"),
        .target(name: "Package1", dependencies: []),
        .target(name: "Package2", dependencies: [])
    ]
)
