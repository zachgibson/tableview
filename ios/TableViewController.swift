//
//  TableViewController.swift
//  tableview
//
//  Created by Zach Gibson on 2/5/21.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
  override init(style: UITableView.Style) {
    super.init(style: style)
    
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = "Yeet"
    return cell
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
}
