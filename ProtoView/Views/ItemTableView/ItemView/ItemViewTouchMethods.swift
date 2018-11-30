//
//  ItemViewTouchMethods.swift
//  ProtoView
//
//  Created by Roman Esin on 29/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ItemView {
    func normalizeTouchForce(_ force: CGFloat, maximumPossibleForce: CGFloat) -> CGFloat {
        return force / maximumPossibleForce
    }
    
    @objc func toggleFeedback() {
        feedbackOccured = false
    }
    
    func setNormalizedForce(_ normalizedForce: inout CGFloat, withTouches touches: Set<UITouch>) {
        let touch = touches.first
        //        let location = touch?.location(in: superview)
        let force = touch?.force
        let maxforce = touch?.maximumPossibleForce
        normalizedForce = normalizeTouchForce(force!, maximumPossibleForce: maxforce!)
        
        if normalizedForce > 0 {
            panGR.isEnabled = false
        } else {
            panGR.isEnabled = true
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        var normalizedForce = CGFloat(0)
        
        setNormalizedForce(&normalizedForce, withTouches: touches)
        
        if normalizedForce == 1 {
            guard !feedbackOccured else { return }
            var feedback: UINotificationFeedbackGenerator? = UINotificationFeedbackGenerator()
            feedback?.notificationOccurred(.error)
            feedbackOccured = true
            feedback = nil
            perform(#selector(toggleFeedback), with: nil, afterDelay: 2)
        } else {
            superview?.alpha = abs(1 - normalizedForce)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        panGR.isEnabled = true
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.superview?.alpha = 1
        }, completion: nil)
    }
}
