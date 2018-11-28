//
//  DrawerViewController.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 24/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class DrawerViewController: UIViewController {

    @IBOutlet weak var itemTableView: ItemTableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var dragView: UIView!
    
    var delegate: DrawerViewControllerDelegate?
    var searchBarDelegate: UISearchBarDelegate?
    
    var editableViews = [ItemView]()
    var tableViewCellData: [[ItemCellData]] = [[]]
    var fullData: [[ItemCellData]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchBar.delegate = self
        dragView.layer.cornerRadius = dragView.frame.height / 2
        
        view.layer.cornerRadius = 13
        view.clipsToBounds = true
        
        setupItemTableView()
        createTableViewData()
    }
}
