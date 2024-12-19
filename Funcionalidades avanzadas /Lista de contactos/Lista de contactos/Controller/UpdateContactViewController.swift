//
//  UpdateContactViewController.swift
//  Lista de contactos
//
//  Created by David Sanchez on 3/10/24.
//

import UIKit

class UpdateContactViewController: UIViewController {

    
    @IBOutlet var contactPhoneTextField: UITextField!
    @IBOutlet var contactNameTextField: UITextField!
    @IBOutlet weak var contactAdressTextField: UITextField!
    
    var user:Users?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let u = user {
            contactPhoneTextField.text = u.user_phone
            contactNameTextField.text = u.user_name
        }

    }


    @IBAction func contactUpdate(_ sender: Any) {
        
        if let k = user,let name = contactNameTextField.text, let phone = contactPhoneTextField.text, let adress = contactAdressTextField.text {
            if ((k.user_name?.isEmpty) != nil) || ((k.user_phone?.isEmpty) != nil) || ((k.user_direction?.isEmpty) != nil) {
                
                k.user_name = name
                k.user_phone = phone
                k.user_direction = adress
                appDelegate.saveContext()
            }
            else{
                let ac = UIAlertController(title: "Error", message: "Debe completar todos los campos", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Aceptar", style: .default))
                present(ac, animated: true)
            }
            
            
        }
    //volver a vista anterior (ViewController) sin segue 
        
        
        
    }
}









