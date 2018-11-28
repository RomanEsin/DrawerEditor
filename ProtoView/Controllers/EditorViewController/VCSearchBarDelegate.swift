//
//  VCSearchBarDelegate.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 24/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        animateDrawer(to: .full)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard searchText != "" else {
            drawerVC.tableViewCellData[0] = drawerVC.fullData[0]
            drawerVC.itemTableView.reloadData()
            return
        }
        
        let filteredData = drawerVC.fullData[0].filter { (cellData) -> Bool in
            return cellData.title.contains(searchText)
        }
        drawerVC.tableViewCellData[0] = filteredData
        
        drawerVC.itemTableView.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        animateDrawer(to: .compressed)
    }
}
