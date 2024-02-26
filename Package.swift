// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VisionCCLibrary",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "VisionCCLibrary",
            targets: ["VisionCCiOSSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift.git", .upToNextMinor(from: "16.1.0")),
        .package(url: "https://github.com/pujiaxin33/JXSegmentedView.git", .upToNextMinor(from: "1.2.7")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.7.1")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.5.0")),
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.6.0")),
        .package(url: "https://github.com/realm/realm-swift.git", .upToNextMajor(from: "10.47.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        //.binaryTarget(name: "VisionCCiOSSDK", path: "VisionCCiOSSDK.xcframework"),
        .target(
            name: "VisionCCLibrary",
            dependencies: [
                .product(name: "socket.io-client-swift", package: "socket.io-client-swift"),
                .product(name: "JXSegmentedView", package: "JXSegmentedView"),
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RealmSwift", package: "RealmSwift")
            ]
        ),
        .binaryTarget(
            name: "VisionCCiOSSDK", 
            url: "https://vcc-sdk.vxish.cn/VisionCCiOSSDK.xcframework.zip",
            checksum: "fc15cdfb1a4ae662240c989a907fd8347cff506e3cbe5376d20b407e34c6fdca"
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]    
)
