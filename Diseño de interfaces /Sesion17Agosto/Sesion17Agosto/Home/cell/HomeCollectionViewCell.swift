//
//  HomeCollectionViewCell.swift
//  Sesion17Agosto
//
//  Created by David Sanchez on 17/8/24.
//

import UIKit


struct MyCustomStruct{
    let myImage: UIImage
    let myLabel: String
    
}

class HomeCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(data: MyCustomStruct){
        myImageView.image = data.myImage
        myLabel.text = data.myLabel
    }

}
