//
//  ViewController.swift
//  InterfaceDesignScrollview
//
//  Created by David Sanchez on 19/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleView: UIView!
    
    
    @IBOutlet weak var imagenPerfil: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Propiedades de view (Decoracion)
        
        circleView.contentMode = .scaleAspectFill
        circleView.layer.cornerRadius = circleView.frame.size.width / 2
       
        circleView.layer.masksToBounds = true
        
        imagenPerfil.contentMode = .scaleAspectFill
        imagenPerfil.image = UIImage(named: "ImagenPerfil1")
        imagenPerfil.layer.cornerRadius = imagenPerfil.frame.size.width / 2
        
        
      
    }


}
