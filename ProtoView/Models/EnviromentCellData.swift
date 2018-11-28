//
//  EnviromentCellData.swift
//  ProtoView
//
//  Created by Roman Esin on 28/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

struct EnviromentCellData {
    let title: String
    let iconURL: String
    let gradientColors: [UIColor]
    
    init(title t: String, iconURL url: String, gradientType gt: [UIColor]) {
        title = t
        iconURL = url
        gradientColors = gt
    }
}
