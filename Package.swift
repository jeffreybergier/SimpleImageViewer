// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SimpleImageViewer",
	defaultLocalization: "en",
	platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "SimpleImageViewer",
            targets: ["SimpleImageViewer"]
        )
    ],
	targets: [
	    .target(
	        name: "SimpleImageViewer",
	        path: "Sources"
	    ),
        .testTarget(
            name: "SimpleImageViewerTests",
            dependencies: ["SimpleImageViewer"],
	        path: "Tests"
		)
	]
)
