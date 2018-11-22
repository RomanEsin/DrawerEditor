//
//  ItemCellTableViewCell.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var objectNameLabel: UILabel!
    @IBOutlet weak var objectDescriptionLabel: UILabel!
    
    var delegate: ItemCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setupWithData(_ data: ItemCellData = ItemCellData(imageURL: "nil", title: "Unnamed", description: "No description")) {
        if data.imageURL != "nil" {
            itemImageView.image = UIImage(named: data.imageURL)!
        }
        objectNameLabel.text = data.title
        objectDescriptionLabel.text = data.description
        
        let longPressGR = UILongPressGestureRecognizer(target: self, action: #selector(longPress(recognizer:)))
        longPressGR.minimumPressDuration = 0.5
        
        addGestureRecognizer(longPressGR)
    }
    
}
