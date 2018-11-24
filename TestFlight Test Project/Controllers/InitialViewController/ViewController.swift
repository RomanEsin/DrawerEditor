//
//  ViewController.swift
//  TestFlight Test Project
//
//  Created by MariaEsina on 22.11.2018.
//  Copyright © 2018 MariaEsina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var editableViews = [ItemView]()
    
    var tableViewCellData: [[ItemCellData]] = [[]]
    var animations: [UITableView.RowAnimation] = [.automatic, .bottom, .left, .middle, .right, .fade]
    var animationNum = 0
    
    // MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let drawerVC = children.first as? DrawerViewController {
            drawerVC.delegate = self
        }
    }
    
    @IBAction func removeViews(_ sender: UIBarButtonItem) {
        var feedback: UINotificationFeedbackGenerator? = UINotificationFeedbackGenerator()
        feedback?.prepare()
        
        editableViews.forEach({ (item) in
            item.removeFromSuperview()
            editableViews.remove(at: 0)
        })
        
        feedback!.notificationOccurred(UINotificationFeedbackGenerator.FeedbackType.success)
        feedback = nil
    }
}
