// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DomainLambda",
    dependencies: [
        .package(url: "https://github.com/awslabs/aws-sdk-swift", from: "0.1.0"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "DomainLambda",
            dependencies: [
                .product(name: "AWSCloudWatchLogs", package: "aws-sdk-swift"),
                .product(name: "AWSLambda", package: "aws-sdk-swift"),
                .product(name: "AWSS3", package: "aws-sdk-swift"),
                .product(name: "Logging", package: "swift-log"),
            ]),
        .testTarget(
            name: "DomainLambdaTests",
            dependencies: ["DomainLambda"]),
    ]
)
