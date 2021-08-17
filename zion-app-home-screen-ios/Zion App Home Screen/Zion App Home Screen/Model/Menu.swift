//
//  Menu.swift
//  Zion App Home Screen
//
//  Created by Spencer Hurd on 4/12/21.
//

import Foundation

struct Menu {
    var items = [MenuItem]()
    
    init() {
        generateMenu()
    }
    let temperature = 104
    
    mutating func generateMenu () {
        let menu1 = MenuItem(title1: "What To See", image1: #imageLiteral(resourceName: "pexels-photo-3900437.jpeg"), title2: "Parking", image2: #imageLiteral(resourceName: "pexels-photo-164634.jpeg"), live2: #imageLiteral(resourceName: "Live.png"), title3: "Entrances", image3: #imageLiteral(resourceName: "pexels-photo-4447105.jpeg"), live3: #imageLiteral(resourceName: "Live.png"))
        let menu2 = MenuItem(title1: "What To Do", image1: #imageLiteral(resourceName: "pexels-photo-4993217.jpeg"), title2: "Trails", image2: #imageLiteral(resourceName: "pexels-photo-3656393.jpeg"), live2: #imageLiteral(resourceName: "Live.png"), title3: "Shuttles", image3: #imageLiteral(resourceName: "pexels-photo-808846.jpeg"), live3: #imageLiteral(resourceName: "Live.png"))
        let menu3 = MenuItem(title1: "Region Updates", image1: #imageLiteral(resourceName: "pexels-photo-415925.jpeg"), title2: "Camping", image2: #imageLiteral(resourceName: "pexels-photo-2422265.jpeg"), live2: #imageLiteral(resourceName: "Live.png"), title3: "Weather   \(temperature)°", image3: #imageLiteral(resourceName: "pexels-photo-1431822.jpeg"), live3: #imageLiteral(resourceName: "Live.png"))
        items = [menu1, menu2, menu3]
    }
}
