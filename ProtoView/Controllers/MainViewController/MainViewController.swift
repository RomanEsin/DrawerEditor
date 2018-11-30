//
//  MainViewController.swift
//  ProtoView
//
//  Created by Roman Esin on 26/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var enviromentCollectionView: UICollectionView!
    
    var filteredCollectionCellData: [[EnviromentCellData]] = [[]]
    var fullData: [[EnviromentCellData]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionViewData()
        setupCollectionView()
    }
}
