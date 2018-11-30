//
//  EnviromentVCSetup.swift
//  ProtoView
//
//  Created by Roman Esin on 28/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension MainViewController {
    func setupCollectionView() {
        enviromentCollectionView.delegate = self
        enviromentCollectionView.dataSource = self
        
        enviromentCollectionView.clipsToBounds = true
//        enviromentCollectionView.layer.masksToBounds = false
    }
    
    func setupCollectionViewData() {
        let cell1 = EnviromentCellData(title: "First", iconURL: "twitter", gradientColors: GradientColor.red)
        let cell2 = EnviromentCellData(title: "Second title", iconURL: "upload", gradientColors: GradientColor.oragne)
        let cell3 = EnviromentCellData(title: "Plussss", iconURL: "coins", gradientColors: GradientColor.yellow)
        let cell4 = EnviromentCellData(title: "Some green thingy", iconURL: "settings", gradientColors: GradientColor.green)
        let cell5 = EnviromentCellData(title: "Somehting", iconURL: "plus", gradientColors: GradientColor.blue)
        let cell6 = EnviromentCellData(title: "Somehting 2 THINK", iconURL: "info", gradientColors: GradientColor.purple)
        
        for _ in 1...3 {
            filteredCollectionCellData[0].append(cell1)
            filteredCollectionCellData[0].append(cell2)
            filteredCollectionCellData[0].append(cell3)
            filteredCollectionCellData[0].append(cell4)
            filteredCollectionCellData[0].append(cell5)
            filteredCollectionCellData[0].append(cell6)
        }
    }
}
