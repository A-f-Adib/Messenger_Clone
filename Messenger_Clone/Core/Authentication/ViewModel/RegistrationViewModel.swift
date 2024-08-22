//
//  RegistrationViewModel.swift
//  Messenger_Clone
//
//  Created by A.F. Adib on 21/8/24.
//

import SwiftUI

 class registrationViewModel: ObservableObject {
    
     @Published var email = ""
     @Published var password = ""
     @Published var fullName = ""
     
     func createUser() async throws {
         try await AuthService.shared.createUser(withEmail: email, password: password, fullName: fullName)
     }
 }

