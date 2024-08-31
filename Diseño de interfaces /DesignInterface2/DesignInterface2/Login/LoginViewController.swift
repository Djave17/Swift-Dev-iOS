//
//  LoginViewController.swift
//  DesignInterface2
//
//  Created by David Sanchez on 29/8/24.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func pushLoginButton(_ sender: Any) {
        
        
        let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    
   
}
