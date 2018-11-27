//
//  ItemCellDelegate.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

protocol ItemCellDelegate {
    /// Delegate method that triggers when long press on specified cell did begin.
    ///
    /// - Parameters:
    ///   - itemCell: ItemCell that was long pressed.
    ///   - recognizer: Long press gesture regognizer.
    func itemCell(_ itemCell: ItemCell, longPressDidBegin recognizer: UILongPressGestureRecognizer)
    
    
    /// Delegate method that triggers when long press on specified cell did changed.
    ///
    /// - Parameters:
    ///   - itemCell: ItemCell that was long pressed.
    ///   - recognizer: Long press gesture regognizer.
    func itemCell(_ itemCell: ItemCell, longPressDidChanged recognizer: UILongPressGestureRecognizer)
    
    
    /// Delegate method that triggers when long press on specified cell did end.
    ///
    /// - Parameters:
    ///   - itemCell: ItemCell that was long pressed.
    ///   - recognizer: Long press gesture regognizer.
    func itemCell(_ itemCell: ItemCell, longPressDidEnd recognizer: UILongPressGestureRecognizer)
}
