// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "Passbase",
    products: [
        .library(name: "Passbase",
                 targets: ["Passbase", "Microblink"]),
    ],
    targets: [
        .binaryTarget(name: "Passbase",
                      url: "https://button.passbase.com/__ios/dev/Passbase_2.13.5.zip",
                      checksum: "9869d628c6518e3c61ef536a3cce9e39b92a96f441168cafe502b30a879abe0f"),
        .binaryTarget(name: "Microblink",
                      url: "https://button.passbase.com/__ios/Microblink_5.16.1.zip",
                      checksum: "33af45af2820e2bc0ff929ade3714c09c923ed03a1606d5219e16b9f87ddeeed"),
    ]
)
