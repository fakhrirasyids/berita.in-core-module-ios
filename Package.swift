// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BeritaInCore",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "BeritaInCore",
            targets: ["BeritaInCore"]),
    ],
    dependencies: [
        // Add RxSwift dependency
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.8.0"),
        
        // Add Alamofire dependency
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.10.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "BeritaInCore",
            dependencies: [
                "RxSwift",
                "Alamofire"
            ]),
    ]
)
