//
//  VCDrawerAnimation.swift
//  ProtoView
//
//  Created by Roman Esin on 24/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    
    /// Animates drawer to specified state.
    ///
    /// - Parameters:
    ///   - state: State that drawer will animate to
    ///   - itemView: ItemView that appeared when drawer animated to .compressed state
    func animateDrawer(to state: DrawerState, withView itemView: ItemView? = nil) {
        let springTiming = UISpringTimingParameters(damping: 0.8, response: 0.4)
        let animator = UIViewPropertyAnimator(duration: 0, timingParameters: springTiming)
        animator.addAnimations {
            self.drawerTopConstraint.constant = state.rawValue
            self.view.layoutIfNeeded()
            self.alphaView.alpha = self.fullAlpha * (min(-1 * (state.rawValue - DrawerState.expanded.rawValue), DrawerState.expanded.rawValue) / DrawerState.expanded.rawValue)
        }
        
        animator.addAnimations({
            self.drawerVC.itemTableView.isScrollEnabled = state == .full
        }, delayFactor: 0.2)
        
        guard let itemView = itemView else {
            animator.startAnimation()
            return
        }
        
        animator.addCompletion { (animatingPosition) in
            #warning("")
            self.view.sendSubviewToBack(itemView)
        }
        animator.startAnimation()
    }
}
