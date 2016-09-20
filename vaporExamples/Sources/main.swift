print("Hello, world!")

let drop = Droplet()

drop.get("/hello") { _ in
  return "Hello Vapor"
}

drop.get("hi", String) { request, name in}
  return "Hi, \(name)."
}

drop.run()
