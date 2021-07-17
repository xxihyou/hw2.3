//
//  ViewController.swift
//  hw2.3
//
//  Created by Maria Berger on 13.07.2021.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: - IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    // MARK: - Private Properties
    private let user = "User"
    private let password = "Password"
    
    // MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        passwordTF.delegate = self
        
        userNameTF.tag = 0
        userNameTF.returnKeyType = .next
            
            passwordTF.tag = 1
            passwordTF.returnKeyType = .done
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    
    // MARK: - IBActions
    @IBAction func logInPressed() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(title: "Need Help?", message: "Your User Name is \(user)")
        userNameTF.text = ""
    }
    
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Need help?", message: "Your password is \(password)")
        passwordTF.text = ""
    }
    
    @IBAction func unwind (segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - private methods

extension ViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = ""
        }
        alert.addAction(okayAction)
        present(alert, animated: true)
    }
}



