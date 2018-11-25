//
//  ViewController.swift
//  TestFlight Test Project
//
//  Created by MariaEsina on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum DrawerState: CGFloat {
        case compressed = 550
        case expanded = 300
        case full = 0
    }
    
    enum RubberbandState {
        case lower
        case upper
        case none
    }
    
    let fullAlpha = CGFloat(0.55)
    
    @IBOutlet weak var drawerView: UIView!
    @IBOutlet weak var drawerTopConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var alphaView: UIView!
    
    var drawerState = DrawerState.compressed
    var editableViews = [ItemView]()
    
    /// Drawer view.
    weak var drawerVC: DrawerViewController!
    
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
    
    // MARK: - ViewController ViewDidLoad.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDrawer()
        setupGestureRecognizers()
        
    }
    
    func setupDrawer() {
        drawerView.layer.cornerRadius = 13
        drawerView.clipsToBounds = true
        
        drawerTopConstraint.constant = 550
        if let drawerVC = children.first as? DrawerViewController {
            self.drawerVC = drawerVC
            self.drawerVC.delegate = self
            self.drawerVC.searchBarDelegate = self
            self.drawerVC.itemTableView.isScrollEnabled = false
        }
    }
    
    func setupGestureRecognizers() {
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        drawerView.addGestureRecognizer(panGR)
    }
    
    @IBAction func removeViews(_ sender: UIBarButtonItem) {
        removeItems()
    }
}
