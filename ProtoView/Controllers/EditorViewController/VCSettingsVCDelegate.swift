//
//  VCSettingsVCDelegate.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 27/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController: SettingsViewControllerDelegate {
    func settingsViewController(_ settingsViewController: SettingsViewController, opacityDidChangeTo opacity: Float) {
        shadowOpacity = opacity
    }
    
    func settingsViewController(_ settingsViewController: SettingsViewController, radiusDidChangeTo radius: CGFloat) {
        shadowRadius = radius
    }
}
