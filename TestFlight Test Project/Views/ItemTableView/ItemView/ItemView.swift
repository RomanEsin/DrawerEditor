//
//  ItemView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ItemView: UIView {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var objectNameLabel: UILabel!
    @IBOutlet weak var objectDescriptionLabel: UILabel!
    
    var cellData: ItemCellData!
    var initialOffset = CGPoint.zero
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        addGestureRecognizer(panGR)
    }
    
    override func awakeFromNib() {
        print(321)
    }
    
    func setupWithData(_ data: ItemCellData = ItemCellData(imageURL: "nil", title: "Unnamed", description: "No description")) {
        if data.imageURL != "nil" {
            itemImageView.image = UIImage(named: data.imageURL)!
        }
        objectNameLabel.text = data.title
        objectDescriptionLabel.text = data.description
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}
