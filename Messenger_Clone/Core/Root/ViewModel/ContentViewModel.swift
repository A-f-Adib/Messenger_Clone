//
//  ContentViewModel.swift
//  Messenger_Clone
//
//  Created by A.F. Adib on 22/8/24.
//

import Firebase
import FirebaseAuth

class contentViewModel : ObservableObject {
    @Published var userSession : FirebaseAuth.User?
    
    init() {
        
      
    }
    
    private func setupSubscribers() {
        
    }
}
