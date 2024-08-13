//
//  ViewController.swift
//  VisualComponents2
//
//  Created by David Sanchez on 12/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        mySwitch.isOn = false
        myTextField.isEnabled = false
        mySwitch.onTintColor = .purple
                
        //Segmented Control
                
        }
            
    @IBAction func mySwitchAction(_ sender: UISwitch) {
            myTextField.isEnabled = sender.isOn

    }


}

