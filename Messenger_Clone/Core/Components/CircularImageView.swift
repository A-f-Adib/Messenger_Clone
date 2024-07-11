//
//  CircularImageView.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/11/24.
//

import SwiftUI

enum profileImageSize {
    case xxSmall
    case xSamll
    case small
    case medium
    case large
    case xLarge
    
    var dimention : CGFloat {
        switch self {
        case .xxSmall:
            return 28
        case .xSamll:
            return 32
        case .small:
            return 40
        case .medium:
            return 56
        case .large:
            return 64
        case .xLarge:
            return 80
        }
    }
}

struct CircularImageView: View {
    let user : User
    var body: some View {
        if let imageURL = user.profileIamgeURL {
            Image(imageURL)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.gray)
        }
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(user: User.MOCK_USER)
    }
}
