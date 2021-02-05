//
//  Map.swift
//  tableview
//
//  Created by Zach Gibson on 2/5/21.
//

import Foundation
import React

@objc(TableView)
class TableView: RCTViewManager {
  override func view() -> UIView! {
    let tableViewController = TableViewController(style: .plain)
    tableViewController.tableView.reloadData()
    return tableViewController.tableView
  }
  
  override class func requiresMainQueueSetup() -> Bool {
    return true
  }
}
