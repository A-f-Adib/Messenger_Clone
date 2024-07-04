//
//  ProfileView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/4/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //header
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.gray)
                
                Text("Bruce Lee")
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
