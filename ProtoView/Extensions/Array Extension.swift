//
//  Array Extension.swift
//  ProtoView
//
//  Created by Roman Esin on 28/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import Foundation
import UIKit

extension Array where Element: UIColor {
    var cgColors: [CGColor] {
        return self.map { $0.cgColor }
    }
}
