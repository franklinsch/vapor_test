import Vapor

let drop = Droplet()

drop.get("hello") { request in
  return "Hello, world!"
}

drop.run()
