//
//  RegisterViewController.swift
//  Sesion17Agosto
//
//  Created by David Sanchez on 17/8/24.
//

import UIKit

class RegisterViewController: UIViewController {
    /*let registerViewController = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
    self.navigationController?.pushViewController(registerViewController, animated: true)
    */
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationController?.navigationBar.isHidden = true
        
        // .pop para volver

        // Do any additional setup after loading the view.
    }


    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
   
    @IBAction func forgotPushAction(_ sender: Any) {
        let forgotViewController = ForgotViewController(nibName: "ForgotViewController", bundle: nil)
        self.navigationController?.pushViewController(forgotViewController, animated: true)
        
        
    }
    
    
    @IBAction func homePushActionFromReg(_ sender: Any) {
        let HomeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        self.navigationController?.pushViewController(HomeViewController, animated: true)
    }
    
}
