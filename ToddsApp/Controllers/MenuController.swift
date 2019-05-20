//
//  MenuController.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/4/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//
import UIKit

private let reuseIdentifier = "MenuOptionCell"

class MenuController: UIViewController {
    
    // MARK: - Properties
    var tableView: UITableView!
    var delegate: HomeControllerDelegate?
    var menuDelegate: MenuControllerDelegate?
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        addGradient()
    }

    // MARK: - Handlers
    private var gradient: CAGradientLayer!
    
    private func addGradient(){
        let firstColor = UIColor.init(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        let secondColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        gradient = CAGradientLayer()
        gradient.colors = [firstColor.cgColor, secondColor.cgColor]
        self.tableView.layer.insertSublayer(gradient, at: 0)
    }
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MenuOptionsCell.self, forCellReuseIdentifier: reuseIdentifier)
   tableView.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
 //   #colorLiteral(red: 0.9403156638, green: 0.7390406728, blue: 0.7834907174, alpha: 1) // changes all of the view
        
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
        
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}
extension MenuController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier , for: indexPath) as! MenuOptionsCell
        
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.image
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        if indexPath.row == 0 {
        delegate?.handleMenuToggle(forMenuOption: menuOption, menuCategories: .events)
        }
        if indexPath.row == 1 {
            delegate?.handleMenuToggle(forMenuOption: menuOption, menuCategories: .profile)
        }
        if indexPath.row == 2 {
            delegate?.handleMenuToggle(forMenuOption: menuOption, menuCategories: .email)
        }
        if indexPath.row == 3 {
            delegate?.handleMenuToggle(forMenuOption: menuOption, menuCategories: .reminders)
        }
    }
}
