
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
//drop.run()

import Foundation
//import Vapor

print("SwiftServerIO -- starting")

//let drop = Droplet()

drop.get("hello") { _ in
  return JSON(["Hello" : "World"])
}

drop.get("anything", "*") { request in
  return "Matches anything after /anything"
} // Fallback /anything ../foo/bar...
/*
drop.get("vapor") { request in
//return Response(redirect: "http://vapor.codes")
//return URLResponse(redirect: "http://vapor.codes")
}
*/
drop.run()
