//
//  ViewController.swift
//  VisualComplements3
//
//  Created by David Sanchez on 12/8/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var horizontalStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Configuracion del ImageView
        setupImageView()
        
        //configuracion del vertical
        setupHorizontalStackView()
        
    }

    
    func setupImageView(){
        //Establecer una imagen programaticamente
        imageView.image = UIImage(named: "logoberserk.svg")
        
        // Configurar el modo de contenido
        imageView.contentMode = .scaleAspectFit
        
        // Aplicar otras personalizaciones
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
    }
    
    func setupHorizontalStackView() { 
        horizontalStackView.axis = .horizontal
        horizontalStackView.alignment = .fill
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.spacing = 10
        
        // Añadir elementos al Horizontal Stack View
        let labell = UILabel()
        labell.text = "Label 1"
        labell.backgroundColor = . red
        let label2 = UILabel()
        label2.text = "Label 2"
        label2.backgroundColor = .green
        let label3 = UILabel()
        label3.text = "Label 3"
        label3.backgroundColor = .blue
        horizontalStackView.addArrangedSubview(labell)
        horizontalStackView.addArrangedSubview (label2)
        horizontalStackView.addArrangedSubview(label3)
    }
    
    
}

