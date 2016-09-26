import PackageDescription

let package = Package(
    name: "zewoHelloRetro",
    dependencies: [
      .Package(url: "https://github.com/Zewo/HTTPServer.git", majorVersion: 0, minor: 8),
      .Package(url: "https://github.com/Zewo/Router.git",     majorVersion: 0, minor: 8),
    ]
)
