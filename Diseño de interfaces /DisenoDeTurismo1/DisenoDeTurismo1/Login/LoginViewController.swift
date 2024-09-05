//
//  LoginViewController.swift
//  DisenoDeTurismo1
//
//  Created by David Sanchez on 3/9/24.
//

import UIKit

class LoginViewController: UIViewController {

    /*
    @IBOutlet weak var myUsernameTextField: UITextField!*/
    
    @IBOutlet weak var myLoginButton: UIButton!
    
    /*
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    */
       
    
    
    // Crear los text fields y botón
      let usernameTextField: UITextField = {
          let textField = UITextField()
          textField.placeholder = "Username"
          textField.borderStyle = .roundedRect
          textField.translatesAutoresizingMaskIntoConstraints = false
          return textField
      }()
      
      let passwordTextField: UITextField = {
          let textField = UITextField()
          textField.placeholder = "Password"
          textField.borderStyle = .roundedRect
          textField.isSecureTextEntry = true
          textField.translatesAutoresizingMaskIntoConstraints = false
          return textField
      }()
      
     
      
      override func viewDidLoad() {
          super.viewDidLoad()
          
          // Agregar subviews
          view.addSubview(usernameTextField)
          view.addSubview(passwordTextField)
          
          
          // Configurar constraints
          NSLayoutConstraint.activate([
              usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              usernameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
              usernameTextField.widthAnchor.constraint(equalToConstant: 250),
              
              passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
              passwordTextField.widthAnchor.constraint(equalToConstant: 250),
              

          ])
          
          // Agregar acción al botón de login
          myLoginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
      }
      
      @objc func loginTapped() {
          guard let username = usernameTextField.text, !username.isEmpty,
                let password = passwordTextField.text, !password.isEmpty else {
              showAlert(message: "Por favor, completa todos los campos.")
              return
          }
          
          // Autenticar username y password (puede ser local o una llamada de red)
          if authenticate(username: username, password: password) {
             
              let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
              navigationController?.pushViewController(homeViewController, animated: true)
          } else {
              showAlert(message: "Credenciales incorrectas")
          }
      }
      
      // Método de autenticación básica
      func authenticate(username: String, password: String) -> Bool {
          // Aquí puedes validar contra valores fijos o usar un servicio remoto
          let validUsername = "Swift"
          let validPassword = "1234"
          
          return username == validUsername && password == validPassword
      }
      
      // Mostrar alertas
      func showAlert(message: String) {
          let alert = UIAlertController(title: "Datos incorrectos", message: message, preferredStyle: .alert)
          alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
          present(alert, animated: true, completion: nil)
      }
  }
    
    

    /*
    @IBAction func pushLogin(_ sender: Any) {
        if (login != false){
            let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
            navigationController?.pushViewController(homeViewController, animated: true)
        }
       
        
    }
    */
    
    
    
    



