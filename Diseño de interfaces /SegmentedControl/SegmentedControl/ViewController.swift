//
//  ViewController.swift
//  SegmentedControl
//
//  Created by David Sanchez on 12/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySegmentedControl: UISegmentedControl!
    

    @IBOutlet var myStepperControl: UIStepper!
    
    @IBOutlet var myLabel: UILabel!
    
    private let myStringsValue = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        mySegmentedControl.removeAllSegments()
        for (index, value) in myStringsValue.enumerated(){
            mySegmentedControl.insertSegment(withTitle: value, at: index, animated: true)
        }

    }

    @IBAction func myStepperAction(_ sender: UIStepper) {
        let value = myStepperControl.value
        
        myLabel.text = "\(value)"
    }
    
}

