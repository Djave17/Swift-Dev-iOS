//
//  HomeCollectionViewCell.swift
//  DisenoDeTurismo1
//
//  Created by David Sanchez on 3/9/24.
//

import UIKit

struct CustomStructCell {
    let image: UIImage
    let title: String
    let description: String
}
class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myTitle: UILabel!
    
    @IBOutlet weak var myDescription: UILabel!
    
    @IBOutlet weak var heartButton: UIButton!
    
    var isHeartFilled: Bool = false
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myImage.layer.cornerRadius = 15
        myImage.clipsToBounds = true
        
        myDescription.numberOfLines = 4
        myDescription.lineBreakMode = .byWordWrapping
        
        
    }
    
    @IBAction func heartTapped(_ sender: Any) {
        if heartButton.isTouchInside {
            isHeartFilled.toggle()
        }// Cambiar el valor de la variabel
        if isHeartFilled == true{
            heartButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
        else {
            heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
        }
       
    }

    func config(data: CustomStructCell){
        myImage.image = data.image
        myTitle.text = data.title
        myDescription.text = data.description
    }

}
