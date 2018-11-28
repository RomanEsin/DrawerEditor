//
//  VCCoreDataHandling.swift
//  ProtoView
//
//  Created by Roman Esin on 28/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    func saveContext() {
        do {
            try context.save()
        } catch {
            print(error)
        }
    }
    
    func loadData() {
        let fetchRequest: FetchRequest<Entity> = Entity.fetchRequest()
        do {
            let _ = try context.fetch(fetchRequest)
            
        } catch {
            print(error)
        }
    }
}
