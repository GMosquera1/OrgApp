//
//  RedView.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/8/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import Foundation
import UIKit


class RedView: UIView {
    
    let placeholderText = "RED SCREEN"
    public lazy var toDoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont(name: "thonburi", size: 20)
        label.text = "Enter Reminder"
        return label
    }()
    
    public lazy var newItemTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        textView.textColor = .white
        textView.text = placeholderText
        return textView
    }()
    
    public lazy var toggles: UIPageControl = {
        let toggle = UIPageControl()
        toggle.isUserInteractionEnabled = true
        toggle.numberOfPages = 2
        toggle.currentPage = 1
        toggle.currentPageIndicatorTintColor = .blue
        toggle.updateCurrentPageDisplay()
        toggle.pageIndicatorTintColor = .lightGray
        return toggle
    }()
    
    public lazy var addNoteButton: UIButton = {
        let addButton = UIButton()
        addButton.setTitle("Red Screen", for: .normal)
        addButton.setTitleColor(.black, for: .normal)
        addButton.titleLabel?.font = UIFont.init(name: "thonburi", size: 18)
        addButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        //        addButton.addTarget(self, action: #selector(addNewNote), for: .touchUpInside)
        return addButton
    }()
    
    public lazy var swipeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        label.font = UIFont(name: "thonburi", size: 18)
        label.text = "Swipe to Add Event"
        return label
    }()
    
    
    override init(frame: CGRect){ super.init(frame: UIScreen.main.bounds)
        commonInit()
        self.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    private func commonInit(){
        setConstraints()
    }
    
    func setConstraints() {
        addSubview(toDoLabel)
        addSubview(newItemTextView)
        addSubview(addNoteButton)
        addSubview(toggles)
        addSubview(swipeLabel)
        
        
        toDoLabel.translatesAutoresizingMaskIntoConstraints = false
        newItemTextView.translatesAutoresizingMaskIntoConstraints = false
        addNoteButton.translatesAutoresizingMaskIntoConstraints = false
        toggles.translatesAutoresizingMaskIntoConstraints = false
        swipeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            toDoLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50), toDoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11), toDoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11), newItemTextView.topAnchor.constraint(equalTo: toDoLabel.bottomAnchor, constant: 22), newItemTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11), newItemTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11), newItemTextView.heightAnchor.constraint(equalToConstant: 200), addNoteButton.topAnchor.constraint(equalTo: newItemTextView.bottomAnchor, constant: 22), addNoteButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -160), swipeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor), swipeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11), swipeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11),swipeLabel.bottomAnchor.constraint(equalTo: toggles.topAnchor),toggles.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor), toggles.centerXAnchor.constraint(equalTo: self.centerXAnchor)])
        
    }
    
}
