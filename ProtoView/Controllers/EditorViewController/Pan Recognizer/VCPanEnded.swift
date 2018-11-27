//
//  VCPanEnded.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 25/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    func panEnded(recognizer: UIPanGestureRecognizer) {
        let velocity = recognizer.velocity(in: view)
        
        drawerTopConstraint.constant = topConstraintConstant
        
        view.layoutIfNeeded()
        
        let decelerationRate = UIScrollView.DecelerationRate.normal.rawValue
        let projectY = project(initialVelocity: velocity.y, decelerationRate: decelerationRate)
        let projectedYPos = projectY + drawerTopConstraint.constant
        
        var finalState = DrawerState.compressed
        
        switch projectedYPos {
        case ...DrawerState.full.rawValue:
            finalState = .full
            
        case 0...DrawerState.expanded.rawValue:
            finalState = .expanded
            
        case DrawerState.expanded.rawValue...DrawerState.compressed.rawValue:
            finalState = .expanded
            
        case DrawerState.compressed.rawValue...:
            finalState = .compressed
            
        default:
            print("something")
        }
        
        let relativeYVelocity = relativeVelocity(forVelocity: velocity.y, from: drawerTopConstraint.constant, to: finalState.rawValue)
        
        print(relativeYVelocity)
        
        let springTiming = UISpringTimingParameters(damping: 0.8, response: 0.4, initialVelocity: CGVector(dx: 0, dy: relativeYVelocity))
        let animator = UIViewPropertyAnimator(duration: 0, timingParameters: springTiming)
        animator.addAnimations {
            self.drawerTopConstraint.constant = finalState.rawValue
            self.view.layoutIfNeeded()
            self.drawerState = finalState
            self.alphaView.alpha = self.fullAlpha * (min(-1 * (finalState.rawValue - DrawerState.expanded.rawValue), DrawerState.expanded.rawValue) / DrawerState.expanded.rawValue)
        }
        
        animator.addAnimations({
            self.drawerVC.itemTableView.isScrollEnabled = finalState == .full
        }, delayFactor: 0.2)
        
        animator.addCompletion { (animatingPosition) in
            print(self.drawerTopConstraint.constant, self.drawerState)
        }
        
        animator.startAnimation()
    }
    
    /// Distance traveled after decelerating to zero velocity at a constant rate.
    func project(initialVelocity: CGFloat, decelerationRate: CGFloat) -> CGFloat {
        return (initialVelocity / 1000) * decelerationRate / (1 - decelerationRate)
    }
    
    /// Calculates the relative velocity needed for the initial velocity of the animation.
    private func relativeVelocity(forVelocity velocity: CGFloat, from currentValue: CGFloat, to targetValue: CGFloat) -> CGFloat {
        guard currentValue - targetValue != 0 else { return 0 }
        return velocity / (targetValue - currentValue)
    }
}
