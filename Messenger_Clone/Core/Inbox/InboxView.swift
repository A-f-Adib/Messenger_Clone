//
//  InboxView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/3/24.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                        
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
