//
//  ColorResultViewController.swift
//  SeguePractice
//
//  Created by Song on 2020/07/19.
//  Copyright © 2020 Song. All rights reserved.
//

import UIKit

class ColorResultViewController: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
