import Vapor

struct SignupOutput: Content {
    var id: UUID
    var name: String
    var email: String
}
