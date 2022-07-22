// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGenericLesson",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .executable(
//            name: "check_lesson",
//            targets: [ "check_lesson" ]),
        .library(
            name: "Lesson_01",
            targets: ["Lesson_01"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .executableTarget(
//            name: "check_lesson",
//            dependencies: [ "Lesson_01" ]),
        .target(
            name: "Lesson_01",
            dependencies: []),
        .testTarget(
            name: "Lesson_01_Tests",
            dependencies: ["Lesson_01"]),
        
        .target(
            name: "Lesson_02",
            dependencies: []),
        .testTarget(
            name: "Lesson_02_Tests",
            dependencies: ["Lesson_02"]),
        

    ]
)
