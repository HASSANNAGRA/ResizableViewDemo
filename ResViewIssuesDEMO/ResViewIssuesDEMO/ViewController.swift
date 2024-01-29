//
//  ViewController.swift
//  ResViewIssuesDEMO
//
//  Created by Usman Mughal on 20/02/2023.
//

import UIKit

class ViewController: UIViewController, RKUserResizableViewDelegate {
    func userResizableViewDidBeginEditing(_ userResizableView: RKUserResizableView) {
        
    }
    
    func userResizableViewDidEndEditing(_ userResizableView: RKUserResizableView) {
        
    }
    

    var currentlyEditingView:RKUserResizableView? = nil
       var lastEditedView:RKUserResizableView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        let gripFrame = CGRect(x: 50, y: 50, width: 200, height: 150)
        let userResizableView = RKUserResizableView(frame: gripFrame)
        userResizableView.delegate = self
        let contentView = UIView(frame: gripFrame)
        contentView.backgroundColor = UIColor.red
        userResizableView.contentView = contentView
        userResizableView.showEditingHandles()
        currentlyEditingView = userResizableView
        lastEditedView = userResizableView
        self.view.addSubview(userResizableView)
    }

}
