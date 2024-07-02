//
//  LoginView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/2/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Image("messenger")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                VStack{
                    TextField("Enter your mail" , text: $email)
                    SecureField("Enter your password", text: $password)
                }
            }
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
