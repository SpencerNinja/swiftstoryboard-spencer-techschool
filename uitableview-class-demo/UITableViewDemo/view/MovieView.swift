//
//  MovieView.swift
//  UITableViewDemo
//
//  Created by Philip Trunnell on 4/12/21.
//

import UIKit

class MovieView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    
    var movie: Movie! {
        didSet {
            coverImage.image = movie.image
            titleLabel.text = movie.title
            yearLabel.text = movie.year
            directorLabel.text = movie.director
            genreLabel.text = movie.genre
        }
    }
    
    // Initializer for doing programatically
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    // Initializer for storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    
    func commonInit() {
        
        // Load XIB with name of file
        Bundle.main.loadNibNamed("MovieView", owner: self, options: nil)
        addSubview(contentView)
        
        // Add constraints programatically
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
    }
    
}
