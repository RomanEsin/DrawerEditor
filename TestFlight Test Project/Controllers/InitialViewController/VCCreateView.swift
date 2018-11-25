//
//  ViewControllerCreateView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    
    /// Creates ItemView from the nib and adds it to ViewControllers view.
    ///
    /// - Parameters:
    ///   - location: Touch location.
    ///   - itemCellData: ItemCellData is the data of cell that triggered this
    func createMovableCellAt(_ location: CGPoint, from itemCellData: ItemCellData) {
        // Initialize Nib
        let nib = UINib(nibName: "ItemView", bundle: nil)
        // Get the view from Nib
        let itemView = nib.instantiate(withOwner: self, options: nil)[0] as! ItemView
        
        let fullSize = itemView.frame.size
        let initFrame = CGRect(origin: CGPoint(x: view.frame.width / 2, y: location.y), size: CGSize(width: 0, height: 0))
        
        itemView.setupWithData(itemCellData)
        
        itemView.frame = initFrame
        
        itemView.alpha = 0
        itemView.initialOffset = CGPoint(x: location.x - (view.frame.width / 2), y: 0)
        
        let cornerRadius = CGFloat(30)
        
        let springTiming = UISpringTimingParameters(damping: 0.6, response: 0.3)
        let animator = UIViewPropertyAnimator(duration: 0, timingParameters: springTiming)
        animator.addAnimations {
            itemView.frame.size = fullSize
            itemView.center = initFrame.origin
            
            itemView.alpha = 1
            itemView.layer.cornerRadius = cornerRadius
        }
        
        view.addSubview(itemView)
        editableViews.append(itemView)
        animator.startAnimation()
        animateDrawerTo(.compressed, withView: itemView)
        drawerVC.searchBar.endEditing(true)
    }
}
