// swift-tools-version:5.0
 import PackageDescription

 let package = Package(
     name: "AnimatedGradientView",
     platforms: [.iOS(.v9)],
     products: [
         .library(name: "AnimatedGradientView", targets: ["AnimatedGradientView"])
     ],
     targets: [
         .target(name: "AnimatedGradientView", path: "AnimatedGradientView/Classes")
     ]
 )
