//
//  EnviromentCollectionViewCell.swift
//  ProtoView
//
//  Created by Roman Esin on 28/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class EnviromentCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var gradientView: UIView!
    
    var gradientLayer: CAGradientLayer!
    
    func setup(withData data: EnviromentCellData) {
        titleLabel.text = data.title
        iconImageView.image = UIImage(named: data.iconURL)
        
        gradientLayer = gradientView.createGradientLayer(withColors: data.gradientColors, startPoint: .zero, endPoint: CGPoint(x: 1, y: 1))
        gradientLayer.zPosition = -10
        
        gradientView.layer.cornerRadius = 14
        gradientView.clipsToBounds = true
        layer.cornerRadius = gradientView.layer.cornerRadius
    }
}
