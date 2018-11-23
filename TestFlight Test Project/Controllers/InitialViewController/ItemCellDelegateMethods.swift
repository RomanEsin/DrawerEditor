//
//  ItemCellDelegateMethods.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController: ItemCellDelegate{
    func itemCell(_ itemCell: ItemCell, longPressDidBegin recognizer: UILongPressGestureRecognizer) {
        var feedback: UIImpactFeedbackGenerator? = UIImpactFeedbackGenerator(style: .light)
        feedback!.prepare()
        createEditableViewAt(recognizer.location(in: view), cornerRadius: 20, fillColor: .cyan)
        feedback!.impactOccurred()
        feedback = nil
        
        //        createMovableCellAt(recognizer.location(in: view), from: itemCell)
    }
    
    func itemCell(_ itemCell: ItemCell, longPressDidChanged recognizer: UILongPressGestureRecognizer) {
        editableViews.last!.center = recognizer.location(in: view)
        //        editableCells.last!.center = recognizer.location(in: view)
    }
}
