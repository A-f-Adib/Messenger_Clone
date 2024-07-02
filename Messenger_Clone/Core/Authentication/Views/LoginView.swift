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
                
                Button {
                    print("forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                    
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                Button {
                    print("Handle login")
                } label: {
                    Text("Login")
                }
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("Or")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("fb")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                NavigationLink {
                    <#code#>
                } label: {
                    <#code#>
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
