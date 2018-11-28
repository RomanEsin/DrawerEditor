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
    }
    
    func setupCollectionViewData() {
        let cell1 = EnviromentCellData(title: "First", iconURL: "twitter", gradientType: GradientType.red)
        let cell2 = EnviromentCellData(title: "Second title", iconURL: "upload", gradientType: GradientType.oragne)
        let cell3 = EnviromentCellData(title: "Plussss", iconURL: "coins", gradientType: GradientType.yellow)
        
        filteredCollectionCellData[0].append(cell1)
        filteredCollectionCellData[0].append(cell2)
        filteredCollectionCellData[0].append(cell3)
        filteredCollectionCellData[0].append(cell1)
        filteredCollectionCellData[0].append(cell2)
        filteredCollectionCellData[0].append(cell3)
        filteredCollectionCellData[0].append(cell1)
        filteredCollectionCellData[0].append(cell2)
        filteredCollectionCellData[0].append(cell3)
        filteredCollectionCellData[0].append(cell1)
        filteredCollectionCellData[0].append(cell2)
        filteredCollectionCellData[0].append(cell3)
        filteredCollectionCellData[0].append(cell1)
        filteredCollectionCellData[0].append(cell2)
        filteredCollectionCellData[0].append(cell3)
        filteredCollectionCellData[0].append(cell1)
        filteredCollectionCellData[0].append(cell2)
        filteredCollectionCellData[0].append(cell3)
    }
}
