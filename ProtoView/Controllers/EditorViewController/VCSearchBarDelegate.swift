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
        animateDrawerTo(.full)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print("endediting")
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
        print("search")
        searchBar.endEditing(true)
        animateDrawerTo(.compressed)
    }
}
