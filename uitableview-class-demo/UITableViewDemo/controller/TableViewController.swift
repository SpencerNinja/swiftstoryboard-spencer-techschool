//
//  TableViewController.swift
//  UITableViewDemo
//
//  Created by Philip Trunnell on 4/12/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    let CELL_ID = "movieCell"
    
    var movieLibrary = MovieLibrary()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieLibrary.movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID , for: indexPath) as! MovieCell
        let currentMovie = movieLibrary.movies[indexPath.row]
        cell.movieView.movie = currentMovie
        
        return cell
    }

}
