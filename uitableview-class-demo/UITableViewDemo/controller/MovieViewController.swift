//
//  ViewController.swift
//  UITableViewDemo
//
//  Created by App Dev on 4/6/21.
//

import UIKit

var data = MovieLibrary()
let CELL_NAME = "movieCell"

class MovieViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_NAME, for: indexPath) as! MovieCell
        
        let movie = data.movies[indexPath.row]
        
        cell.configureCell(movie: movie)
        
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 120
        
        super.viewDidLoad()
        
        
    }
    
}

