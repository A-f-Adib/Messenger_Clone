//
//  ChatBubble.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/11/24.
//

import SwiftUI

struct ChatBubble: Shape {
    
    let isFromUser : Bool

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: [
                                    .topLeft,
                                    .topRight,
                                    isFromUser ? .bottomLeft : .bottomRight
                                ],
                                cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(isFromUser: true)
    }
}
