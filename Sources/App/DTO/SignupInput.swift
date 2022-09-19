import Vapor

struct SignupInput: Content {
    var name: String
    var email: String
    var password: String
    var passwordAgain: String
}

extension SignupInput: Validatable {
    static func validations(_ validations: inout Validations) {
        validations.add("name", as: String.self, is: !.empty)
        validations.add("email", as: String.self, is: .email)
    }

    func afterDecode() throws {
        guard password == passwordAgain else {
            throw Abort(.badRequest, reason: "Passwords do not match")
        }
    }
}
