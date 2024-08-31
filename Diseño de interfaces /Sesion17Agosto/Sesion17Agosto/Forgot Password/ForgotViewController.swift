//
//  ForgotViewController.swift
//  Sesion17Agosto
//
//  Created by David Sanchez on 17/8/24.
//

import UIKit

class ForgotViewController: UIViewController {
    /*let registerViewController = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
    self.navigationController?.pushViewController(registerViewController, animated: true)
    */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backForgotAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func homeAction(_ sender: Any) {
        let HomeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        self.navigationController?.pushViewController(HomeViewController, animated: true)
    }
    


    

}
