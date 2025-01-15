// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "SwiftCxxInterop",
    targets: [
        .target(name: "CxxCode"),
        .executableTarget(
            name: "SwiftCode",
            dependencies: [.target(name: "CxxCode")],
            swiftSettings: [
                .interoperabilityMode(.Cxx),
            ]
        ),
    ]
)
