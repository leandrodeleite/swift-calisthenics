print("Hello, world!")

let drop = Droplet()

drop.get(/hello") { _ in
  return "Hello Vapor"
}

drop.run()
