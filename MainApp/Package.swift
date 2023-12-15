// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// MainApp/Package.swift

import PackageDescription

let package = Package(
    name: "MainApp",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .executable(name: "MainApp", targets: ["MainApp"]),
    ],
    dependencies: [
        .package(path: "../Package1"),
        .package(path: "../Package2"),
    ],
    targets: [
        .executableTarget(
            name: "MainApp",
            dependencies: [
                "Package1",
                "Package2",
            ]
        ),
    ]
)
