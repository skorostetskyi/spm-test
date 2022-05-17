// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Passbase",
    products: [
        .library(
            name: "Passbase",
            targets: ["PassbaseTargets"]
        ),
    ],
    dependencies: [
        .package(name: "Lottie", url: "https://github.com/airbnb/lottie-ios.git", from: "3.2.1"),
        .package(name: "Passbase", url: "https://github.com/skorostetskyi/passbase-sdk-sp.git", from: "2.13.0"),
        .package(name: "Microblink", url: "https://github.com/skorostetskyi/microblink-sdk-sp.git", from: "5.16.0")
    ],
    targets: [
        .target(name: "PassbaseTargets",
                dependencies: [
                    .product(name: "Lottie", package: "Lottie"),
                    .product(name: "Passbase", package: "Passbase"),
                    .product(name: "Microblink", package: "Microblink"),
                ])
    ]
)
