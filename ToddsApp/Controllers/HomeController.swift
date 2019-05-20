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
    
    
    let attrs = [
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.font: UIFont(name: "Georgia-Italic", size: 28)!
    ]
    
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
        navigationController?.navigationBar.titleTextAttributes = attrs
        navigationItem.title = "Welcome"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "hamburgerMenu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
    func eventsPageOn() {
        let events = DiscoverView.init()
        contentView.removeFromSuperview()
        contentView = UIView.init(frame: UIScreen.main.bounds)
        contentView.addSubview(events)
        view.addSubview(contentView)
           self.navigationItem.title = "Events"
//self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Events", style: .plain, target: nil, action: nil)
    }
    
    
    func emailPageOn() {
        let emails = RedView.init()
        contentView.removeFromSuperview()
        contentView = UIView.init(frame: UIScreen.main.bounds)
        contentView.addSubview(emails)
        view.addSubview(contentView)
        self.navigationItem.title = "Draft Email"
              self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Draft Email", style: .plain, target: nil, action: nil)
    }
    func peoplePageOn() {
        let profile = NewView.init()
        contentView.removeFromSuperview()
        contentView = UIView.init(frame: UIScreen.main.bounds)
        contentView.addSubview(profile)
        view.addSubview(contentView)
           self.navigationItem.title = "People"
              self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "People", style: .plain, target: nil, action: nil)
    }
    func remindersPageOn() {
        let remindersPage = inheritView.init()
        contentView.removeFromSuperview()
           self.navigationItem.title = "Reminders"
        contentView = UIView.init(frame: UIScreen.main.bounds)
        contentView.addSubview(remindersPage)
        view.addSubview(contentView)
    }
    
    
}
