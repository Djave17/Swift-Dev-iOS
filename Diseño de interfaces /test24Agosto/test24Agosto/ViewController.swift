//
//  ViewController.swift
//  test24Agosto
//
//  Created by David Sanchez on 24/8/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
       setUI()
    }
    
    func setUI(){
        
        let title = UILabel()
        title.text = "Bienvenidos"
        title.font = UIFont.boldSystemFont(ofSize: 28)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.numberOfLines = 0
        title.textAlignment = .center
        title.textColor = .black
        
        view.addSubview(title)
        
        //SUBTITLE LABEL
        let subtitle = UILabel()
        subtitle.text = "Al desarrollo de aplicaciciones moviles iOS"
        subtitle.textAlignment = .center
        subtitle.font = UIFont.systemFont(ofSize: 18)
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(subtitle)
        
        let myButton = UIButton()
        myButton.setTitle("Click", for: .normal)
        myButton.setTitleColor(.systemBlue, for: .normal)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.backgroundColor = .systemTeal
        myButton.layer.cornerRadius =  8
        
    
        
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
        
            subtitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 20),
            
            
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.topAnchor.constraint(equalTo: subtitle.bottomAnchor, constant: 20),
            myButton.widthAnchor.constraint(equalToConstant: 150)
            
        ])
    }
    
    @objc func buttonPressed(){
        let secondViewController = SecondViewController()
        
        navigationController?.pushViewController(secondViewController, animated: true)
    }

}

