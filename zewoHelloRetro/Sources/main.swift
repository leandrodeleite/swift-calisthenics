print("Hello, world!")

import HTTPServer
//import Router

let app = BasicRouter { route in
  route.get("/hello") { request in
    return Response(body: "Hello, Zewo!")
  }
  route.get("/") { request in
    return Response(body: "Zewo")
  }
}

//try Server(app).start()
let server = try Server(port:8080, responder: app)
try server.start()
