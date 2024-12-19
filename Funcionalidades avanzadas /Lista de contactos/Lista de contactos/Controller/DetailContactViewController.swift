//
//  DetailContactViewController.swift
//  Lista de contactos
//
//  Created by David Sanchez on 3/10/24.
//


import UIKit

class DetailContactViewController: UIViewController {

    
    @IBOutlet var contactPhoneLabel: UILabel!
    @IBOutlet var contactNameLabel: UILabel!
    @IBOutlet var contactAdressLabel: UILabel!

    
    
    
    var user:Users?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let u = user {
            contactNameLabel.text = u.user_name
            contactPhoneLabel.text = u.user_phone
            contactAdressLabel.text = u.user_direction
        }

    }
    

}
