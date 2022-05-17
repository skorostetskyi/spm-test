// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "PassbaseSPM",
    products: [
        .library(
            name: "PassbaseSPM",
            targets: ["PassbaseSPM"]
        ),
    ],
    dependencies: [
        .package(name: "Lottie", 
                 url: "https://github.com/airbnb/lottie-ios.git", 
                 .upToNextMajor(from: "3.2.1")),
        .package(name: "Passbase",
                 url: "https://github.com/skorostetskyi/passbase-sdk-sp.git",
                 .upToNextMajor(from: "2.13.0")),
        .package(name: "Microblink",
                 url: "https://github.com/skorostetskyi/microblink-sdk-sp.git",
                 .upToNextMajor(from: "5.16.0")),
    ],
    targets: [
        .target(name: "PassbaseSPM", dependencies: ["Passbase", "Microblink", "Lottie"])
    ]
)
