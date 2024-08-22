//
//  LoginViewModel.swift
//  Messenger_Clone
//
//  Created by A.F. Adib on 21/8/24.
//

import SwiftUI

class loginViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
