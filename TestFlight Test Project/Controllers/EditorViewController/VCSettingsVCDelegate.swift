//
//  VCSettingsVCDelegate.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 27/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

extension ViewController: SettingsViewControllerDelegate {
    func settingsViewController(_ settingsViewController: SettingsViewController, opacityDidChange opacity: Float) {
        print("ooo")
        shadowOpacity = opacity
    }
    
    func settingsViewController(_ settingsViewController: SettingsViewController, radiusDidChange radius: CGFloat) {
        print("aaa")
        shadowRadius = radius
    }
}
