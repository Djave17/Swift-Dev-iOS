//
//  ViewController.swift
//  uitestelements1
//
//  Created by Roberto Carmona on 25/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    let uiTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Bienvenido"
        label.accessibilityIdentifier = "uiTextLabel"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let uiTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Nombre de usuario"
        textField.borderStyle = .roundedRect
        textField.accessibilityIdentifier = "uiTextField"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let uiPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Contraseña"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.accessibilityIdentifier = "uiPasswordTextField"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let uiButton: UIButton = {
        let button = UIButton(configuration: .borderedProminent(), primaryAction: nil)
        button.setTitle("Continuar", for: .normal)
        button.accessibilityIdentifier = "uiButton"
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        view.addSubview(uiTextLabel)
        view.addSubview(uiTextField)
        view.addSubview(uiPasswordTextField)
        view.addSubview(uiButton)
        
        NSLayoutConstraint.activate([
            uiTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            uiTextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            uiTextField.topAnchor.constraint(equalTo: uiTextLabel.bottomAnchor, constant: 20),
            uiTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            uiTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            uiPasswordTextField.topAnchor.constraint(equalTo: uiTextField.bottomAnchor, constant: 20),
            uiPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            uiPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            uiButton.topAnchor.constraint(equalTo: uiPasswordTextField.bottomAnchor, constant: 20),
            uiButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
