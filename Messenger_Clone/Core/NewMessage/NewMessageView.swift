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
