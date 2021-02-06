//
//  Map.swift
//  tableview
//
//  Created by Zach Gibson on 2/5/21.
//

import Foundation
import React

@objc(TableView)
class TableView: RCTViewManager, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 10
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
      cell.textLabel?.text = "Yeet"
      return cell
  }

  override func view() -> UIView! {
    let view = UIView()
    
    let tableView = UITableView()
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    tableView.dataSource = self
    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    
    view.addSubview(tableView)
    
    return view
  }
  
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }
}
