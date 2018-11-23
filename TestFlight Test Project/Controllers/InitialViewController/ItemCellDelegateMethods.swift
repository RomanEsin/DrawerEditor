//
//  ItemCellDelegateMethods.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController: ItemCellDelegate {
    func itemCell(_ itemCell: ItemCell, longPressDidBegin recognizer: UILongPressGestureRecognizer) {
        var feedback: UIImpactFeedbackGenerator? = UIImpactFeedbackGenerator(style: .medium)
        feedback!.prepare()
        createMovableCellAt(recognizer.location(in: view), from: itemCell.cellData)
        feedback!.impactOccurred()
        feedback = nil
    }
    
    func itemCell(_ itemCell: ItemCell, longPressDidChanged recognizer: UILongPressGestureRecognizer) {
        editableCells.last!.center = CGPoint(x: recognizer.location(in: view).x - editableCells.last!.initialOffset.x, y: recognizer.location(in: view).y)
    }
}
