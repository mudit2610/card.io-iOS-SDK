// swift-tools-version:5.9
import PackageDescription
let package = Package(
    name: "CardIO",
    platforms: [.iOS(.v15)],
    products: [ .library(name: "CardIO", targets: ["CardIO"]) ],
    targets: [
        .target( name: "CardIO", path: "Sources/CardIO", publicHeadersPath: ".",
                 linkerSettings: [ .linkedFramework("Accelerate"), .linkedFramework("AVFoundation"), .linkedFramework("AudioToolbox"), .linkedFramework("CoreMedia"), .linkedFramework("MobileCoreServices"), .linkedLibrary("c++") ] ) ] )
