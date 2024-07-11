//
//  InboxView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/3/24.
//

import SwiftUI

struct InboxView: View {
    @State private var showMessageView = false
    @State private var user = User.MOCK_USER
    
    var body: some View {
        NavigationView{
            ScrollView {
                ActiveNowView()
                
                List {
                    ForEach(0...10, id: \.self) { message in
                        InboxRowView()
                    }
                }
                .padding(.top, 30)
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            .fullScreenCover(isPresented: $showMessageView,  content: {
                NewMessageView()
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        NavigationLink {
                            ProfileView()
                        } label: {
                            Image(user.profileIamgeURL ?? "")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                        }

                        
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showMessageView.toggle()
                        
                    } label : {
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color.gray)
                    }
                }
            }
            .padding(.top, 0)
        }
        
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
