//
//  ViewController.swift
//  VisualComponents(Act 2)
//
//  Created by David Sanchez on 12/8/24.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var mySwitch: UISwitch!
    

    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        mySwitch.isOn = false
        myTextField.isEnabled = false
        mySwitch.onTintColor = .purple
        
        //Segmented Control
        
    }

    
    @IBAction func mySwitchAction(_ sender: UISwitch) {
        if mySwitch.isOn {
            myTextField.isEnabled = true
        }
        else{
            myTextField.isEnabled = false
        }
    }
    
}

