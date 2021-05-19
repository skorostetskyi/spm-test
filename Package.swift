// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Passbase",
    products: [
        .library(name: "Passbase",
                 targets: ["Passbase", "Microblink", "ZoomAuthentication"]),
    ],
    targets: [
        .binaryTarget(name: "Passbase",
                      url: "https://button.passbase.com/__ios/Passbase_2.3.0.zip",
                      checksum: "e93ad82f67f58665dee04d8c818e867b5dac90d3e92f74cd597e2cfb28e10b7e"),
        .binaryTarget(name: "Microblink",
                      url: "https://button.passbase.com/__ios/Microblink_5.11.0.zip",
                      checksum: "4583840c2d3cf926830943979c8efc77386265547c0a352d20086fffc2e9ca93"),
        .binaryTarget(name: "ZoomAuthentication",
                      url: "https://button.passbase.com/__zoom/ZoomAuthentication-ios-8.7.2.zip",
                      checksum: "c57bb18f9a05eb10fa6294c4c495532d28aa30e81797e800178062bfad9119a6"),
    ]
)
