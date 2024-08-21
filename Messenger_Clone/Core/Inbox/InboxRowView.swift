//
//  InboxRowView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/3/24.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundColor(.gray)
            VStack(alignment: .leading) {
                Text("Bruce Lee")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("Some text messeges are here")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            HStack {
                Text("Yesterday")
                Image(systemName: "chevron.right")
            }
            .foregroundColor(.gray)
            .font(.footnote)
        }
        .frame(height: 72)
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
