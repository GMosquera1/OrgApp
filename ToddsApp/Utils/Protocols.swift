//
//  Protocols.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/4/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

protocol HomeControllerDelegate {
    func handleMenuToggle(forMenuOption menuOption: MenuOption?, menuCategories: MenuCategories?)
}

protocol MenuControllerDelegate {
    func discoverPressed()
}
