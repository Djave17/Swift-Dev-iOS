//
//  SecondViewController.swift
//  Practice04
//
//  Created by Junior Escoto on 8/24/24.
//

import UIKit

struct MyCustomStructModel {
    
    let imageView: UIImage
    let title: String
    let subititle: String
}

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    
    let myCellModel: [MyCustomStructModel] = [
        
        MyCustomStructModel(imageView: UIImage(named: "image1")!, title: "Listening to green grass of tunnel", subititle: "Mum - Finaly we are no one 2022"),
        
        MyCustomStructModel(imageView: UIImage(named: "image2")!, title: "Listening to count your blessings", subititle: "Johnson Oatman - evenings 2012"),
        
        MyCustomStructModel(imageView: UIImage(named: "image3")!, title: "Listening to Daydream", subititle: "chris lock - fir sure 2009"),
        
        MyCustomStructModel(imageView: UIImage(named: "image4")!, title: "Listening to green grass of tunnel", subititle: "Mum - Finaly we are no one 2022"),
        
        
        MyCustomStructModel(imageView: UIImage(named: "image1")!, title: "Listening to green grass of tunnel", subititle: "Mum - Finaly we are no one 2022"),
        
        MyCustomStructModel(imageView: UIImage(named: "image2")!, title: "Listening to count your blessings", subititle: "Johnson Oatman - evenings 2012"),
        
        MyCustomStructModel(imageView: UIImage(named: "image3")!, title: "Listening to Daydream", subititle: "chris lock - fir sure 2009"),
        
        MyCustomStructModel(imageView: UIImage(named: "image4")!, title: "Listening to green grass of tunnel", subititle: "Mum - Finaly we are no one 2022")
    
    
    ]
  
    // contenedores
    let topContainerView = UIView()
    let bottomContainerView = UIView()
    
    
    // Elementos de mi primer contenedor
    let profilePhotoView = UIImageView()
    let nameLabel = UILabel()
    let descriptionLabel = UILabel()
    
    
    // elementos de mi stack view
    
    let musicIcon = UIImageView()
    let musicNumber = UILabel()
    
    let peopleIcon = UIImageView()
    let peopleNumber = UILabel()
    
    let heartIcon = UIImageView()
    let heartNumber = UILabel()
    
    
    var myCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        setUI()
        
    }
    
    
    func setUI() {
        
        setupTopContainerView()
        setupBottonContainerView()
        
        setupProfilePhotoView()
        
        setupStackView()
       
    }
    
    
    func setupTopContainerView() {
        
        topContainerView.backgroundColor = UIColor(red: 204/255, green: 92/255, blue: 76/255, alpha: 1)
        topContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(topContainerView)
        
        
        NSLayoutConstraint.activate([
            
            
            topContainerView.topAnchor.constraint(equalTo: view.topAnchor),
            topContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            topContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
        
    
        ])
        
    }
    
    
    func setupBottonContainerView() {
        
        bottomContainerView.backgroundColor = .white
        bottomContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bottomContainerView)
        
        
        NSLayoutConstraint.activate([
            
            bottomContainerView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor),
            
            bottomContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 16
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        
        // configuracion de mi collectionView
        
        myCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        myCollectionView.backgroundColor = .white
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        myCollectionView.register(MyCustomCollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        
        
        bottomContainerView.addSubview(myCollectionView)
        
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            myCollectionView.topAnchor.constraint(equalTo: view.centerYAnchor),
            myCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            myCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            myCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
        
        
        
    }
    
    
    func setupProfilePhotoView() {
        
        profilePhotoView.image = UIImage(named: "profilePhoto")
        profilePhotoView.layer.cornerRadius = 75
        profilePhotoView.layer.masksToBounds = true
        profilePhotoView.translatesAutoresizingMaskIntoConstraints = false
        
        
        topContainerView.addSubview(profilePhotoView)
        
        
        NSLayoutConstraint.activate([
            
            profilePhotoView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor),
            profilePhotoView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor, constant: -30),
            
            
            profilePhotoView.widthAnchor.constraint(equalToConstant: 150),
            profilePhotoView.heightAnchor.constraint(equalToConstant: 150)
        
        
        ])
        
        nameLabel.text = "Laura Kalbag"
        nameLabel.textColor = .white
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        topContainerView.addSubview(nameLabel)
        
        
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: profilePhotoView.bottomAnchor, constant: 20),
            nameLabel.centerXAnchor.constraint(equalTo: profilePhotoView.centerXAnchor)
        
        ])
        
        
        descriptionLabel.text  = "Love the way music makes me feel"
        descriptionLabel.textColor = .white
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        
        topContainerView.addSubview(descriptionLabel)
        
        
        NSLayoutConstraint.activate([
            
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            descriptionLabel.centerXAnchor.constraint(equalTo: nameLabel.centerXAnchor)
        
        ])
        
    }
    
    
    func setupStackView() {
        
        
        musicIcon.image = UIImage(systemName: "music.note")
        musicNumber.text = "127"
        musicNumber.textColor = .white
        
        peopleIcon.image = UIImage(systemName: "person.2.fill")
        peopleNumber.text = "2261"
        peopleNumber.textColor = .white
        
        heartIcon.image = UIImage(systemName: "heart.fill")
        heartNumber.text = "5531"
        heartNumber.textColor = .white
    
        let stackView = UIStackView(arrangedSubviews: [
            
            musicIcon, musicNumber,
            peopleIcon, peopleNumber,
            heartIcon, heartNumber
        
        ])
        
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 20
        
        topContainerView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
           // stackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor, constant: -10)
        
        ])
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myCellModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! MyCustomCollectionViewCell
        
        cell.config(model: myCellModel[indexPath.row])
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 100)
    }
    
    
}


class MyCustomCollectionViewCell: UICollectionViewCell {
    
    let iconImageView = UIImageView()
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        iconImageView.contentMode = .scaleAspectFill
        // iconImageView.clipsToBounds = true
        iconImageView.layer.masksToBounds = true
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.layer.cornerRadius = 30
        contentView.addSubview(iconImageView)
        
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        
        subtitleLabel.font = UIFont.boldSystemFont(ofSize: 14)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.textColor = .gray
        contentView.addSubview(subtitleLabel)
        
        
        
        NSLayoutConstraint.activate([
            
            
            iconImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            iconImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 60),
            iconImageView.heightAnchor.constraint(equalToConstant: 60),
            
            titleLabel.trailingAnchor.constraint(equalTo: iconImageView.leadingAnchor, constant: 50),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            
            
            subtitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            subtitleLabel.trailingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 50)
        
        ])
        
    }
    
    
    func config(model: MyCustomStructModel) {
        
        iconImageView.image = model.imageView
        titleLabel.text = model.title
        subtitleLabel.text = model.subititle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
