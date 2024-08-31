//
//  HomeCollectionViewCell.swift
//  DesignInterface2
//
//  Created by David Sanchez on 29/8/24.
//

import UIKit

struct MyTopStructCell{
    let topImage: UIImage
    let topLabel: String
    
}
/*
struct MyBottomStructCell{
    let bottomImage: UIImage
    let bottomTitle: String
    let bottomDescription: String
}*/

class HomeCollectionViewCell: UICollectionViewCell {
    
    //Top Collection View
    @IBOutlet weak var myTopLabel: UILabel!
    @IBOutlet weak var myTopImage: UIImageView!
    
    /* /Bottom CollectionView
     @IBOutlet weak var myButtomImage: UIImageView!
     @IBOutlet weak var myBottomTitle: UILabel!
    */
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myTopImage.layer.cornerRadius = 15
        myTopImage.clipsToBounds = true
    
        
    }
    
    func config(data: MyTopStructCell){
        myTopImage.image = data.topImage
        myTopLabel.text = data.topLabel
    }
    
}
