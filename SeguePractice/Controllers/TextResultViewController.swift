//
//  TextResultViewController.swift
//  SeguePractice
//
//  Created by Song on 2020/07/19.
//  Copyright © 2020 Song. All rights reserved.
//

import UIKit

class TextResultViewController: UIViewController {

    @IBOutlet weak var resultTextLabel: UILabel!
    var inputText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if inputText != "" {
            resultTextLabel.text = inputText
        } else {
            resultTextLabel.text = "아무 내용도 입력하지 않으셨습니다."
        }
        
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
