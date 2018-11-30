//
//  ItemCellDelegate.swift
//  ProtoView
//
//  Created by Roman Esin on 24/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

// MARK: - ItemCellDelegate methods
extension DrawerViewController: ItemCellDelegate {
    func itemCell(_ itemCell: ItemCell, longPressDidBegin recognizer: UILongPressGestureRecognizer) {
        itemTableView.cellInteractionEnabled = false
        delegate?.drawerViewController(self, longPressDidBegin: recognizer, onItemCell: itemCell)
    }
    
    func itemCell(_ itemCell: ItemCell, longPressDidChanged recognizer: UILongPressGestureRecognizer) {
        delegate?.drawerViewController(self, longPressDidChanged: recognizer, onItemCell: itemCell)
    }
    
    func itemCell(_ itemCell: ItemCell, longPressDidEnd recognizer: UILongPressGestureRecognizer) {
        itemTableView.cellInteractionEnabled = true
        delegate?.drawerViewController(self, longPressDidEnd: recognizer, onItemCell: itemCell)
    }
}
