//
//  AuthService.swift
//  Messenger_Clone
//
//  Created by A.F. Adib on 21/8/24.
//

import Foundation
import Firebase

class AuthService {
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(withEmail email: String, password: String, fullName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
}
