//
//  UIView Extensions.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension UIView {
    /// Makes UIView drop a shadow. You can specift its shadow radius and opacity.
    ///
    /// - Parameters:
    ///   - shadowRadius: Radius of the shadow beaing applied. Default value is 4
    ///   - opacity: Opacity of the shadow being applied. Default value is 0.25
    func dropShadow(shadowRadius: CGFloat = 10, opacity: Float = 0.055) {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = shadowRadius
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}
