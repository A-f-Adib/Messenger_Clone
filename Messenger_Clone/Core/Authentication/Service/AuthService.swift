//
//  AuthService.swift
//  Messenger_Clone
//
//  Created by A.F. Adib on 21/8/24.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestoreCombineSwift

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
       loadCurrentUserData()
    }
    
    
    
    func login(withEmail email: String, password: String) async throws {
        
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            loadCurrentUserData()
        } catch {
            print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
        }
    }
    
    
    
    func createUser(withEmail email: String, password: String, fullName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await self.uploadUserDate(email: email, fullName: fullName, id: result.user.uid)
            loadCurrentUserData()
        } catch {
            print("DEBUG: Failed to create user with error: \(error.localizedDescription)")
        }
    }
    
    
    
    func singOut() {
        do {
            try Auth.auth().signOut() // signs out from back end
            self.userSession = nil // updates routing logic
            UserService.shared.currentUser = nil
        } catch {
            print("DEBUG: Failed to signOut with error \(error.localizedDescription)")
        }
    }
    
    
    
    private func uploadUserDate(email: String, fullName: String, id: String) async throws {
        
        let user = User(fullName: fullName, email: email, profileIamgeURL: nil)
        guard let encodedUser = try? Firestore.Encoder().encode(user)
        else {
            return
        }
        try await Firestore.firestore().collection("users").document(id).setData(encodedUser)
    }
    
    
    private func loadCurrentUserData() {
        Task { try await UserService.shared.fetchCurrentUser() }
    }
}
