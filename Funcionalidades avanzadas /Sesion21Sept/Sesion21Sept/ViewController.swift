//
//  ViewController.swift
//  Sesion21Sept
//
//  Created by LABORATORIO MAC UAM on 21/9/24.
//

import UIKit

class ViewController: UIViewController{
    
    

    @IBOutlet weak var takeAPhoto: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTapButton(_ sender: Any) {
        
        let picker = UIImagePickerController()
        
        picker.sourceType = .camera
    //  picker.sourceType = .photoLibrary
        
        picker.delegate = self
        
        present(picker, animated: true)
    }
    
}
// MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate { 
     
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let photo = info[.originalImage] as? UIImage {
            imageView.image = photo
            
        }
        
        dismiss(animated: true)
    }
    
}

