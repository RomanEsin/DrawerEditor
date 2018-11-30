//
//  VCSetup.swift
//  ProtoView
//
//  Created by Roman Esin on 26/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController {
    func setupDrawer() {
        drawerView.layer.cornerRadius = 13
        drawerView.clipsToBounds = false
        drawerView.layer.masksToBounds = false
        
        drawerView.dropShadow(shadowRadius: shadowRadius, opacity: shadowOpacity)
        
        drawerTopConstraint.constant = 550
        if let drawerVC = children[1] as? DrawerViewController {
            self.drawerVC = drawerVC
            self.drawerVC.delegate = self
            self.drawerVC.searchBarDelegate = self
            self.drawerVC.itemTableView.isScrollEnabled = false
        }
    }
    
    func setupSettings() {
        if let settingsVC = children[0] as? SettingsViewController {
            self.settingsVC = settingsVC
            self.settingsVC.delegate = self
            shadowOpacity = settingsVC.opacitySlider.value
            shadowRadius = CGFloat(settingsVC.radiusSlider.value)
        }
        settingsTopConstraint.constant = -settingsView.frame.height
    }
    
    func setupGestureRecognizers() {
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        drawerView.addGestureRecognizer(panGR)
    }
}
