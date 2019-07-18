//
//  LocalAPIManager.swift
//  Contacts
//
//  Created by Harshit singhal on 18/07/19.
//  Copyright © 2019 GoJek. All rights reserved.
//

import Foundation
import PromiseKit
import Alamofire


struct APIManager {
    
    static let baseURL = "http://gojek-contacts-app.herokuapp.com/"
    static let getContactsURL = "contacts.json"
    
    static func getContactsList() -> Promise<[ContactsList]> {
        let requestURL = baseURL + getContactsURL
        return AF.request(requestURL, method: .get).responseCodable()
    }

    static func getContactDetails(for url: String) -> Promise<ContactDetails> {
        let requestURL = baseURL + url
        return AF.request(requestURL, method: .get).responseCodable()
    }
}

