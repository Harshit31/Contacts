//
//  NetworkManager.swift
//  Contacts
//
//  Created by Harshit Singhal on 18/07/19.
//  Copyright © 2019 GoJek. All rights reserved.
//

import Foundation
import Alamofire
import PromiseKit

extension Alamofire.DataRequest {
    // Return a Promise for a Codable
    public func responseCodable<T: Codable>() -> Promise<T> {
        return Promise { seal in            
            responseData { response in
                switch response.result {
                case let .success(value):
                    let decoder = JSONDecoder()
                    do {
                        seal.fulfill(try decoder.decode(T.self, from: value))
                    } catch let e {
                        seal.reject(e)
                    }
                case let .failure(error):
                    seal.reject(error)
                }
            }
        }
    }
}
