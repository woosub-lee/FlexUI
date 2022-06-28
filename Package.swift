// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FlexUI",
  platforms: [
    .iOS(.v11),
  ],
  products: [
    .library(
      name: "FlexUI",
      targets: ["FlexUI"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/layoutBox/FlexLayout",
      .upToNextMajor(from: "1.3.0")
    ),
    .package(
      url: "https://github.com/layoutBox/PinLayout",
      .upToNextMajor(from: "1.10.0")
    ),
  ],
  targets: [
    .target(
      name: "FlexUI",
      dependencies: [
        .product(name: "FlexLayout", package: "FlexLayout"),
        .product(name: "PinLayout", package: "PinLayout"),
      ],
      cSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ],
      cxxSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ],
      swiftSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ]
    ),
  ]
)
