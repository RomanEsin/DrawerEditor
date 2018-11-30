//
//  DrawerVCSearchBarDelegate.swift
//  ProtoView
//
//  Created by Roman Esin on 24/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension DrawerViewController: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBarDelegate?.searchBarTextDidBeginEditing!(searchBar)
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBarDelegate?.searchBarTextDidEndEditing!(searchBar)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchBarDelegate?.searchBar!(searchBar, textDidChange: searchText)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBarDelegate?.searchBarSearchButtonClicked!(searchBar)
    }
}
