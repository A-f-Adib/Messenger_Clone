//
//  User.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/11/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

struct User : Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    let fullName : String
    let email : String
    var profileIamgeURL : String?
    
    var id : String {
        return uid ?? NSUUID().uuidString
    }
}

extension User {
    static let MOCK_USER = User( fullName: "Bruce Lee", email: "bl@gmail.com", profileIamgeURL: "batman")
}
