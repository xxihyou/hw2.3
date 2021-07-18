//
//  WelcomeViewController.swift
//  hw2.3
//
//  Created by Maria Berger on 13.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeMessageLabel: UILabel!
    
    var userName = Person.getPerson().fullName
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(userName)!"
    }
    
    
}
