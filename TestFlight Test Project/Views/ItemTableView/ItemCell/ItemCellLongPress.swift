//
//  ItemCellLongPress.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ItemCell {
    @objc func longPress(recognizer: UILongPressGestureRecognizer) {
        switch recognizer.state {
        case .began:
            print("Began")
            delegate?.itemCell(self, longPressDidBegin: recognizer)
            tableView.deselectRow(at: IndexPath(row: 0, section: 0), animated: true)
        case .changed:
            delegate?.itemCell(self, longPressDidChanged: recognizer)
        case .ended, .failed, .cancelled:
            delegate?.itemCell(self, longPressDidEnd: recognizer)
        default:
            return
        }
    }
}
