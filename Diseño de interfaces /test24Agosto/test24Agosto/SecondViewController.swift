//
//  SecondViewController.swift
//  test24Agosto
//
//  Created by David Sanchez on 24/8/24.
//

import UIKit

struct MyCustomStructModel{
    let imageView: UIImage
    let title: String
    let subtitle: String
}



class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let myCellModel: [MyCustomStructModel] = {[
        
        MyCustomStructModel(imageView: UIImage(named: "image1")!, title: "Listening to green grass of tunnel", subtitle: "Mum - Finally we are no one 2022"),
        MyCustomStructModel(imageView: UIImage(named: "image2")!, title: "Listening to green grass of tunnel", subtitle: "Mum - Finally we are no one 2022"),
        MyCustomStructModel(imageView: UIImage(named: "image3")!, title: "Listening to green grass of tunnel", subtitle: "Mum - Finally we are no one 2022"),
        MyCustomStructModel(imageView: UIImage(named: "image4")!, title: "Listening to green grass of tunnel", subtitle: "Mum - Finally we are no one 2022"),

        
        
        
        
        
    ]}()
    
    let topContainerView = UIView()
    let bottomContainerView = UIView()
    
    let profilePhotoView = UIImageView()
    let nameLabel = UILabel()
    let descriptionLabel = UILabel()
    
    // Elementos de stackview
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

    
    func setUI(){
        setupTopContainerView()
        setupBottomContainerView()
        setupProfilePhotoView()
        setupNameLabel()
        setupDescriptionLabel()
        setupStackView()
    }
    func setupTopContainerView(){
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
    
    
    func setupBottomContainerView(){
        
        bottomContainerView.backgroundColor = .red
        bottomContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bottomContainerView)
        
        NSLayoutConstraint.activate([
            bottomContainerView.topAnchor.constraint(equalTo: topContainerView.bottomAnchor),
            bottomContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
        
        //config de collectionView
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 16
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        myCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        myCollectionView.backgroundColor = .white
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        myCollectionView.register(MyCustomCollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        
        bottomContainerView.addSubview(myCollectionView)
        
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            myCollectionView.topAnchor.constraint(equalTo: view.centerYAnchor),
            myCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            myCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            myCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
            
        
        
        
        ])
        
    }
    
    func setupProfilePhotoView(){
        profilePhotoView.image = UIImage(named: "profilePhoto")
        profilePhotoView.translatesAutoresizingMaskIntoConstraints = false
        profilePhotoView.layer.cornerRadius = 145/2
        profilePhotoView.layer.masksToBounds = true
        
        topContainerView.addSubview(profilePhotoView)
        
        NSLayoutConstraint.activate([
            
            profilePhotoView.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor),
            profilePhotoView.centerYAnchor.constraint(equalTo: topContainerView.centerYAnchor,constant: -30),
            
            profilePhotoView.widthAnchor.constraint(equalToConstant: 145),
            profilePhotoView.heightAnchor.constraint(equalToConstant: 145)
        
        
        ])
    }
    
    func setupNameLabel(){
        nameLabel.text = "Laura Kalbag"
        nameLabel.textColor = .white
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        topContainerView.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profilePhotoView.bottomAnchor, constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: profilePhotoView.centerXAnchor)

        
        ])
        
    }
    
    func setupDescriptionLabel(){
        descriptionLabel.text =  "Love the way music makes me feel"
        descriptionLabel.textColor = .white
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        
        topContainerView.addSubview(descriptionLabel)
                                                  
                                                  
        NSLayoutConstraint.activate([
            
            descriptionLabel.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20)
        
        ])
    }
    
    func setupStackView(){
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
            musicIcon,musicNumber,
            peopleIcon,peopleNumber,
            heartIcon,heartNumber
        ])
        
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 20
        
        topContainerView.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topContainerView.topAnchor, constant: 400),
            stackView.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor, constant: -10)

            
        
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
}

class MyCustomCollectionViewCell: UICollectionViewCell{
    let iconImageView = UIImageView()
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.clipsToBounds = true
        iconImageView.layer.cornerRadius = 25
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(iconImageView)
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        contentView.addSubview(titleLabel)
        
        subtitleLabel.font = UIFont.boldSystemFont(ofSize: 14)
        subtitleLabel.textColor = .gray
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(subtitleLabel)
        
        NSLayoutConstraint.activate([
            iconImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 16),
            iconImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 50),
            iconImageView.heightAnchor.constraint(equalToConstant: 50),
            
            titleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            subtitleLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 16),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            subtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
            
            
        
        ])
    }
    func config(model: MyCustomStructModel){
        iconImageView.image = model.imageView
        titleLabel.text = model.title
        subtitleLabel.text = model.subtitle
    }
    
    required init?(coder: NSCoder){
        fatalError("init(Coder): Fatal error")
    }
}
