//
//  ViewController.swift
//  ClasePractica26OCT
//
//  Created by LABORATORIO MAC UAM on 26/10/24.
//

import UIKit

class ViewController: UIViewController {
    
  
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Login"
        
       

        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        userTextField.accessibilityIdentifier = "userTextField"
        passwordTextField.accessibilityIdentifier = "passwordTextField"
        loginButton.accessibilityIdentifier = "loginButton"
        registerButton.accessibilityIdentifier = "registerButton"
    }

}


