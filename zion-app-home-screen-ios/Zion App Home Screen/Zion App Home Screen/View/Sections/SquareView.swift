//
//  LeftView.swift
//  Zion App Home Screen
//
//  Created by Spencer Hurd on 4/13/21.
//

import UIKit

class SquareView: UIView {

    private var identifier = 0
    private static var idSetter = 0
    
    let data = Menu()
    let view = HomeViewController()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private static func getUniqueIdentifier() -> Int {
        idSetter += 1
        return idSetter
    }
    
    func getLabel(x: Int, y: Int, width: Int, height: Int, text: String, fontsize: Int) -> UILabel {
        let label = UILabel(frame: CGRect(x: x, y: y, width: width, height: height))
        label.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.text = text.uppercased()
        label.textColor = .white
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.font = .boldSystemFont(ofSize: CGFloat(fontsize))
        label.textAlignment = .left
        return label
    }
    
    func getImage(named name: String) -> UIImageView {
        let image = UIImage(named: name)
        let imageVar = UIImageView(image: image)
        imageVar.contentMode = .scaleAspectFill
        self.clipsToBounds = true
        return imageVar
    }

}
