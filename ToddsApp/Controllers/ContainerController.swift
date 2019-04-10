//
//  ContainerController.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/4/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    // MARK: - Properties
    
    var menuController: MenuController!
    var centerController: UIViewController!
    var discoverView: DiscoverViewController!
    var isExpanded = false
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    override var prefersStatusBarHidden: Bool {
        return isExpanded
    }
    
    // MARK: - Handlers
    func configureHomeController() {
        let homeController = HomeController()
        homeController.delegate = self
        centerController = UINavigationController(rootViewController: homeController)
        
        view.addSubview(centerController.view)
        //addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    
    
    func configureMenuController() {
        if menuController == nil {
            menuController = MenuController()
            //menuController.menuDelegate = self
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            
        }
        
        
    }
    func animatePanel(shouldExpand: Bool, menuOption: MenuOption?) {
        
        if shouldExpand {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            }, completion: nil)
        } else {
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }) { (_) in
                guard let menuOption = menuOption else { return }
                self.didSelectMenuOption(menuOption: menuOption)
            }
            
        }
        animateStatusBar()
    }
    
    func didSelectMenuOption(menuOption: MenuOption) {
        switch menuOption {
            
        case .Discover:
        let discover = DiscoverViewController()
        let discView = DiscoverView()
        let redView = RedView()
//        view.willRemoveSubview(centerController.view)
//            view.addSubview(centerController.view )
//        //view.addSubview(centerController.view)
        
//        view.willRemoveSubview(centerController.view)
//        centerController = UINavigationController.init(rootViewController: discover)
//        view.addSubview(centerController.view)
        case .Moments:
            print("show moment")
        case .Messages:
            print("show messages")
        case .Profile:
            print("show profile")
        }
    }
    
    func animateStatusBar() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.setNeedsStatusBarAppearanceUpdate()
        }, completion: nil)
    }
}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle(forMenuOption menuOption: MenuOption?, menuCategories: MenuCategories?) {
        
        if !isExpanded {
            configureMenuController()
        }
        isExpanded = !isExpanded
        animatePanel(shouldExpand: isExpanded, menuOption: menuOption)
        
        guard let discover = centerController.children.first as? HomeController,
        let menuCategories = menuCategories else { return }
        switch  menuCategories {
        case .discover:
            discover.discoverPageOn()
        case .moments:
            discover.momentsPageOn()
        case .profile:
            discover.profilePageOn()
        default:
            discover.defaultPageOn()
        }
    }
    
   

   
}

