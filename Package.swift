// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FileParsers",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FileParsers",
            targets: ["FileParsers"]
        ),
    ],
    dependencies: [
        // .package(url: "https://github.com/swift-langs/Parsing.git", branch: "master"),
        .package(url: "https://github.com/leviouwendijk/Methods.git", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FileParsers",
            dependencies: [
                // .product(name: "Parsing", package: "Parsing"),
                .product(name: "Methods", package: "Methods"),
            ],
        ),
    ]
)
