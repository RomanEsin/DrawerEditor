//
//  VCSettings.swift
//  ProtoView
//
//  Created by Roman Esin on 26/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    func openSettings() {
        let springTiming = UISpringTimingParameters(damping: 0.8, response: 0.4)
        let animator = UIViewPropertyAnimator(duration: 0, timingParameters: springTiming)
        animator.addAnimations {
            if self.settingsState == .closed {
                self.settingsTopConstraint.constant = 0
            } else {
                self.settingsTopConstraint.constant = -self.settingsView.frame.height
            }
            self.view.layoutIfNeeded()
        }
        
        animator.addCompletion { (animatingPosition) in
            self.settingsState.toggle()
        }
        
        animator.startAnimation()
    }
}
