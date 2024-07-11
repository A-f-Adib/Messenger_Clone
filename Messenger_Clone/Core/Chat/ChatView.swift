//
//  ChatView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/11/24.
//

import SwiftUI

struct ChatView: View {
    
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            //header
            
            ScrollView {
                VStack {
                    CircularImageView(user: User.MOCK_USER, size: .xLarge)
                    
                    VStack(spacing: 4) {
                        Text("Bruce Lee")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                 }
                //messages
                
                ForEach(0...15, id: \.self) { message in
                    ChatMessageCell(isFromUser: Bool.random())
                }
                
            }
            
            //message input view
            
            Spacer()
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText)
                    .padding(12)
                    .padding(.trailing)
                    .background(.gray.opacity(0.3))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button {
                    
                } label : {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
            .padding()
        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
