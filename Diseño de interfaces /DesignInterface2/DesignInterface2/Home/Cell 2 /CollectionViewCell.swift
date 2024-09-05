//
//  CollectionViewCell.swift
//  DesignInterface2
//
//  Created by David Sanchez on 3/9/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    struct MyButtomStructCollectionView{
        let buttomImage: UIImage
        let buttomLabel: String
        let description: String
        
    }
    
    
    
    @IBOutlet weak var myButtomImage: UIImageView!
    
    @IBOutlet weak var myButtomTitle: UILabel!
    
    @IBOutlet weak var myButtomDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myButtomImage.layer.cornerRadius = 15
        myButtomImage.clipsToBounds = true
        
    }
    
    func config2(data: MyButtomStructCollectionView){
        myButtomImage.image = data.buttomImage
        myButtomTitle.text = data.buttomLabel
        myButtomDescription.text = data.description
        /*
        myTopImage.image = data.topImage
        myTopLabel.text = data.topLabel*/
    }
}
