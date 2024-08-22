//
//  AuthService.swift
//  Messenger_Clone
//
//  Created by A.F. Adib on 21/8/24.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(withEmail email: String, password: String, fullName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
    
    func singOut() {
        do {
            try Auth.auth().signOut() // signs out from back end
            self.userSession = nil // updates routing logic
            
        } catch {
            print("DEBUG: Failed to signOut with error \(error.localizedDescription)")
        }
    }
}
