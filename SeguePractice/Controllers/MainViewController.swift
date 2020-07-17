//
//  ViewController.swift
//  SeguePractice
//
//  Created by Song on 2020/07/17.
//  Copyright © 2020 Song. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let colors = [#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)]
    var buttonColor: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

    @IBOutlet weak var pageControlLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = colors.count
        pageControl.currentPage = 1
        pageControlLabel.backgroundColor = colors[pageControl.currentPage]
    }

    @IBAction func pageChanged(_ sender: UIPageControl) {
        pageControlLabel.backgroundColor = colors[pageControl.currentPage]
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        buttonColor = sender.backgroundColor ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToShow" {
            let destinationVC = segue.destination as! ShowViewController
            destinationVC.color = buttonColor
        } else if segue.identifier == "goToShowDetail" {
            let destinationVC = segue.destination as! ShowDetailViewController
            destinationVC.color = buttonColor
        } else if segue.identifier == "goToPresentModally" {
            let destinationVC = segue.destination as! PresentModallyViewController
            destinationVC.color = buttonColor
        } else if segue.identifier == "goToPresentAsPopover" {
            let destinationVC = segue.destination as! PresentAsPopoverViewController
            destinationVC.color = buttonColor
        }
    }
    
    //Define an Unwind Action on a Parent View Controller
    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue) {
        //let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
}

