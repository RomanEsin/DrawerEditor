//
//  VCRemoveItems.swift
//  ProtoView
//
//  Created by Roman Esin on 25/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    func removeItems() {
        let animator = UIViewPropertyAnimator(duration: 0.4, curve: .easeOut, animations: nil)
        var feedback: UINotificationFeedbackGenerator? = UINotificationFeedbackGenerator()
        feedback?.prepare()
        
        editableViews.forEach({ (item) in
            animator.addAnimations {
                item.center = CGPoint(x: self.view.frame.width / 2, y: 1000)
            }
            
            animator.addCompletion({ (animatingPosition) in
                item.removeFromSuperview()
                self.editableViews.remove(at: 0)
            })
        })
        animator.startAnimation()
        animator.addAnimations({
            feedback!.notificationOccurred(UINotificationFeedbackGenerator.FeedbackType.success)
            feedback = nil
        }, delayFactor: 0.3)
    }
}
