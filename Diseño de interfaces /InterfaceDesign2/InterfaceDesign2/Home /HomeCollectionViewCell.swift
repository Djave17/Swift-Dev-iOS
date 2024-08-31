//
//  HomeCollectionViewCell.swift
//  InterfaceDesign2
//
//  Created by David Sanchez on 28/8/24.
//

import UIKit

struct MyTopStructCell{
    let topImage: UIImage
}
class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myTopImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // propiedades de imagen
        myTopImage.layer.cornerRadius = 10
        myTopImage.clipsToBounds = true
       
        
    }

    func config(data: MyTopStructCell){
        myTopImage.image = data.topImage
    }
    
}
