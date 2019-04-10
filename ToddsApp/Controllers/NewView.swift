//
//  NewView.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/10/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class NewView: UIView {
    
//        public lazy var newView: UIView = {
//            let nV = UIView()
//            nV.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
//            nV.tintColor = .white
//            return nV
//        }()
    
        override init(frame: CGRect){ super.init(frame: UIScreen.main.bounds)
            commonInit()
            self.backgroundColor = .red
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
        }
        private func commonInit(){
           // setConstraints()
        }
        
//        func setConstraints() {
//            addSubview(newView)
//            newView.translatesAutoresizingMaskIntoConstraints = false
//
//
//            NSLayoutConstraint.activate([
//                newView.topAnchor.constraint(equalTo: topAnchor, constant: 0), newView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0), newView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0), newView.bottomAnchor.constraint(equalTo: bottomAnchor, constant:  0)])
//
//        }
//

}
