//
//  ViewController.swift
//  first-app
//
//  Created by Spencer Hurd on 3/15/21.
//

import UIKit

let minPasswordLength = 8

class ViewController: UIViewController {
    

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)      // UIColor.green
        
        
        // Create our first custom view
        let myView = UIView()
        myView.frame = CGRect(x: 200, y: 100, width: 200, height: 100)
        myView.backgroundColor = UIColor.systemRed
        
        // Add subviews
        view.addSubview(myView)
        
        // Display text onto the screen
        let myLabel = UILabel(frame: CGRect(x: 200, y: 100, width: 200, height: 100))
        
        myLabel.text = "Hello 😄"
        myLabel.textColor = UIColor.yellow
        myLabel.textAlignment = .center
        view.addSubview(myLabel)
        
        // Display an image on the screen
        let myImageView = UIImageView(frame: CGRect(x: 50, y: 300, width: 400, height: 400))
        myImageView.image = UIImage(named: "cat1.jpg")
        myImageView.contentMode = .scaleAspectFit
        view.addSubview(myImageView)
    }


    @IBAction func submitAction(_ sender: UIButton) {
        let result = myLabel
        let userName = usernameTxt.text
        let password = passwordTxt.text
        
        if password?.count < minPasswordLength {
            
        }
    }
}

