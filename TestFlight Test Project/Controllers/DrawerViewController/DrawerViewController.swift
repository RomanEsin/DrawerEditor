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
    
    var delegate: DrawerViewControllerDelegate?
    
    var editableViews = [ItemView]()
    var tableViewCellData: [[ItemCellData]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupItemTableView()
        createCellData()
    }
    
    func setupItemTableView() {
        itemTableView.delegate = self
        itemTableView.dataSource = self
        
        itemTableView.separatorStyle = .singleLine
        itemTableView.delaysContentTouches = false
        itemTableView.isScrollEnabled = true
    }
    
    // MARK: - Creating data for cells
    func createCellData() {
        let item1Data = ItemCellData(imageURL: "compass", title: "Compass", description: "Shows your direction")
        let item2Data = ItemCellData(imageURL: "upload", title: "Upload", description: "Uploads files to wherewhere you like")
        let item3Data = ItemCellData(imageURL: "face_ID", title: "Face ID Tester", description: "Test Face ID, yes just for that cool animation")
        let item4Data = ItemCellData(imageURL: "combo_chart", title: "Charts", description: "Create charts")
        let item5Data = ItemCellData(imageURL: "coins", title: "Coins", description: "Gives some money for ya")
        let item6Data = ItemCellData(imageURL: "twitter", title: "Twitter", description: "Post some news!")
        
        tableViewCellData[0].append(item1Data)
        tableViewCellData[0].append(item2Data)
        tableViewCellData[0].append(item3Data)
        tableViewCellData[0].append(item4Data)
        tableViewCellData[0].append(item5Data)
        tableViewCellData[0].append(item6Data)
    }
}
