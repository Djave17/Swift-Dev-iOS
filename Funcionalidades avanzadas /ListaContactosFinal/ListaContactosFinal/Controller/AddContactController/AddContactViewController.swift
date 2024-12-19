//
//  AddContactViewController.swift
//  ListaContactosFinal
//
//  Created by David Sanchez on 5/10/24.
//
import UIKit

class AddContactViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext

    @IBOutlet var contactPhoneTextField: UITextField!
    @IBOutlet var contactNameTextField: UITextField!
    @IBOutlet weak var contactAdressTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Añadir Contacto"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addContact(_ sender: Any) {
        
        if let name = contactNameTextField.text, let phone = contactPhoneTextField.text, let adress = contactAdressTextField.text{
            
            let user = Users(context: context)
            user.user_name = name
            user.user_phone = phone
            user.user_direction = adress
            
            appDelegate.saveContext()
            
        }
//        let viewController = ViewController()
//        
//        self.navigationController?.pushViewController(viewController, animated: true)

        
    
        
    }
    
}
