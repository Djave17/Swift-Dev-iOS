//
//  ViewController.swift
//  UserDefault
//
//  Created by David Sanchez on 28/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var switchField: UISwitch!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fieldConfiguration()
    }


    @IBAction func onTapSaveButton(_ sender: Any) {
        let text = textField.text
        let boolValue = switchField.isOn
        
        UserDefaults.standard.set(text, forKey: "textField")
        UserDefaults.standard.set(boolValue, forKey: "switchField")
        
        
    }
    @IBAction func onTapResetButton(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "textField")
        UserDefaults.standard.removeObject(forKey: "switchField")
        fieldConfiguration()
    }
    func fieldConfiguration() {
        // Do any additional setup after loading the view.
        
        let textValue = UserDefaults.standard.string(forKey: "textField")
        let boolValue = UserDefaults.standard.bool(forKey: "switchField")
        
        textField.text = textValue
        switchField.isOn = boolValue
    }
}

