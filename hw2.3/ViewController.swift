//
//  ViewController.swift
//  hw2.3
//
//  Created by Maria Berger on 13.07.2021.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
            userNameTF.tag = 0
            userNameTF.returnKeyType = .next
            passwordTF.delegate = self
            passwordTF.tag = 1
            passwordTF.returnKeyType = .done
        
    }

    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
            return true;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeMessage = "Welcome, \(userNameTF.text ?? "")"
    }
    
    
    @IBAction func forgotUserNameAction() {
        showAlert(title: "Need Help?", message: "Your User Name is Maria")
        userNameTF.text = ""
    }
    
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Need help?", message: "Your password is 123")
        passwordTF.text = ""
    }
    

    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - private methods

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "OK", style: .default) 
        alert.addAction(okayAction)
        present(alert, animated: true)
    }
    
}



