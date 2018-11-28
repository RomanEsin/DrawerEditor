//
//  UIColor Extension.swift
//  ProtoView
//
//  Created by Roman Esin on 28/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
    }
}
