//
//  ItemView.swift
//  ProtoView
//
//  Created by Roman Esin on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ItemView: UIView {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var objectNameLabel: UILabel!
    @IBOutlet weak var objectDescriptionLabel: UILabel!
    
    var cellData: ItemCellData!
    var initialOffset = CGPoint.zero
    
    var panGR: UIPanGestureRecognizer!
    var feedbackOccured = false
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        addGestureRecognizer(panGR)
    }
    
    override func awakeFromNib() {
        
    }
    
    func setup(withData data: ItemCellData = ItemCellData(imageURL: "nil", title: "Unnamed", description: "No description")) {
        if data.imageURL != "nil" {
            itemImageView.image = UIImage(named: data.imageURL)!
        }
        objectNameLabel.text = data.title
        objectDescriptionLabel.text = data.description
    }
}
