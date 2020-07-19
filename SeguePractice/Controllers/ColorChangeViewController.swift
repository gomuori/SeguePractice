//
//  ColorChangeViewController.swift
//  SeguePractice
//
//  Created by Song on 2020/07/19.
//  Copyright © 2020 Song. All rights reserved.
//

import UIKit

class ColorChangeViewController: UIViewController {
    
    var buttonColor: UIColor = .white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if let color = sender.backgroundColor {
            buttonColor = color
        } else {
            print("This button has no color.")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToColorResult" {
            let destinationVC = segue.destination as! ColorResultViewController
            destinationVC.color = buttonColor
        }
    }
    
}
