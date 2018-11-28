//
//  TableViewDelegate:Datasource Methods.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

// MARK: - TableViewDataSource and Delegate Methods
extension DrawerViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewCellData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewCellData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! ItemCell
        
        cell.setup(withData: tableViewCellData[indexPath.section][indexPath.row])
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func reloadTableViewWithData() {
        itemTableView.reloadData()
    }
    
}
