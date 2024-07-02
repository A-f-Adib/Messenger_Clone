//
//  ActiveNowView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/3/24.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (spacing: 32) {
                ForEach(0...10, id: \.self) { user in
                    VStack {
                        ZStack(alignment: .bottomTrailing)  {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 64, height: 64)
                                .foregroundColor(.gray)
                            
                            ZStack{
                                Circle()
                                    .fill(.white)
                                    .frame(width: 18, height: 18)
                                Circle()
                                    .fill(.green)
                                    .frame(width: 12, height: 12)
                            }
                        }
                        Text("Bruce")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                    }
                }
            }
            .padding()
        }
        .frame(height: 50)
    }
}

struct ActiveNowView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveNowView()
    }
}
