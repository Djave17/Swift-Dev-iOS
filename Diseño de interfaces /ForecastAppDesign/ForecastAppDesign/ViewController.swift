//
//  ViewController.swift
//  ForecastAppDesign
//
//  Created by David Sanchez on 13/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "Mumbai, India"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "29°C"
        label.font = .systemFont(ofSize: 64, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weatherDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Expect high rain today."
        label.font = .systemFont(ofSize: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let metricsStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let forecastCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 80, height: 100)
        layout.minimumInteritemSpacing = 10
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.register(HourlyForecastCell.self, forCellWithReuseIdentifier: "ForecastCell")
        return collection
    }()
    
    private let bottomNavigationBar: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.backgroundColor = UIColor(white: 1, alpha: 0.1)
        stack.layer.cornerRadius = 20
        stack.layoutMargins = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .black
        
        // Añadir subvistas
        view.addSubview(locationLabel)
        view.addSubview(temperatureLabel)
        view.addSubview(weatherDescriptionLabel)
        view.addSubview(metricsStackView)
        view.addSubview(forecastCollectionView)
        view.addSubview(bottomNavigationBar)
        
        // Configurar constraints
        NSLayoutConstraint.activate([
            // Location Label
            locationLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            locationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // Temperature Label
            temperatureLabel.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 100),
            temperatureLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // Weather Description
            weatherDescriptionLabel.topAnchor.constraint(equalTo: temperatureLabel.bottomAnchor, constant: 10),
            weatherDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // Metrics Stack View
            metricsStackView.topAnchor.constraint(equalTo: weatherDescriptionLabel.bottomAnchor, constant: 30),
            metricsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            metricsStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            // Forecast Collection View
            forecastCollectionView.topAnchor.constraint(equalTo: metricsStackView.bottomAnchor, constant: 40),
            forecastCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            forecastCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            forecastCollectionView.heightAnchor.constraint(equalToConstant: 120),
            
            // Bottom Navigation Bar
            bottomNavigationBar.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            bottomNavigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            bottomNavigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            bottomNavigationBar.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        setupMetricsStack()
        setupBottomNavigation()
        
        forecastCollectionView.delegate = self
        forecastCollectionView.dataSource = self
    }
    
    private func setupMetricsStack() {
        let metrics = [
            ("11km/hr", "wind"),
            ("02%", "humidity"),
            ("8hr", "sun")
        ]
        
        metrics.forEach { text, icon in
            let container = UIView()
            
            let label = UILabel()
            label.text = text
            label.textColor = .white
            label.font = .systemFont(ofSize: 14)
            label.translatesAutoresizingMaskIntoConstraints = false
            
            container.addSubview(label)
            
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: container.centerXAnchor),
                label.centerYAnchor.constraint(equalTo: container.centerYAnchor)
            ])
            
            metricsStackView.addArrangedSubview(container)
        }
    }
    
    private func setupBottomNavigation() {
        let items = ["house", "magnifyingglass", "bell", "map"]
        
        items.forEach { iconName in
            let button = UIButton()
            button.setImage(UIImage(systemName: iconName), for: .normal)
            button.tintColor = .white
            bottomNavigationBar.addArrangedSubview(button)
        }
    }
}

// MARK: - UICollectionView DataSource & Delegate
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ForecastCell", for: indexPath) as! HourlyForecastCell
        
        let times = ["Now", "5pm", "6pm", "7pm"]
        let temperatures = ["29°", "28°", "28°", "27°"]
        
        cell.configure(time: times[indexPath.row], temperature: temperatures[indexPath.row])
        return cell
    }
}

