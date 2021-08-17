//
//  MovieLibrary.swift
//  UITableViewDemo
//
//  Created by Philip Trunnell on 4/12/21.
//

import Foundation


struct MovieLibrary {
    
    var movies = [Movie]()
    
    init() {
        generateMovieLibrary()
    }
    
    mutating func generateMovieLibrary() {
        
        let movie1 = Movie(genre: "sports", title: "Rocky", director: "John G Avildsen", duration: 120, year: "1976", image: #imageLiteral(resourceName: "rocky"))
        let movie2 = Movie(genre: "comedy", title: "Ted", director: "Seth MacFarland", duration: 110, year: "2012", image: #imageLiteral(resourceName: "ted"))
        let movie3 = Movie(genre: "comedy/action", title: "Teenage Mutant Ninja Turtles", director: "Steve Barron", duration: 93, year: "1990", image: #imageLiteral(resourceName: "tmnt"))
        let movie4 = Movie(genre: "action/drama", title: "American Sniper", director: "Clint Eastwood", duration: 133, year: "2014", image: #imageLiteral(resourceName: "american_sniper"))
        let movie5 = Movie(genre: "comedy/drama", title: "The Princess Bride", director: "Rob Reiner", duration: 98, year: "1997", image: #imageLiteral(resourceName: "princess_bride"))
        let movie6 = Movie(genre: "comedy/drama", title: "Big", director: "Penny Marshall", duration: 98, year: "1988", image: #imageLiteral(resourceName: "big"))
        
        movies = [movie1, movie2, movie3, movie4, movie5, movie6]

    }
}
