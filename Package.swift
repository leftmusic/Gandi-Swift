// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Gandi-Swift",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(
            name: "Gandi-Swift",
            targets: ["Gandi-Swift"]
        )
    ],
    dependencies: [
        // 生产环境依赖：添加日志、错误处理等
    ],
    targets: [
        .executableTarget(
            name: "Gandi-Swift",
            dependencies: [],
            path: "Sources",
            resources: [
                .copy("Pages")
            ],
            swiftSettings: [
                // 生产环境优化设置
                .unsafeFlags(["-O"], .when(configuration: .release)), // 发布模式优化
                .define("PRODUCTION", .when(configuration: .release)) // 生产环境标识
            ]
        )
    ]
)
