print("Hello, world!")

import HTTPServer

let router = BasicRouter { route in
    route.get("/hello") { request in
        return Response(body: "Hello, world!")
    }
}

let server = try Server(configuration: ["port": 8080], responder: router)
try server.start()
