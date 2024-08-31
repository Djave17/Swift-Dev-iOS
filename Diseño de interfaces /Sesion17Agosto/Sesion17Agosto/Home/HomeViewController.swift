//
//  HomeViewController.swift
//  Sesion17Agosto
//
//  Created by David Sanchez on 17/8/24.
//

import UIKit

class HomeViewController: UIViewController {
    

    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    let myCustomModel: [MyCustomStruct] = [
    
        MyCustomStruct(myImage: UIImage(named: "imagen1")!, myLabel: "imagen1"),
        MyCustomStruct(myImage: UIImage(named: "imagen2")!, myLabel: "imagen2"),
        MyCustomStruct(myImage: UIImage(named: "imagen3")!, myLabel: "imagen3"),
        MyCustomStruct(myImage: UIImage(named: "imagen4")!, myLabel: "imagen4"),
        MyCustomStruct(myImage: UIImage(named: "imagen5")!, myLabel: "imagen5"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        MyCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        
        MyCollectionView.dataSource = self
        MyCollectionView.delegate = self
        
        
    }


    

}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myCustomModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        
        cell.config(data: myCustomModel[indexPath.row])
        return cell
    }
    
    
    
}
