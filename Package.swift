// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "HelloSwiftGUI",
    // Using macOS 11.0+ (Big Sur) is generally recommended for robust SwiftUI desktop features.
    platforms: [.macOS(.v11)], 
    products: [
        .executable(name: "HelloSwiftGUI", targets: ["HelloSwiftGUI"]),
    ],
    targets: [
        .executableTarget(
            name: "HelloSwiftGUI",
            dependencies: []
            // IMPORTANT: With SwiftUI's @main entry point, no manual linker settings are required.
        ),
    ]
)

