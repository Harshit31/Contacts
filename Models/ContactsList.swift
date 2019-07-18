//
//  Contacts.swift
//  Contacts
//
//  Created by Harshit singhal on 18/07/19.
//  Copyright © 2019 GoJek. All rights reserved.
//

import Foundation


struct ContactsList: Codable {
    let id: Double
    let firstName: String = ""
    let lastName: String = ""
    let profilePictureURL: String?
    let favorite: Bool = false
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case profilePictureURL = "profile_pic"
        case favorite
        case url
    }
    
    var fullName : String {
        return firstName + " " + lastName
    }
}
