//
//  SettingsVCDelegate.swift
//  TestFlight Test Project
//
//  Created by Roman Esin on 27/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func settingsViewController(_ settingsViewController: SettingsViewController, opacityDidChange opacity: Float)
    
    func settingsViewController(_ settingsViewController: SettingsViewController, radiusDidChange radius: CGFloat)
}
