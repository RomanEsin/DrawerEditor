//
//  ViewControllerCreateView.swift
//  ProtoView
//
//  Created by Roman Esin on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    
    /// Creates ItemView from the nib and adds it to ViewControllers view.
    ///
    /// - Parameters:
    ///   - location: Touch location.
    ///   - itemCellData: ItemCellData is the data of cell that triggered this
    func createMovableCell(at location: CGPoint, from itemCellData: ItemCellData) {
        // Initialize Nib
        let nib = UINib(nibName: "ItemView", bundle: nil)
        // Get the view from Nib
        let itemView = nib.instantiate(withOwner: self, options: nil)[0] as! ItemView
        
        let fullSize = itemView.frame.size
//        let initFrame = CGRect(origin: CGPoint(x: (view.frame.width / 2) - fullSize.width / 2, y: location.y  - fullSize.height / 2), size: CGSize(width: 0, height: 0))
        let center = CGPoint(x: view.frame.width / 2, y: location.y)
        
        itemView.setup(withData: itemCellData)
        
        itemView.frame.size = .zero
        itemView.center = center
        
        itemView.subviews[0].clipsToBounds = true
        itemView.subviews[0].layer.cornerRadius = 0
        
        itemView.alpha = 0
        itemView.initialOffset = CGPoint(x: location.x - (view.frame.width / 2), y: 0)
        
        let cornerRadius = CGFloat(30)
        
        let springTiming = UISpringTimingParameters(damping: 0.6, response: 0.3)
        let animator = UIViewPropertyAnimator(duration: 0, timingParameters: springTiming)
        animator.addAnimations {
            itemView.frame.size = fullSize
            itemView.center = center
            
            itemView.alpha = 1
            itemView.layer.cornerRadius = cornerRadius
            
            itemView.subviews[0].layer.cornerRadius = cornerRadius
            itemView.dropShadow(shadowRadius: self.shadowRadius, opacity: self.shadowOpacity)
            itemView.layoutIfNeeded()
        }
        
        view.addSubview(itemView)
        editableViews.append(itemView)
        animator.startAnimation()
        animateDrawer(to: .compressed, withView: itemView)
        drawerVC.searchBar.endEditing(true)
    }
}
