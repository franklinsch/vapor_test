import Vapor

let drop = Droplet()

drop.get("html") { request in
  return try drop.view.make("index.html")
}

drop.get("hello") { request in
  guard let name = request.data["name"]?.string else {
    throw Abort.badRequest
  }
  
  return "Hello \(name)"
}

drop.get("json") { request in
  return try JSON(node: [
    "version": "1.0"
  ])
}

drop.run()
