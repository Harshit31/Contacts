//
//  UIView.swift
//  Contacts
//
//  Created by Harshit singhal on 18/07/19.
//  Copyright © 2019 GoJek. All rights reserved.
//

import UIKit


extension UIView {
    
    /// Adding a weak view
    ///
    /// - Parameter type: View type
    /// - Returns: Initilaised View
    func addSubView<T: UIView>(of type: T.Type) -> T {
        let temporaryView = T()
        addSubview(temporaryView)
        return temporaryView
    }
}
