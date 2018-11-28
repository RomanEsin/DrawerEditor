//
//  ViewController.swift
//  TestFlight Test Project
//
//  Created by MariaEsina on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    enum DrawerState: CGFloat {
        case compressed = 550
        case expanded = 300
        case full = 0
    }
    
    enum SettingsState {
        case opened
        case closed
        
        mutating func toggle() {
            self == .closed ?
                (self = .opened)
                :
                (self = .closed)
        }
    }
    
    enum RubberbandState {
        case lower
        case upper
        case none
    }
    
    let fullAlpha = CGFloat(0.55)
    
    @IBOutlet weak var drawerView: UIView!
    @IBOutlet weak var drawerTopConstraint: LayoutConstraint!
    
    @IBOutlet weak var alphaView: UIView!
    
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var settingsTopConstraint: LayoutConstraint!
    
    var drawerState = DrawerState.compressed
    var settingsState = SettingsState.closed
    var editableViews = [ItemView]()
    
    /// Drawer ViewController.
    weak var drawerVC: DrawerViewController!
    
    weak var settingsVC: SettingsViewController!
    
    // Idk whats that.
    var animations: [UITableView.RowAnimation] = [.automatic, .bottom, .left, .middle, .right, .fade]
    var animationNum = 0
    
    
    // Additional variables for panrecognizer.
    var initialOffset = CGPoint.zero
    var initialTopConstraintConstant = CGFloat(0)
    var topConstraintConstant = CGFloat(0)
    
    var rubberbandStartTranslation = CGFloat(0)
    var rubberbandStartPosition = CGFloat(0)
    var rubberbandState = RubberbandState.none
    
    var shadowOpacity: Float {
        get {
            return drawerView.layer.shadowOpacity
        }
        set {
            drawerView.layer.shadowOpacity = newValue
            editableViews.forEach { (item) in
                item.layer.shadowOpacity = newValue
            }
        }
    }
    
    var shadowRadius: CGFloat {
        get {
            return drawerView.layer.shadowRadius
        }
        set {
            drawerView.layer.shadowRadius = newValue
            editableViews.forEach { (item) in
                item.layer.shadowRadius = newValue
            }
        }
    }
    
    // MARK: - ViewController ViewDidLoad.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDrawer()
        setupSettings()
        setupGestureRecognizers()
        
        shadowOpacity = 0.1
        shadowRadius = 10
    }
    
    @IBAction func removeViews(_ sender: UIBarButtonItem) {
        removeItems()
    }
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func settings(_ sender: UIBarButtonItem) {
        openSettings()
    }
}
