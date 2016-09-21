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
/*
//import HTTP

drop.get("/") { request in
  return try drop.view("welcome.html")
} //    Resources/Views/welcome.html

/vaporExamples/Sources/main.swift:25:23: error: cannot call value of non-function type 'ViewRenderer'
 return try drop.view("welcome.html")
            ~~~~~~~~~^
<unknown>:0: error: build had 1 command failures
*/

drop.run()
