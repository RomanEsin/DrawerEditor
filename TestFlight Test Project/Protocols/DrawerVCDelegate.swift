//
//  DrawerViewControllerDelegate.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 24/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

protocol DrawerViewControllerDelegate {
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidBegin recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell)
    
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidChanged recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell)
    
    func drawerViewController(_ drawerViewController: DrawerViewController, longPressDidEnd recognizer: UILongPressGestureRecognizer, onItemCell itemCell: ItemCell)
}
