//
//  VCPanGestureRecognizer.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 25/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    @objc func pan(recognizer: UIPanGestureRecognizer) {
        let location = recognizer.location(in: view)
        let translation = recognizer.translation(in: view)
        
        switch recognizer.state {
        case .began:
            drawerVC.searchBar.endEditing(true)
            initialOffset = location - drawerView.center
            initialTopConstraintConstant = drawerTopConstraint.constant
            return
            
        case .changed:
            // Tried using constraint to expand drawer view but that create some very laggy things
            topConstraintConstant = initialTopConstraintConstant + translation.y
            
            #warning("Rubberbanding")
            drawerView.center.y = location.y - initialOffset.y

//            #error("Animate alpha")
            alphaView.alpha = fullAlpha * (min(-1 * (topConstraintConstant - DrawerState.expanded.rawValue), DrawerState.expanded.rawValue) / DrawerState.expanded.rawValue)
            
//            if topConstraintConstant > DrawerState.full.rawValue && topConstraintConstant < DrawerState.compressed.rawValue {
//                rubberbandState = .none
//                print("No rubberband")
//                drawerView.center.y = location.y - initialOffset.y
//            }
//            else {
//                guard rubberbandState != .none else {
//                    if topConstraintConstant >= DrawerState.compressed.rawValue {
//                        rubberbandState = .lower
//                        print("Lower rubberband")
//                    } else {
//                        print("Upper rubberband")
//                        rubberbandState = .upper
//                    }
//                    rubberbandStartTranslation = translation.y
//                    drawerView.center.y = location.y - initialOffset.y
//                    rubberbandStartPosition = drawerView.center.y
//                    return
//                }
//
//                switch rubberbandState {
//                case .upper:
//                    drawerView.center.y = location.y - initialOffset.y
//                    return
//
//                case .lower:
//                    print(rubberband(translation.y - rubberbandStartTranslation))
//                    drawerView.center.y = drawerView.center.y + rubberband(translation.y - rubberbandStartTranslation)
//                    return
//
//                default:
//                    return
//                }
//
//            }
            
            return
            
        case .ended, .failed, .cancelled:
            panEnded(recognizer: recognizer)
            return
            
        default:
            return
        }
    }
    
    // * x = distance from the edge
    // * c = constant value, UIScrollView uses 0.55
    // * d = dimension, either width or height
    // b = (1.0 – (1.0 / ((x * c / d) + 1.0))) * d
    
    func rubberband(_ x: CGFloat) -> CGFloat {
        let frameHeight = view.frame.height
        return (CGFloat(1) - (CGFloat(1) / ((x * CGFloat(0.55) / frameHeight) + CGFloat(1)))) * frameHeight
    }
}
