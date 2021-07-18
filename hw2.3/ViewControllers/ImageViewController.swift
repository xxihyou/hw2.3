//
//  ImageViewController.swift
//  hw2.3
//
//  Created by Maria Berger on 17.07.2021.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var imageViewThree: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewOne.image = UIImage(named: Person.getPerson().photoOne)
        imageViewTwo.image = UIImage(named: Person.getPerson().photoTwo)
        imageViewThree.image = UIImage(named: Person.getPerson().photoThree)
    }

}
