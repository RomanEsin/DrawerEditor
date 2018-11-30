//
//  ItemViewPanGesture.swift
//  ProtoView
//
//  Created by Roman Esin on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ItemView {
    @objc func pan(recognizer: UIPanGestureRecognizer) {
        let touchLocation = recognizer.location(in: self.superview)
        switch recognizer.state {
        case .began:
            initialOffset = CGPoint(x: touchLocation.x - center.x, y: touchLocation.y - center.y)
            return
            
        case .changed:
            center = touchLocation - initialOffset
            return
            
        case .ended, .failed:
            panEnded(recognizer)
            return
            
        default:
            return
        }
    }
    
    func panEnded(_ recognizer: UIPanGestureRecognizer) {
        #warning("Incomplete implementation")
        let touchLocation = recognizer.location(in: self.superview)
    }
}
