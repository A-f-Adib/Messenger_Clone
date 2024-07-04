//
//  SettingsViewModel.swift
//  Messenger_Clone
//
//  Created by A.f. Adib on 7/4/24.
//

import Foundation

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
    
    var id: Int { return self.rawValue}
}
