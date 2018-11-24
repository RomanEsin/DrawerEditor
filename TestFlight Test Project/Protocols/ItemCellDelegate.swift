//
//  ItemCellDelegate.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

protocol ItemCellDelegate {
    func itemCell(_ itemCell: ItemCell, longPressDidBegin recognizer: UILongPressGestureRecognizer)
    
    func itemCell(_ itemCell: ItemCell, longPressDidChanged recognizer: UILongPressGestureRecognizer)
    
    func itemCell(_ itemCell: ItemCell, longPressDidEnd recognizer: UILongPressGestureRecognizer)
}
