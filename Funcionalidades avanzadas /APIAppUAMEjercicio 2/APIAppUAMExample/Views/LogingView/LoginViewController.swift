//
//  ViewController.swift
//  APIAppUAMExample
//
//  Created by Macbook on 3/10/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    private let loginController = LoginController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Limpiar los campos de texto para usuario y contraseña al volver a aparecer
            usernameTextField.text = ""
            passwordTextField.text = ""
    }

    @IBAction func onTapLogin(_ sender: Any) {
        guard
            let username = usernameTextField.text,
            let password = passwordTextField.text
        else { return }
        
        Task {
            let response = await loginController.login(username: username, password: password)
            
            if response != nil {
                performSegue(withIdentifier: "goToMainView", sender: self)
            } else {
                let alert = UIAlertController(title: "Login Failure", message: "There was an error logging in.", preferredStyle: .alert)
                
                let action = UIAlertAction(title: "OK", style: .cancel)
                alert.addAction(action)
                
                present(alert, animated: true)
            }
        }
    }
    
}

