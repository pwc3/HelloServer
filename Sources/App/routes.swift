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

    app.post("signup") { req in
        try SignupInput.validate(content: req)
        let input = try req.content.decode(SignupInput.self)
        print("/signup:", input)
        return HTTPStatus.ok
    }
}
