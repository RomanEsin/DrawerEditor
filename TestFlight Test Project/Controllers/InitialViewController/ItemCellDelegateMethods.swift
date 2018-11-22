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
        createEditableViewAt(recognizer.location(in: view), cornerRadius: 20, fillColor: .cyan)
    }
    
    func itemCell(_ itemCell: ItemCell, longPressDidChanged recognizer: UILongPressGestureRecognizer) {
        editableViews.last!.center = recognizer.location(in: view)
    }
}
