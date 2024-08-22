//
//  ContentViewModel.swift
//  Messenger_Clone
//
//  Created by A.F. Adib on 22/8/24.
//

import Firebase
import FirebaseAuth
import Combine

class contentViewModel : ObservableObject {
    @Published var userSession : FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
       
      setupSubscribers()
    }
    
    private func setupSubscribers() {
        
        AuthService.shared.$userSession.sink { [weak self] userSessionFromAuthService in
            self?.userSession = userSessionFromAuthService
        }.store(in: &cancellables)
    }
}
