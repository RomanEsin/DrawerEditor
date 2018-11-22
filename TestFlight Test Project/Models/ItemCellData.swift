//
//  ItemCellData.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import Foundation

struct ItemCellData {
    let imageURL: String
    let title: String
    let description: String
    
    init(imageURL url: String, title t: String, description d: String) {
        imageURL = url
        title = t
        description = d
    }
}
