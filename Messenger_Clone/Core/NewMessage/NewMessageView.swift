//
//  NewMessageView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/4/24.
//

import SwiftUI

struct NewMessageView: View {
    
    @State private var searchText = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ScrollView {
                TextField("To:", text: $searchText)
                    .frame(height : 44)
                    .padding(.leading)
                    .background(Color.gray.opacity(0.3))
                
                Text("CONTACTS")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(maxWidth : .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0...10, id: \.self) { user in
                    VStack {
                        HStack {
                            CircularImageView(user: User.MOCK_USER, size: .small)
                            
                            Text("Bruce Lee")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                        .padding(.leading)
                        
                        Divider()
                            .padding(.leading)
                    }
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                       dismiss()
                    }
                }
        }
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView()
    }
}
