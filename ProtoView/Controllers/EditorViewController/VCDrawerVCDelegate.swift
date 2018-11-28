//
//  VCDrawerVCDelegate.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 24/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

// MARK: - ItemCellDelegate methods
extension ViewController: DrawerViewControllerDelegate {
    
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidBegin recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell) {
        
        var feedback: UIImpactFeedbackGenerator? = UIImpactFeedbackGenerator(style: .heavy)
        feedback!.prepare()
        createMovableCell(at: recognizer.location(in: view), from: itemCell.cellData)
        feedback!.impactOccurred()
        feedback = nil
    }
    
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidChanged recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell) {
        editableViews.last!.center = CGPoint(x: recognizer.location(in: view).x - editableViews.last!.initialOffset.x, y: recognizer.location(in: view).y)
    }
    
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidEnd recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell) {
        
    }
}
