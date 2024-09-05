//
//  HomeViewController.swift
//  DesignInterface2
//
//  Created by David Sanchez on 29/8/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var topCollectionView: UICollectionView!
    
    @IBOutlet weak var buttomCollectionView: UICollectionView!
    
    
    let myCustomTopCell: [MyTopStructCell] = [
            
            MyTopStructCell(topImage: UIImage(named: "topImage1")!, topLabel: "Catedral de Granada"),
            MyTopStructCell(topImage: UIImage(named: "topImage2")!, topLabel: "Isletas de Granada"),
            MyTopStructCell(topImage: UIImage(named: "topImage1")!, topLabel: "Catedral de Granada"),
            MyTopStructCell(topImage: UIImage(named: "topImage2")!, topLabel: "Isletas de Granada"),
            MyTopStructCell(topImage: UIImage(named: "topImage1")!, topLabel: "Catedral de Granada"),
            MyTopStructCell(topImage: UIImage(named: "topImage2")!, topLabel: "Isletas de Granada")
           
        ]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    
        topCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        topCollectionView.dataSource = self
        topCollectionView.delegate = self
        
        buttomCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell2")
        buttomCollectionView.dataSource = self
        buttomCollectionView.delegate = self
        
        
        
        
        
        
        


        
    }
    


    

}
extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myCustomTopCell.count
      
       
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
    
        
        cell.config(data: myCustomTopCell[indexPath.row])
        
         
        return cell; cell2
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(myCustomTopCell[indexPath.row].topImage)
        
        
    }
    
    
}

