//
//  ViewController.swift
//  TestFlight Test Project
//
//  Created by MariaEsina on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itemTableView: ItemTableView!
    var editableViews = [EditableView]()
    
    var tableViewCellData: [[ItemCellData]] = [[], []]
    var animations: [UITableView.RowAnimation] = [.automatic, .bottom, .left, .middle, .right, .fade]
    var animationNum = 0
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupItemTableView()
        
        let item1Data = ItemCellData(imageURL: "compass", title: "Compass", description: "Shows your direction")
        let item2Data = ItemCellData(imageURL: "upload", title: "Upload", description: "Uploads files to wherewhere you like")
        let item3Data = ItemCellData(imageURL: "face_ID", title: "Face ID Tester", description: "Test Face ID, yes just for that cool animation")
        let item4Data = ItemCellData(imageURL: "combo_chart", title: "Charts", description: "Create charts")
        
        tableViewCellData[0].append(item1Data)
        tableViewCellData[0].append(item2Data)
        tableViewCellData[1].append(item3Data)
        tableViewCellData[1].append(item4Data)
    }
    
    func setupItemTableView() {
        itemTableView.delegate = self
        itemTableView.dataSource = self
        
        itemTableView.separatorStyle = .singleLine
        itemTableView.delaysContentTouches = false
        
        view.addSubview(itemTableView)
        itemTableView.center.y += 400
        
    }
    
    func createEditableView(frame: CGRect, cornerRadius: CGFloat, fillColor: UIColor) {
        let editableView = EditableView(frame: frame)
        editableView.layer.cornerRadius = cornerRadius
        editableView.backgroundColor = fillColor
        
        view.addSubview(editableView)
        editableViews.append(editableView)
    }
    
    func createEditableViewAt(_ location: CGPoint, cornerRadius: CGFloat, fillColor: UIColor) {
        let editableView = EditableView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
        editableView.center = location
        #warning("Corner radius function")
        #warning("Ex: return 1 / 4 width")
//        cornerRadius: (CGFloat) -> CGFloat
//        editableView.layer.cornerRadius = cornerRadius(editableView.frame.width)
        editableView.layer.cornerRadius = cornerRadius
        editableView.backgroundColor = fillColor
        
        view.addSubview(editableView)
        editableViews.append(editableView)
    }
}
