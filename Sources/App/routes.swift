import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.group("hello") { group in
        group.get { _ in
            "Hello, World!"
        }

        group.get(":name") { req in
            guard let name = req.parameters.get("name") else {
                throw Abort(.badRequest)
            }
            return "Hello, \(name)!"
        }
    }
}
