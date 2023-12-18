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
        .library(name: "Package1", targets: ["Package1"]),
        .library(name: "Package2", targets: ["Package2"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Package1", dependencies: [], path: "Package1/Sources/Package1"),
        .target(name: "Package2", dependencies: [], path: "Package2/Sources/Package2")
    ]
)
