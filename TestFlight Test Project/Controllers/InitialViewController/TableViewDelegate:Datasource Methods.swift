//
//  TableViewDelegate:Datasource Methods.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

// MARK: - TableViewDataSource and Delegate Methods
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewCellData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewCellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! ItemCell
        
        cell.setupWithData(tableViewCellData[indexPath.section][indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        createEditableView(frame: CGRect(origin: CGPoint(x: (view.frame.width / 2) - 50, y: 200), size: CGSize(width: 100, height: 100)), cornerRadius: 20, fillColor: .red)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return "Header \(section)"
    //    }
    
    //    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //        let label = UILabel(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 20)))
    //        label.text = "Hello"
    //        return label
    //    }
}
