//
//  ShowDetailViewController.swift
//  SeguePractice
//
//  Created by Song on 2020/07/17.
//  Copyright © 2020 Song. All rights reserved.
//

import UIKit

class ShowDetailViewController: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color
    }
    
    @IBAction func dismissPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
