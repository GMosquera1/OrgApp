//
//  CommsData.swift
//  ToddsApp
//
//  Created by Genesis Mosquera on 11/28/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
import UIKit
//initially modeled after GOT but tried adapting some of the prototype things to the new recipe app which we had just worked on
//switching to structs because class wasnt working so I thought I'd try it
struct CommsData {
    let firstName: String
    let lastName: String
    let location: String
    let birthday: String
    let bio: String
    let image: UIImage
//    init(name: String, location: String, birthday: String, bio: String, image: String){
//        self.name = name
//        self.location = location
//        self.birthday = birthday
//        self.bio = bio
//        self.image = image

static func getData() -> [CommsData] {
    return [
        CommsData(firstName: "Kwabena", lastName: "Abboa-Offei", location: "Manhattan", birthday: "April 22, 1975", bio: "Leadership", image: UIImage(named: "001")!), CommsData(firstName: "Anu", lastName: "Awonusi", location: "Manhattan", birthday: "July 31, 1997", bio: "Leadership", image: UIImage(named: "002")!), CommsData(firstName: "Abena", lastName: "Boafo", location: "Manhattan", birthday: "December 22,1987", bio: "Leadership", image: UIImage(named: "001")!), CommsData(firstName: "Syd", lastName: "Burtner", location: "Manhattan", birthday: "November 22, 1965", bio: "Ministry Active", image: UIImage(named: "004")!), CommsData(firstName: "Sincere", lastName: "Cardona", location: "Manhattan", birthday: "May 25, 1991", bio: "Leadership", image: UIImage(named: "005")!), CommsData(firstName: "Rayna", lastName: "Chang", location: "Manhattan", birthday: "January 15, 1993", bio: "Leadership", image: UIImage(named: "001")!),
    
    ]
}

}
