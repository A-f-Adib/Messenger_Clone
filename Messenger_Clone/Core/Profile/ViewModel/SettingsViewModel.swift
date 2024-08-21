//
//  SettingsViewModel.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/4/24.
//

import Foundation
import SwiftUI

enum SettingsViewModel: Int, CaseIterable, Identifiable {
    
    case darkMode
    case activeStatus
    case accessibility
    case privacy
    case notificatios
    
    var title: String {
        switch self {
            
        case .darkMode:
            return "Dark mode"
        case .activeStatus:
            return "Active status"
        case .accessibility:
            return "Accessibility"
        case .privacy:
            return "Privacy"
        case .notificatios:
            return "Notifications"
        }
    }
    
    var imageName: String {
        switch self {
            
        case .darkMode:
            return "moon.circle.fill"
        case .activeStatus:
            return "message.circle"
        case .accessibility:
            return "person.circle.fill"
        case .privacy:
            return "lock.circle.fill"
        case .notificatios:
            return "bell.circle.fill"
        }
    }
    
    var imgBgColor: Color {
        switch self {
            
        case .darkMode:
            return .black
        case .activeStatus:
            return .green
        case .accessibility:
            return .yellow
        case .privacy:
            return .blue
        case .notificatios:
            return .purple
        }
    }
    
    var id: Int { return self.rawValue}
}
