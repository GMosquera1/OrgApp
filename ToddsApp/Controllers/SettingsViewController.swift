//
//  SettingsViewController.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/20/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK - Properties
    
    // MARK - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
        
        @objc func handleDismiss() {
            dismiss(animated: true, completion: nil)
        }
    
    // MARK - Configure UI
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Pop-Up Alert"
        navigationController?.navigationBar.barStyle = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "icons8-plus-math-filled-30").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
}
