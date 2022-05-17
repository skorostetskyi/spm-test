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
        .package(name: "Lottie", url: "https://github.com/airbnb/lottie-ios.git", from: "3.2.1")  
    ],
    targets: [
        .binaryTarget(name: "Passbase",
                      url: "https://button.passbase.com/__ios/dev/Passbase_2.13.3.zip",
                      checksum: "f2dba2bf148fd4faf9f4d073e042e13721de2cc1731b664f566d881e642c654c"),
        .binaryTarget(name: "Microblink",
                      url: "https://button.passbase.com/__ios/Microblink_5.16.1.zip",
                      checksum: "33af45af2820e2bc0ff929ade3714c09c923ed03a1606d5219e16b9f87ddeeed"),
        .target(name: "PassbaseTargets",
                dependencies: [
                    .target(name: "Passbase", condition: .when(platforms: .some([.iOS]))),
                    .target(name: "Lottie", condition: .when(platforms: .some([.iOS]))),
                    .target(name: "Microblink", condition: .when(platforms: .some([.iOS])))
                ],
                path: "PassbaseTargets"
        )
    ]
)
