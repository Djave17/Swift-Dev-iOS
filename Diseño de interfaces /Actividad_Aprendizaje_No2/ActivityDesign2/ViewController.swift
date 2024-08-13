//
//  ViewController.swift
//  ActivityDesign2
//
//  Created by David Sanchez on 12/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myActivityView: UIActivityIndicatorView!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mySwitch.isOn = true
        myActivityView.startAnimating()
        
        
    }

    @IBAction func mySwitchAction(_ sender: Any) {
        if mySwitch.isOn{
            myActivityView.startAnimating()
        }
        else{
            myActivityView.stopAnimating()
        }
    }
    
}

