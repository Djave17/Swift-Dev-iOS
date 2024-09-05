
//
//  HomeViewController.swift
//  DisenoDeTurismo1
//
//  Created by David Sanchez on 3/9/24.
//

import UIKit

//Delegado
class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myCustomStructCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! HomeCollectionViewCell
        
        cell.config(data: myCustomStructCell[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        print(myCustomStructCell[indexPath.row].image)
    }
    
    
    //Estructura
    
    let myCustomStructCell: [CustomStructCell] = [
        
    CustomStructCell(image: UIImage(named: "topImage1")!, title: "Catedral de Granada", description: "Conoce la cuidad mas antigua de Nicaragua y sus maravillas"),
    
    CustomStructCell(image: UIImage(named: "topImage2")!, title: "Isletas de Granada", description: "Estas Isletas fueron creadas por el volcan Mombacho..."),
    
    CustomStructCell(image: UIImage(named: "topImage3")!, title: "Antiguo Ferrocaril", description: "Fundada en 1886, la Antigua Estación de Ferrocarril, aún se levanta firme, transformando su rol"),
    
    CustomStructCell(image: UIImage(named: "topImage4")!, title: "Vigoron El Gordito", description: "El vigorón mas conocido de la cuidad, plato tipico de Nicaragua y Granada"),
    
    CustomStructCell(image: UIImage(named: "topImage5")!, title: "Reserva natural Volcan Mombacho", description: "La Reserva Natural Volcán Mombacho de Nicaragua, se ubica al sur de la ciudad de Granada y de las Isletas de Granada."),
    
    CustomStructCell(image: UIImage(named: "parqueXalteva")!, title: "Parque Xalteva", description: "Parque comercial histórico. Tiene dos secciones: una de los indígenas o lugareños, la otra era para los españoles"),
    
    CustomStructCell(image: UIImage(named: "topImage1")!, title: "Catedral de Granada", description: "Conoce la cuidad mas antigua de Nicaragua y sus maravillas"),
    
    CustomStructCell(image: UIImage(named: "topImage2")!, title: "Isletas de Granada", description: "Estas Isletas fueron creadas por el volcan Mombacho..."),
    
    CustomStructCell(image: UIImage(named: "topImage3")!, title: "Antiguo Ferrocaril", description: "Fundada en 1886, la Antigua Estación de Ferrocarril, aún se levanta firme, transformando su rol"),
    
    CustomStructCell(image: UIImage(named: "topImage4")!, title: "Vigoron El Gordito", description: "El vigorón mas conocido de la cuidad, plato tipico de Nicaragua y Granada"),
    
    CustomStructCell(image: UIImage(named: "topImage5")!, title: "Reserva natural Volcan Mombacho", description: "La Reserva Natural Volcán Mombacho de Nicaragua, se ubica al sur de la ciudad de Granada y de las Isletas de Granada."),
    
    CustomStructCell(image: UIImage(named: "parqueXalteva")!, title: "Parque Xalteva", description: "Parque comercial histórico. Tiene dos secciones: una de los indígenas o lugareños, la otra era para los españoles")
    ]
    
    
    //Outlets
    @IBOutlet weak var myCollectionView: UICollectionView!
    
   
    
    @IBOutlet weak var searchStackButton: UIButton!
    
    
    @IBOutlet weak var homeStackButton: UIButton!
    
    
    @IBOutlet weak var settingStackButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        myCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        searchStackButton.addTarget(self, action: #selector(searchTapped), for: .touchUpInside)
        /*
        homeStackButton.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)*/
        
        settingStackButton.addTarget(self, action: #selector(settingsTapped), for: .touchUpInside)
        
        /* .addTarget(self, action: #selector(loginTapped), for: .touchUpInside)*/
       
    }
    @objc func searchTapped() {
        
       
        
    }
    
    /*
    @objc func homeTapped(){
        let homeViewController = HomeViewController(nibName: "HomeViewController", bundle: nil)
        navigationController?.pushViewController(homeViewController, animated: true)
    }*/

    @objc func settingsTapped(){
        let settingsViewController = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
        navigationController?.pushViewController(settingsViewController, animated: true)
    }

}
