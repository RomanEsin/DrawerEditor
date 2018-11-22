//
//  EditableView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class EditableView: UIView {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        print("Did move to superview")
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        addGestureRecognizer(panGR)
    }
    
    var initialOffset: CGPoint = .zero
    
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
        default:
            return
        }
    }
    
    func panEnded(_ recognizer: UIPanGestureRecognizer) {
        #warning("Incomplete implementation")
        let touchLocation = recognizer.location(in: self.superview)
        #warning("Incomplete implementation")
    }

}


