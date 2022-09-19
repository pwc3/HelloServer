import Vapor

struct SignupInput: Content {
    var name: String
    var email: String
    var password: String
    var passwordAgain: String
}
