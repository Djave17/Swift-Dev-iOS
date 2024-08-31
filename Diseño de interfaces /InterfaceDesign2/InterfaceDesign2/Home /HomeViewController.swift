//
//  HomeViewController.swift
//  InterfaceDesign2
//
//  Created by David Sanchez on 28/8/24.
//

import UIKit



class HomeViewController: UIViewController {
    @IBOutlet weak var topViewCollectionView: UICollectionView!
    
    let myCustomTopCell: [MyTopStructCell] = [
            
            MyTopStructCell(topImage: UIImage(named: "topImage1")!),
            MyTopStructCell(topImage: UIImage(named: "topImage2")!),
            MyTopStructCell(topImage: UIImage(named: "topImage2")!),
            MyTopStructCell(topImage: UIImage(named: "topImage2")!),
            MyTopStructCell(topImage: UIImage(named: "topImage1")!),
            MyTopStructCell(topImage: UIImage(named: "topImage1")!)
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topViewCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        topViewCollectionView.dataSource = self
        topViewCollectionView.delegate = self
        
       
        
    }


}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myCustomTopCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        
        
        cell.config(data: myCustomTopCell[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(myCustomTopCell[indexPath.row].topImage)
    }
    
    
}





/* myCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
 
 myCollectionView.dataSource = self
 myCollectionView.delegate = self
 */
