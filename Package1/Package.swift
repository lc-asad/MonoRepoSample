// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package1",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "Package1", targets: ["Package1"]),
        .library(name: "Package2", targets: ["Package2"]),
    ],
    dependencies: [
//        .package(path: "../Package2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Package2",dependencies: [], path: "./Package2/Sources/"),
        .testTarget(
            name: "Package1Tests",
            dependencies: ["Package1"]),
    ]
)
