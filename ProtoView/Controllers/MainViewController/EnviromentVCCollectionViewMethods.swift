//
//  EnviromentVCCollectionViewMethods.swift
//  ProtoView
//
//  Created by Roman Esin on 28/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredCollectionCellData[0].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "enviromentCell", for: IndexPath(row: 0, section: 0)) as! EnviromentCollectionViewCell
        
        cell.setup(withData: filteredCollectionCellData[0][indexPath.row])
        cell.dropShadow(shadowRadius: 10, opacity: 0.2)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showEditor", sender: self)
    }
}
