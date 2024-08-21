//
//  ChatMessageCell.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/11/24.
//

import SwiftUI


struct ChatMessageCell: View {
    
    let isFromUser : Bool
    
    var body: some View {
        HStack {
            if isFromUser {
                Spacer()
                
                Text("This text is from user")
                    .font(.subheadline)
                    .padding(12)
                    .background(.blue.opacity(0.8))
                    .foregroundColor(.white)
                    .clipShape(ChatBubble(isFromUser: isFromUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
            } else {
                HStack(alignment: .bottom, spacing: 8) {
                    
                    CircularImageView(user: User.MOCK_USER, size: .small)
                    
                    Text("This text is from recipient")
                        .font(.subheadline)
                        .padding(12)
                        .background(.gray.opacity(0.5))
                        .foregroundColor(.black)
                        .clipShape(ChatBubble(isFromUser: isFromUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)
                    
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 9)
    }
}

struct ChatMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatMessageCell(isFromUser: false)
    }
}
