//
//  MenuOptionsCellTableViewCell.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 4/4/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class MenuOptionsCell: UITableViewCell {
    // Mark: - Properties
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.backgroundColor = .clear 
        return iv
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white // changes font
        label.font = UIFont.systemFont(ofSize: 18)
        label.font = UIFont.init(name: "Zapfino", size: 18)
        return label
        
    }()
        // Mark: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear //changes to box
        selectionStyle = .gray
        
        addSubview(iconImageView)
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        descriptionLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 12).isActive = true
        
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("dsada")
    }
        // Mark: - Handlers
    
}
