//
//  ViewController.swift
//  Practice04
//
//  Created by Junior Escoto on 8/24/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        setUI()
        
    }
    
    
    
    func setUI() {
        
        
        let title = UILabel()
        title.text = "Bienvenidos"
        title.textColor = .black
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.boldSystemFont(ofSize: 28)
        title.numberOfLines = 0
        title.textAlignment = .center
        
        view.addSubview(title)
        
        
        let subtitle = UILabel()
        subtitle.text = "Este es un ejemplo de subtitle"
        subtitle.textAlignment = .center
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(subtitle)
        
        
        let myButton = UIButton()
        myButton.setTitle("Click", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.backgroundColor = .brown
        myButton.layer.cornerRadius = 8
        
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        
        
        NSLayoutConstraint.activate([
            
            title.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            
            subtitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            subtitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 20),
            
            // button
            
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.topAnchor.constraint(equalTo: subtitle.bottomAnchor, constant: 20),
            
            myButton.widthAnchor.constraint(equalToConstant: 150)
        
        
        ])
        
        
    }
    
    @objc func buttonPressed() {
        
        
        let secondViewController = SecondViewController()
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
        
        
    }

}

