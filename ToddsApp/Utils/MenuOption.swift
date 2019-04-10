//
//  MenuOption.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/5/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    case Events
    case People
    case Email
    case Reminders
    
    var description: String {
        switch self {
        case .Events: return "Events"
        case .People: return "People"
        case .Email: return "Email"
        case .Reminders: return "Reminders"
            
        }
    }
    
    var image: UIImage  {
        switch self {
        case .Events: return UIImage(named: "icons8-ask-question-25") ?? UIImage()
        case .People: return UIImage(named: "icons8-account-25") ?? UIImage()
        case .Email: return UIImage(named: "icons8-ask-question-25") ?? UIImage()
        case .Reminders: return UIImage(named: "icons8-account-25") ?? UIImage()
            
        }
    }
}
