// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SimpleImageViewer",
	defaultLocalization: "en",
	platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "SimpleImageViewer",
            targets: ["SimpleImageViewer"]
        )
    ],
	targets: [
	    .target(
	        name: "SimpleImageViewer",
	        path: "ImageViewer/",
			exclude:["Info.plist"]
	    ),
        .testTarget(
            name: "SimpleImageViewerTests",
            dependencies: ["SimpleImageViewer"],
	        path: "SimpleImageViewerTests/",
			exclude:["Info.plist"]
		)
	]
)