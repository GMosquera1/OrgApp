//
//  MenuOption.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/5/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    case Email
    case Events
    case People
    case Reminders
    
    var description: String {
        switch self {
        case .Events: return "Events"
        case .Email: return "Email"
        case .People: return "People"
        case .Reminders: return "Reminders"
            
        }
    }
    
    var image: UIImage  {
        switch self {
        case .Events: return #imageLiteral(resourceName: "icons8-calendar-minus-80") ?? UIImage()
        case .Email: return #imageLiteral(resourceName: "icons8-secured-letter-80") ?? UIImage()
        case .People: return #imageLiteral(resourceName: "icons8-crowd-filled-50") ?? UIImage()
        case .Reminders: return #imageLiteral(resourceName: "icons8-idea-100") ?? UIImage()
            
        }
    }
}
