//
//  TextInputViewController.swift
//  SeguePractice
//
//  Created by Song on 2020/07/19.
//  Copyright © 2020 Song. All rights reserved.
//

import UIKit

class TextInputViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.delegate = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToTextResult" {
            let destinationVC = segue.destination as! TextResultViewController
            destinationVC.inputText = inputTextField.text
        }
    }

}

//MARK: - UITextFieldDelegate
extension TextInputViewController: UITextFieldDelegate {
    
    @IBAction func enterButtonPressed(_ sender: UIButton) {
        inputTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if inputTextField.text != "" {
        } else {
            inputTextField.placeholder = "내용을 입력하세요."
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}
