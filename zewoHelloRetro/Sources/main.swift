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

try Server(app).start()
