// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "YoutubeDL-iOS",
    platforms: [.iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "YoutubeDL",
            targets: ["YoutubeDL"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rocksta/FFmpeg-iOS.git", from: "0.0.5"),
        .package(url: "https://github.com/pvieito/PythonKit.git", from: "0.3.1"),
        .package(url: "https://github.com/rocksta/Python-iOS.git", from: "0.1.1-b"),
    ],
    targets: [
        .target(
            name: "YoutubeDL",
            dependencies: ["Python-iOS", "PythonKit", "FFmpeg-iOS"]),
        .testTarget(
            name: "YoutubeDL_iOSTests",
            dependencies: ["YoutubeDL"]),
    ]
)
