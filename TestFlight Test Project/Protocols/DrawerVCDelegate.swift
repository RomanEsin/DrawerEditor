//
//  DrawerViewControllerDelegate.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 24/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

protocol DrawerViewControllerDelegate {
    /// Delegate method that triggers when long press on cell did begin
    ///
    /// - Parameters:
    ///   - drawerViewController: DrawerViewController that contains tableView with specified cell.
    ///   - recognizer: Long press gesture recognizer.
    ///   - itemCell: ItemCell that was long pressed.
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidBegin recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell)
    
    
    /// Delegate method that triggers when long press on cell did changed.
    ///
    /// - Parameters:
    ///   - drawerViewController: DrawerViewController that contains tableView with specified cell.
    ///   - recognizer: Long press gesture recognizer.
    ///   - itemCell: ItemCell that was long pressed.
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidChanged recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell)
    
    
    /// Delegate method that triggers when long press on cell did end.
    ///
    /// - Parameters:
    ///   - drawerViewController: DrawerViewController that contains tableView with specified cell.
    ///   - recognizer: Long press gesture recognizer.
    ///   - itemCell: ItemCell that was long pressed.
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidEnd recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell)
}
