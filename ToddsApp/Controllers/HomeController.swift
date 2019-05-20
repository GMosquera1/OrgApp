//
//  HomeController.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/4/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    
    var contentView = UIView.init(frame: UIScreen.main.bounds)
    
    var delegate: HomeControllerDelegate?
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(contentView)
        configureNavigationBar()
        
    }
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil, menuCategories: nil)
    }
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.08366606385, green: 0.1091798767, blue: 0.3090982139, alpha: 1)
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Welcome"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "hamburgerMenu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
    func eventsPageOn() {
        let events = DiscoverView.init()
        contentView.removeFromSuperview()
        contentView = UIView.init(frame: UIScreen.main.bounds)
        contentView.addSubview(events)
        view.addSubview(contentView)
           self.navigationItem.title = "Upcoming Events"
//self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Events", style: .plain, target: nil, action: nil)
    }
    
    
    func momentsPageOn() {
        let moments = RedView.init()
        contentView.removeFromSuperview()
        contentView = UIView.init(frame: UIScreen.main.bounds)
        contentView.addSubview(moments)
        view.addSubview(contentView)
        self.navigationItem.title = "Moments"
              self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Moments", style: .plain, target: nil, action: nil)
    }
    func profilePageOn() {
        let profile = NewView.init()
        contentView.removeFromSuperview()
        contentView = UIView.init(frame: UIScreen.main.bounds)
        contentView.addSubview(profile)
        view.addSubview(contentView)
           self.navigationItem.title = "Profile"
              self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Profile", style: .plain, target: nil, action: nil)
    }
    func defaultPageOn() {
        let defaultPage = inheritView.init()
        contentView.removeFromSuperview()
           self.navigationItem.title = "Default"
        contentView = UIView.init(frame: UIScreen.main.bounds)
        contentView.addSubview(defaultPage)
        view.addSubview(contentView)
    }
    
    
}
