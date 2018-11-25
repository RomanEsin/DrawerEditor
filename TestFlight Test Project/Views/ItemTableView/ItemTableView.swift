//
//  ItemTableView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ItemTableView: UITableView {
    
    
    var initialOffset: CGPoint = .zero
    var cellInteractionEnabled = true
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
    }
}
