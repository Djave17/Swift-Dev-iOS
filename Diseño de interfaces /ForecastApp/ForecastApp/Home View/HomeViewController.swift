//
//  ViewController.swift
//  ForecastApp
//
//  Created by David Sanchez on 13/12/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var homeView: UIView!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var weatherIconImageView: UIImageView!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var metricsStackView: UIStackView!
    
    @IBOutlet weak var hourlyForecastCollectionView: UICollectionView!
    
    @IBOutlet weak var tabBar: UIStackView!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var notificationButton: UIButton!
    
    @IBOutlet weak var mapButton: UIButton!
    
    let myForecastCell: [ForecastCell] = [
        ForecastCell(time: "Now", temperature: "30", weatherIconName: "cloud.sun.rain.fill"),
        ForecastCell(time: "5pm", temperature: "28°", weatherIconName: "cloud.sun.rain.fill"),
        ForecastCell(time: "6pm", temperature: "28°", weatherIconName: "cloud.rain.fill"),
        ForecastCell(time: "7pm", temperature: "27", weatherIconName: "cloud.moon.rain.fill"),
        ForecastCell(time: "8pm", temperature: "26", weatherIconName: "cloud.moon.rain.fill"),
        ForecastCell(time: "9pm", temperature: "26°", weatherIconName: "cloud.moon.fill"),
        ForecastCell(time: "10pm", temperature: "30", weatherIconName: "cloud.sun.rain.fill"),
        ForecastCell(time: "11pm", temperature: "28°", weatherIconName: "cloud.sun.rain.fill"),
        ForecastCell(time: "12am", temperature: "28°", weatherIconName: "cloud.rain.fill"),
        ForecastCell(time: "1am", temperature: "27", weatherIconName: "cloud.moon.rain.fill"),
        ForecastCell(time: "2am", temperature: "26", weatherIconName: "cloud.moon.rain.fill"),
        ForecastCell(time: "3am", temperature: "26°", weatherIconName: "cloud.moon.rain.fill")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHourlyForecastCollectionView()
        setupTabBar()
        navigationItem.hidesBackButton = true
        
    }
    
    private func setupHourlyForecastCollectionView() {
        hourlyForecastCollectionView.dataSource = self
        hourlyForecastCollectionView.delegate = self
        
        // Registrar la celda del Storyboard
        hourlyForecastCollectionView.register(UINib(nibName: "HourlyForecastCell", bundle: nil), forCellWithReuseIdentifier: "HourlyForecastCell")
        
        if let flowLayout = hourlyForecastCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumInteritemSpacing = 10
            flowLayout.collectionView?.layer.masksToBounds = true
            flowLayout.collectionView?.layer.cornerRadius = 15
            flowLayout.collectionView?.layer.borderColor =
                .init(gray: 1, alpha: 0.1)
            flowLayout.collectionView?.backgroundColor = UIColor.black
            flowLayout.collectionView?.backgroundColor = .clear
            flowLayout.collectionView?.backgroundView = nil
        }
        
//        let backgroundImageView = UIImageView(image: UIImage(named: "mesh-gradient"))
//            backgroundImageView.contentMode = .scaleAspectFill
//            hourlyForecastCollectionView.backgroundView = backgroundImageView
        
    }
    
    private func setupTabBar() {
    
        
        tabBar.tintColor = .white
        tabBar.layer.masksToBounds = true
        tabBar.layer.cornerRadius = 20
        
    }
    
    @IBAction func tapOnSearchButton(_ sender: Any) {
        
        let searchViewController = SearchViewController()
        navigationController?.pushViewController(searchViewController, animated: true)
    }
    
    
    @IBAction func tapOnNotificationsButton(_ sender: Any) {
        
        let notificationsViewController = NotificationsViewController()
        navigationController?.pushViewController(notificationsViewController, animated: true)
    }
    
    @IBAction func tapOnMapButton(_ sender: Any) {
        let mapViewController = MapViewController()
        navigationController?.pushViewController(mapViewController, animated: true)
    }
    
    
    
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myForecastCell.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HourlyForecastCell", for: indexPath) as? HourlyForecastCell else {
            fatalError("Unable to dequeue HourlyForecastCell")
        }
        
        let forecast = myForecastCell[indexPath.item]
        cell.configure(with: forecast)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 105, height: 125)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) // Márgenes alrededor de las celdas
        }
    }
}

