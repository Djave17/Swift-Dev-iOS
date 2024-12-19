//
//  UpdateContactViewController.swift
//  Lista de contactos
//
//  Created by David Sanchez on 3/10/24.
//

import UIKit

class UpdateContactViewController: UIViewController {

    @IBOutlet var contactNameTextField: UITextField!
    @IBOutlet var contactPhoneTextField: UITextField!
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
            
            k.user_name = name
            k.user_phone = phone
            k.user_direction = adress
            appDelegate.saveContext()
            
        }
        let viewController = ViewController()
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
        
    }
}









