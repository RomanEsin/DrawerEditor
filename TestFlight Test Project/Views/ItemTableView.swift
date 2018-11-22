//
//  ItemTableView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ItemTableView: UITableView {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        print("Item table view did move to superview")
//        let panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
//        addGestureRecognizer(panGR)
    }
    
//    var initialOffset: CGPoint = .zero
//
//    @objc func pan(recognizer: UIPanGestureRecognizer) {
//        let touchLocation = recognizer.location(in: self.superview)
//
//        switch recognizer.state {
//        case .began:
//            initialOffset = CGPoint(x: touchLocation.x - center.x, y: touchLocation.y - center.y)
//            return
//
//        case .changed:
//            center = touchLocation - initialOffset
//            return
//
//        case .ended, .cancelled, .failed:
//            panEnded(recognizer: recognizer)
//            return
//
//        default:
//            return
//        }
//    }
//
//    func panEnded(recognizer: UIPanGestureRecognizer) {
//         let touchLocation = recognizer.location(in: self.superview)
//    }
}
