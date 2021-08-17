//
//  ViewController.swift
//  Zion App Home Screen
//
//  Created by Spencer Hurd on 4/8/21.
//

import UIKit

var data = Menu()
let CELL_NAME = "menuCell"

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Return number of items in menu
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.items.count
    }
    
    // Configure the cells in the TableView
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_NAME, for: indexPath) as! MenuCell
//        let menuItem = data.items[indexPath.row]
//        cell.configureCell(item: menuItem)
//        return cell
//    }
    
    // Copy of above cell configure function
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_NAME, for: indexPath) as! MenuCell
        let menuItem = data.items[indexPath.row]
        cell.configureCell(item: menuItem)
        return cell
    }
    
    // Change color of icons to green
    var tabBarTag: Bool = true
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if tabBarTag == true {
            self.tabBarController?.tabBar.tintColor = UIColor.systemGreen
        } else {
            self.tabBarController?.tabBar.tintColor = UIColor.blue
        }
    }

    // View Did Load
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.rowHeight = 210
        tableView.rowHeight = CGFloat(tableView.frame.height / CGFloat(data.items.count))
//        tableView.rowHeight = CGFloat(tableView.visibleSize.height / CGFloat(data.items.count))
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    

}
