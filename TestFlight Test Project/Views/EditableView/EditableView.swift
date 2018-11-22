//
//  EditableView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class EditableView: UIView {
    
    var initialOffset: CGPoint = .zero
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        print("Did move to superview")
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        
        addGestureRecognizer(panGR)
    }

}

