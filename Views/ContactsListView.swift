//
//  ContactsListView.swift
//  Contacts
//
//  Created by Harshit singhal on 18/07/19.
//  Copyright © 2019 GoJek. All rights reserved.
//

import UIKit

class ContactsListView: UIView {

    //MARK: View Attributes
    weak var tableView: UITableView!
    
    
    //MARK: View Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        addTableView()
        addConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: View Setup
    private func addTableView() {
        tableView = addSubView(of: UITableView.self)
        tableView.tableFooterView = UIView()
        tableView.register(ContactsListCell.self, forCellReuseIdentifier: "ContactsListCell")
    }
    
    //MARK: Add Constraints
    private func addConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalTo(safeArea.edges)
        }
    }
}
