// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Microblink",
    products: [
        .library(name: "Microblink", targets: ["Microblink"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "Microblink",
                      url: "https://button.passbase.com/__ios/Microblink_5.11.0.zip",
                      checksum: "4583840c2d3cf926830943979c8efc77386265547c0a352d20086fffc2e9ca93"),
    ]
)
