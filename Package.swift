// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Cheers",
    // platforms: [.iOS("8.0"), .macOS("10.13"), .tvOS("9.2")],
    products: [
        .library(name: "SimpleImageViewer", targets: ["SimpleImageViewer"])
    ],
    targets: [
        .target(
            name: "SimpleImageViewer",
            path: "ImageViewer"
        )
    ]
)
