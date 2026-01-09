// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "card.io-iOS-SDK",
    platforms: [.iOS(.v15)],
    products: [ .library(name: "card.io-iOS-SDK", targets: ["card.io-iOS-SDK"]) ],
    targets: [
        .target( name: "card.io-iOS-SDK", path: "Sources/CardIO", publicHeadersPath: ".",
                 linkerSettings: [ .linkedFramework("Accelerate"), .linkedFramework("AVFoundation"), .linkedFramework("AudioToolbox"), .linkedFramework("CoreMedia"), .linkedFramework("MobileCoreServices"), .linkedLibrary("c++") ] ) ] )
