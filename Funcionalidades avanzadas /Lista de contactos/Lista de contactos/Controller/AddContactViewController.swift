//
//  AddContactViewController.swift
//  Lista de contactos
//
//  Created by David Sanchez on 3/10/24.
//

import UIKit

class AddContactViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet var contactNameTextField: UITextField!
    
    @IBOutlet var contactPhoneTextField: UITextField!
    
    @IBOutlet weak var contactAdressTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addContact(_ sender: Any) {
        
        if let name = contactNameTextField.text, let phone = contactPhoneTextField.text, let adress = contactAdressTextField.text{
            if name.isEmpty == false || phone.isEmpty == false || adress.isEmpty == false {
                let user = Users(context: context)
                user.user_name = name
                user.user_phone = phone
                user.user_direction = adress
                
                appDelegate.saveContext()
                
            }
            else{
                let ac = UIAlertController(title: "Error", message: "Completa todos los campos", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Aceptar", style: .default))
                present(ac, animated: true)
            }
                
                
                
            
        }
        

        
    }
    
}

