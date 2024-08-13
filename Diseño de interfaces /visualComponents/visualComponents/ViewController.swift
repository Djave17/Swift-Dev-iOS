//
//  ViewController.swift
//  visualComponents
//
//  Created by David Sanchez on 12/8/24.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var myFirstButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Buttons
        myFirstButton.setTitle("myFirstButton", for: .normal)
        myFirstButton.backgroundColor = .blue
        myFirstButton.setTitleColor(.white, for: .normal)
    }

   
    
    @IBAction func myButtonAction(_ sender: UIButton) {
        if myFirstButton.backgroundColor == .blue{
            myFirstButton.backgroundColor = .green
        } else{
            myFirstButton.backgroundColor = .blue
        }
    }
    
}

