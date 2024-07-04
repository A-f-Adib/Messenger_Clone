//
//  ProfileView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/4/24.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //header
            VStack {
                Image("avatar")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                Text("A.f. Adib")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            //List
            
            List {
                Section{
                    ForEach(SettingsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imgBgColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                
                Section {
                    Button("Log Out") {
                        
                    }
                    
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
