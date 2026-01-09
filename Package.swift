// swift-tools-version:5.9
import PackageDescription
let package = Package(
   name: "CardIO",
   platforms: [
       .iOS(.v13)
   ],
   products: [
       .library(
           name: "CardIO",
           targets: ["CardIO"]
       )
   ],
   targets: [
       .target(
           name: "CardIO",
           publicHeadersPath: "include",
           cSettings: [
               .headerSearchPath("include")
           ],
           linkerSettings: [
               .linkedLibrary("c++"),
               .linkedFramework("Accelerate"),
               .linkedFramework("AudioToolbox"),
               .linkedFramework("AVFoundation"),
               .linkedFramework("CoreGraphics"),
               .linkedFramework("CoreMedia"),
               .linkedFramework("CoreVideo"),
               .linkedFramework("Foundation"),
               .linkedFramework("MobileCoreServices"),
               .linkedFramework("OpenGLES"),
               .linkedFramework("QuartzCore"),
               .linkedFramework("Security"),
               .linkedFramework("UIKit")
           ]
       )
   ]
)
