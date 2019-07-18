//
//  ContactDetails.swift
//  Contacts
//
//  Created by Harshit singhal on 18/07/19.
//  Copyright © 2019 GoJek. All rights reserved.
//

import Foundation


struct ContactDetails: Codable {
    let id: Double
    let firstName: String = ""
    let lastName: String = ""
    let profilePictureURL: String?
    let favorite: Bool = false
    let phoneNumber: String = "Not available"
    let email: String = "Not available"
    let createdAt: String
    let updatedAt: String
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case profilePictureURL = "profile_pic"
        case favorite
        case phoneNumber = "phone_number"
        case email
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        
    }
    
    var fullName : String {
        return firstName + " " + lastName
    }
}
