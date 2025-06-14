// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "FFAudio",
    products: [
        .library(
            name: "FFAudio",
            targets: ["FFAudio"]),
    ],
    targets: [
        .binaryTarget(name: "FFAudio", path: "./FFAudio.xcframework")
    ]
)
