// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "librlottie",
    platforms: [
        .macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "librlottie",
            targets: ["librlottie"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "librlottie",
            dependencies: [],
            path: ".",
            exclude: ["rlottie/src/wasm", "rlottie/src/lottie/rapidjson/msinttypes", "rlottie/src/vector/pixman", "rlottie/src/vector/vdrawhelper_neon.cpp"],
            sources: ["rlottie/src", "generate"],
            publicHeadersPath: "Xcode",
            cSettings: [.headerSearchPath("generate"), .headerSearchPath("rlottie/inc"), .headerSearchPath("rlottie/src/vector"), .headerSearchPath("rlottie/src/vector/freetype")]
        )
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
