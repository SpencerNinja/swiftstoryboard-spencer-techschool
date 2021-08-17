//
//  MenuCellTableViewCell.swift
//  Zion App Home Screen
//
//  Created by Spencer Hurd on 4/12/21.
//

import UIKit

class MenuCell: UITableViewCell {
    
    var data = Menu()
    
    @IBOutlet weak var imageLeft: UIImageView!
    @IBOutlet weak var labelLeft: UILabel!
    
    @IBOutlet weak var imageRight1: UIImageView!
    @IBOutlet weak var labelRight1: UILabel!
    @IBOutlet weak var imageRight2: UIImageView!
    @IBOutlet weak var labelRight2: UILabel!
    @IBOutlet weak var liveImg2: UIImageView!
    @IBOutlet weak var liveImg3: UIImageView!
    
    
    
    func configureCell(item: MenuItem) {
        labelLeft.text = item.title1
        imageLeft.image = item.image1
        labelRight1.text = item.title2
        imageRight1.image = item.image2
        liveImg2.image = item.live2
        labelRight2.text = item.title3
        imageRight2.image = item.image3
        liveImg3.image = item.live3
    }
    

}
