print("Hello, world!")

import Vapor

let drop = Droplet()

drop.get("/hello") { _ in
  return "Hello Vapor"
} //      /hello

drop.get("hi", String.self) { request, name in
  return "Hi, \(name)."
} //    /hi/string

drop.get("hey") { req in
  return "Hey!"
}

drop.get("users", Int.self) { request, userId in
  return "You requested User #\(userId)"
}

drop.run()
