//
//  SideMenuOptions.swift
//  Rustiko
//
//  Created by Mich balkany on 1/29/24.
//

import Foundation

enum SideMenuOptionsModel: Int, CaseIterable {
    
    case home
    case rewardsCard
    case enterCode
    case locations
    case catering
    case giftCards
    case settings
    
    var title: String {
        switch self {
        case .home:
            return "HOME"
        case .rewardsCard:
            return "REWARDS CARD"
        case .enterCode:
            return "ENTER CODE"
        case .locations:
            return "LOCATIONS"
        case .catering:
            return "CATERING"
        case .giftCards:
            return "GIFT CARDS"
        case .settings:
            return "SETTINGS"
            
        }
    }
    
    var systemImageName: String {
        switch self {
        case .home:
            return "house"
        case .rewardsCard:
            return "qrcode"
        case .enterCode:
            return "rectangle.center.inset.filled.badge.plus"
        case .locations:
            return "mappin.circle"
        case .catering:
            return "fork.knife.circle"
        case .giftCards:
            return "giftcard"
        case .settings:
            return "gearshape"
            
        }
    }
}

extension SideMenuOptionsModel: Identifiable {
    var id: Int { return self.rawValue }
}
