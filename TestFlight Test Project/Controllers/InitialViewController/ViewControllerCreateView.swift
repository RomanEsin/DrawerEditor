//
//  ViewControllerCreateView.swift
//  TestFlight Test Project
//
//  Created by Юрий Есин on 23.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    func createEditableViewAt(_ location: CGPoint, cornerRadius: CGFloat, fillColor: UIColor) {
        let finalSize = CGSize(width: 100, height: 100)
        let editableView = EditableView(frame: CGRect(origin: .zero, size: CGSize(width: 0, height: 0)))
        editableView.center = location
        #warning("Corner radius function")
        #warning("Ex: return 1 / 4 width")
        let timingCurve = UISpringTimingParameters(damping: 0.5, response: 0.3)
        let animator = UIViewPropertyAnimator(duration: 0, timingParameters: timingCurve)
        animator.addAnimations {
            editableView.frame.size = finalSize
            editableView.center = location
        }
        //        cornerRadius: (CGFloat) -> CGFloat
        //        editableView.layer.cornerRadius = cornerRadius(editableView.frame.width)
        editableView.layer.cornerRadius = cornerRadius
        editableView.backgroundColor = fillColor
        
        view.addSubview(editableView)
        editableViews.append(editableView)
        animator.startAnimation()
    }
    
    func createMovableCellAt(_ location: CGPoint, from itemCell: ItemCell) {
        let cell = ItemCell()
        cell.setupFromAnotherCell(itemCell)
        
        view.addSubview(cell)
        editableCells.append(cell)
    }
}
