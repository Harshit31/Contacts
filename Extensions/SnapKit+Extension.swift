//
//  Snapkit.swift
//  Contacts
//
//  Created by Harshit singhal on 18/07/19.
//  Copyright © 2019 GoJek. All rights reserved.
//
import SnapKit

extension UIView {
    
    var safeArea: ConstraintBasicAttributesDSL {
        #if swift(>=3.2)
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.snp
        }
        return self.snp
        #else
        return self.snp
        #endif
    }
}
