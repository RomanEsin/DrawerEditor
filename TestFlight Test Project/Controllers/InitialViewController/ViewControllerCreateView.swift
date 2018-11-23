//
//  ViewControllerCreateView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    func createEditableView(frame: CGRect, cornerRadius: CGFloat, fillColor: UIColor) {
        let editableView = EditableView(frame: frame)
        editableView.layer.cornerRadius = cornerRadius
        editableView.backgroundColor = fillColor
        
        view.addSubview(editableView)
        editableViews.append(editableView)
    }
    
    func createEditableViewAt(_ location: CGPoint, cornerRadius: CGFloat, fillColor: UIColor) {
        let finalSize = CGSize(width: 100, height: 100)
        let editableView = EditableView(frame: CGRect(origin: .zero, size: CGSize(width: 0, height: 0)))
        editableView.layer.cornerRadius = 0
        editableView.center = location
        #warning("Corner radius function")
        #warning("Ex: return 1 / 4 width")
        let timingCurve = UISpringTimingParameters(damping: 0.5, response: 0.3)
        let animator = UIViewPropertyAnimator(duration: 0, timingParameters: timingCurve)
        animator.addAnimations {
            editableView.frame.size = finalSize
            editableView.center = location
            editableView.layer.cornerRadius = 20
        }
        //        cornerRadius: (CGFloat) -> CGFloat
        //        editableView.layer.cornerRadius = cornerRadius(editableView.frame.width)
        editableView.layer.cornerRadius = cornerRadius
        editableView.backgroundColor = fillColor
        
        view.addSubview(editableView)
        editableViews.append(editableView)
        animator.startAnimation()
    }
    
    func createMovableCellAt(_ location: CGPoint, from itemCellData: ItemCellData) {
        // Initialize Nib
        let nib = UINib(nibName: "ItemView", bundle: nil)
        // Get the view from Nib
        let itemView = nib.instantiate(withOwner: self, options: nil)[0] as! ItemView
        
        let fullSize = itemView.frame.size
        
        itemView.setupWithData(itemCellData)
        
        itemView.frame = CGRect(origin: .zero, size: CGSize(width: 0, height: 0))
        itemView.center = CGPoint(x: self.view.frame.width / 2, y: location.y)
        itemView.alpha = 0
        itemView.initialOffset = CGPoint(x: location.x - (view.frame.width / 2), y: 0)
        
        let cornerRadius = CGFloat(30)
        
        let timingCurve = UISpringTimingParameters(damping: 0.5, response: 0.3)
        let animator = UIViewPropertyAnimator(duration: 0, timingParameters: timingCurve)
        animator.addAnimations {
            itemView.frame.size = fullSize
            itemView.center = CGPoint(x: self.view.frame.width / 2, y: location.y)
            itemView.alpha = 1
            itemView.layer.cornerRadius = cornerRadius
        }
        
        view.addSubview(itemView)
        editableCells.append(itemView)
        animator.startAnimation()
    }
}
