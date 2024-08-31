//
//  ViewController.swift
//  InterfaceDesign
//
//  Created by David Sanchez on 13/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myButtonMenu: UIButton!
    
    @IBOutlet weak var imagePerfil: UIImageView!
    
    @IBOutlet weak var myMusicButton: UIButton!
    
    @IBOutlet weak var firstSongImage: UIImageView!
    
    @IBOutlet weak var secondSongImage: UIImageView!
    
    @IBOutlet weak var thirdSongImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //imagen de perfil (propiedades)
        imagePerfil.contentMode = .scaleAspectFill
        imagePerfil.image = UIImage(named: "ImagePerfil")
        imagePerfil.layer.cornerRadius = imagePerfil.frame.size.width / 2
        imagePerfil.layer.masksToBounds = true
        
        //Boton de musica
        myMusicButton.layer.cornerRadius = 15
        myMusicButton.layer.masksToBounds = true
    
        //Imagen de la primera cancion
        firstSongImage.contentMode = .scaleAspectFill
        firstSongImage.image = UIImage(named: "LonelyDay")
        firstSongImage.layer.cornerRadius = firstSongImage.frame.size.width / 2
        firstSongImage.layer.masksToBounds = true
        
        
        //Imagen de la segunda cancion
        secondSongImage.contentMode = .scaleAspectFill
        secondSongImage.image = UIImage(named: "Supermercado")
        secondSongImage.layer.cornerRadius = secondSongImage.frame.size.width / 2
        secondSongImage.layer.masksToBounds = true
        
        //Imagen de la tercera cancion
        thirdSongImage.contentMode = .scaleAspectFill
        thirdSongImage.image = UIImage(named: "Amsterdam")
        thirdSongImage.layer.cornerRadius = thirdSongImage.frame.size.width / 2
        thirdSongImage.layer.masksToBounds = true
        
    }
        
    
}



