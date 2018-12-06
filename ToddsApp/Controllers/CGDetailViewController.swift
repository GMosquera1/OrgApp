//
//  CGDetailViewController.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 11/28/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class CGDetailViewController: UIViewController {

    @IBOutlet weak var cGImage: UIImageView!
    
    @IBOutlet weak var cGName: UILabel!
    
    
    @IBOutlet weak var cGLocation: UILabel!
    
    @IBOutlet weak var cGBirthday: UILabel!
    
    @IBOutlet weak var cGBio: UITextView!
    
    public var commsDataInfo: CommsData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
updateCGUI()    
       
    }
    
    private func updateCGUI() {
        guard let commsDataInfo = commsDataInfo else {
            fatalError("cell is nil")
        }
        cGImage.image = commsDataInfo.image
        cGName.text = (commsDataInfo.firstName + " " + commsDataInfo.lastName) // 
        cGLocation.text = commsDataInfo.location
        cGBirthday.text = commsDataInfo.birthday
        cGBio.text = commsDataInfo.bio
        
    }
    

}
