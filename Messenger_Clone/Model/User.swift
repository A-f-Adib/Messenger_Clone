//
//  User.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/11/24.
//

import Foundation

struct User : Codable, Identifiable {
    var id = NSUUID().uuidString
    var fullName : String
    var email : String
    var profileIamgeURL : String?
}

extension User {
    static let MOCK_USER = User( fullName: "Bruce Lee", email: "bl@gmail.com", profileIamgeURL: "batman")
}
