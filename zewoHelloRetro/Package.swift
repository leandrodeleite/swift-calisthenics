import PackageDescription

let package = Package(
    name: "zewoHelloRetro",
    dependencies: [
      .Package(url: "https://github.com/Zewo/HTTPServer.git", majorVersion: 0, minor: 13),
    ]
)
