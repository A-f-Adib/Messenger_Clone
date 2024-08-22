//
//  ContentView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = contentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                InboxView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
