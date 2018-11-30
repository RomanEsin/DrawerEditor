//
//  SettingsViewController.swift
//  ProtoView
//
//  Created by Roman Esin on 27/11/2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var radiusSlider: UISlider!
    
    @IBOutlet weak var opacityLabel: UILabel!
    @IBOutlet weak var radiusLabel: UILabel!
    
    var delegate: SettingsViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func opacityChanged(_ sender: UISlider) {
        delegate?.settingsViewController(self, opacityDidChangeTo: sender.value)
        let convertedValue = CGFloat(Int(sender.value * 1000)) / 1000
        opacityLabel.text = "shadowOpacity: \(convertedValue)"
    }
    
    @IBAction func radiusChanged(_ sender: UISlider) {
        delegate?.settingsViewController(self, radiusDidChangeTo: CGFloat(sender.value))
        let convertedValue = CGFloat(Int(sender.value * 1000)) / 1000
        radiusLabel.text = "shadowRadius: \(convertedValue)"
    }
}
