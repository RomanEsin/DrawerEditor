//
//  EditableView.swift
//  ProtoView
//
//  Created by Roman Esin on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class EditableView: UIView {
    
    var initialOffset: CGPoint = .zero
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        addGestureRecognizer(panGR)
    }
}

