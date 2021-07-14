//
//  WelcomeViewController.swift
//  hw2.3
//
//  Created by Maria Berger on 13.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeMessageLabel: UILabel!
    @IBOutlet weak var LogOutButton: UIButton!
    
    var welcomeMessage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = welcomeMessage
    }

    
    @IBAction func LogOutAction() {
        dismiss(animated: true)
    }
    
    }
    

