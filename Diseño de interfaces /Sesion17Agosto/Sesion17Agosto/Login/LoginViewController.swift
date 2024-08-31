//
//  LoginViewController.swift
//  Sesion17Agosto
//
//  Created by David Sanchez on 17/8/24.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var registerAction: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*let registerViewController = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
    self.navigationController?.pushViewController(registerViewController, animated: true)
    */

    @IBAction func registerButtonAction(_ sender: Any) {
        let registerViewController = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    

}
