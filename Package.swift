// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PassbaseSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "PassbaseSDK", 
            targets: ["PassbaseSDK"]),
    ],
    dependencies: [
        .package(
            name: "Passbase", 
            url: "https://github.com/skorostetskyi/passbase-sdk-sp.git", 
            .exact("2.13.2")),
        .package(
            name: "Lottie", 
            url: "https://github.com/airbnb/lottie-ios.git", 
            from: "3.2.1"),  
        .package(
            name: "Microblink", 
            url: "https://github.com/skorostetskyi/microblink-sdk-sp.git", 
            .exact("5.16.0")),
    ],
    targets: [
        .target(
            name: "PassbaseSDK",
            dependencies: ["Passbase", "Lottie", "Microblink"]
        ),
    ]
)
