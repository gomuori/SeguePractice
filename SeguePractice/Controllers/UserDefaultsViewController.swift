//
//  UserDefaultsViewController.swift
//  SeguePractice
//
//  Created by Song on 2020/07/19.
//  Copyright © 2020 Song. All rights reserved.
//

import UIKit

class UserDefaultsViewController: UITableViewController {
    
    var itemArray: [String] = []
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let items = defaults.array(forKey: "NewItemArray") as? [String] {
            itemArray = items
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

    //MARK: - Add new items
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
    
    var textField = UITextField()
        
        let alert = UIAlertController(title: "새로운 아이템을 더하세요.", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "추가", style: .default) { (action) in
            self.itemArray.append(textField.text!)
            
            self.defaults.set(self.itemArray, forKey: "NewItemArray")
            
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "새로운 아이템"
            textField = alertTextField
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)

    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}
