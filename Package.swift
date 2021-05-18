// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//let package = Package(
//    name: "ZoomAuthentication",
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "ZoomAuthentication",
//            targets: ["ZoomAuthentication"]),
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "ZoomAuthentication",
//            dependencies: []),
//        .testTarget(
//            name: "ZoomAuthenticationTests",
//            dependencies: ["ZoomAuthentication"]),
//    ]
//)

let package = Package(
    name: "ZoomAuthentication",
    products: [
        .library(name: "ZoomAuthentication", targets: ["ZoomAuthentication"]),
    ],
    dependencies: [],
//    targets: [
//        .binaryTarget(name: "ZoomAuthentication", path: "ZoomAuthentication.xcframework")
//    ]
    targets: [
        .binaryTarget(name: "ZoomAuthentication",
                      url: "https://button.passbase.com/__zoom/ZoomAuthentication-ios-8.7.2.zip",
                      checksum: "c57bb18f9a05eb10fa6294c4c495532d28aa30e81797e800178062bfad9119a6"),
    ]
)
