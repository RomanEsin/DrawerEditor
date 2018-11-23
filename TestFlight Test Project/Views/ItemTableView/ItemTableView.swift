//
//  ItemTableView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ItemTableView: UITableView {
    
    enum State {
        case compressed
        case expanded
        case full
    }
    
    var initialOffset: CGPoint = .zero
    var state = State.expanded
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        print("Item table view did move to superview")
        
//        let panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
//        addGestureRecognizer(panGR)
    }
}
