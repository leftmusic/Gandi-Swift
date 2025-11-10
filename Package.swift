// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Gandi-Swift",
    platforms: [
        .macOS("12.0")
    ],
    dependencies: [
        // 添加必要的依赖
    ],
    targets: [
        .executableTarget(
            name: "Gandi-Swift",
            dependencies: [],
            path: "Sources",
            resources: [
                .copy("Pages")
            ]
        )
    ]
)
