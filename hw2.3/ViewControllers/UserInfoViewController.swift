//
//  UserInfoViewController.swift
//  hw2.3
//
//  Created by Maria Berger on 17.07.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
// MARK: - IBOutlets
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var aboutMe: UILabel!
    @IBOutlet weak var myImage: UIImageView!
   
    @IBOutlet weak var titleItem: UINavigationItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleItem.title = Person.getPerson().fullName
        
        addressLabel.text = "Address: \(Person.getPerson().address)"
        ageLabel.text = "Age: \(Person.getPerson().age)"
        occupationLabel.text = "Occupation: \(Person.getPerson().occupation)"
        aboutMe.text = "About me: \(Person.getPerson().aboutMe)"
        
        myImage.image = UIImage(named: Person.getPerson().myImage)
    }
    
    
// MARK: - IBActions
    @IBAction func moreIsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showImageVC", sender: nil)
    }

// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let _ = segue.destination as? ImageViewController
    }
}


