//
//  SettingsViewController.swift
//  DisenoDeTurismo1
//
//  Created by David Sanchez on 4/9/24.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var homeStackButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        homeStackButton.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)
    }
    
    @objc func homeTapped(){
        let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        navigationController?.pushViewController(homeViewController, animated: true)
    }


   

}
