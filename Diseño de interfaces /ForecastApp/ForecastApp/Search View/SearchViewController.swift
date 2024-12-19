//
//  SearchViewController.swift
//  ForecastApp
//
//  Created by David Sanchez on 14/12/24.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var homeButton: UIButton!
    
    @IBOutlet weak var tabBar: UIStackView!

    @IBOutlet weak var notificationButton: UIButton!
    
    @IBOutlet weak var mapButton: UIButton!
    
    let cities = [
            Cities(location: "Managua, Nicaragua", time: "Now", temperature: "29°C", weatherIconName: "cloud.sun.fill"),
            Cities(location: "León, Nicaragua", time: "5pm", temperature: "28°C", weatherIconName: "cloud.rain.fill"),
            Cities(location: "Granada, Nicaragua", time: "6pm", temperature: "28°C", weatherIconName: "cloud.sun.rain.fill"),
            Cities(location: "Masaya, Nicaragua", time: "7pm", temperature: "27°C", weatherIconName: "cloud.moon.fill"),
            Cities(location: "Estelí, Nicaragua", time: "8pm", temperature: "26°C", weatherIconName: "cloud.moon.rain.fill"),
            Cities(location: "Chinandega, Nicaragua", time: "9pm", temperature: "25°C", weatherIconName: "cloud.fill"),
            Cities(location: "Cuidad Sandino, Nicaragua", time: "5pm", temperature: "28°C", weatherIconName: "cloud.rain.fill"),
            Cities(location: "Carazo, Nicaragua", time: "6pm", temperature: "28°C", weatherIconName: "cloud.sun.rain.fill"),
            Cities(location: "Chontales, Nicaragua", time: "7pm", temperature: "27°C", weatherIconName: "cloud.moon.fill"),
            Cities(location: "San José, Costa Rica", time: "8pm", temperature: "26°C", weatherIconName: "cloud.moon.rain.fill"),
            Cities(location: "Heredia, Costa Rica", time: "9pm", temperature: "25°C", weatherIconName: "cloud.fill"),
            Cities(location: "San Pedro Sula, Honduras", time: "7pm", temperature: "27°C", weatherIconName: "cloud.moon.fill"),
            Cities(location: "Tegucigalpa, Honduras", time: "8pm", temperature: "26°C", weatherIconName: "cloud.moon.rain.fill"),
            Cities(location: "Madrid, España", time: "9pm", temperature: "25°C", weatherIconName: "cloud.fill"),
            Cities(location: "CDMX, Mexico", time: "7pm", temperature: "27°C", weatherIconName: "cloud.moon.fill"),
            
        ]

        var filteredCities: [Cities] = []
        let tableView = UITableView()
        let searchBar = UISearchBar()

        override func viewDidLoad() {
            super.viewDidLoad()
            setupSearchBar()
            setupTableView()
            filteredCities = cities
            setupTabBar()
            
            navigationItem.hidesBackButton = true
        }

        func setupSearchBar() {
            searchBar.delegate = self
            searchBar.placeholder = "Search cities..."
            searchBar.sizeToFit()
            searchBar.tintColor = .white
            
            if let textField = searchBar.value(forKey: "searchField") as? UITextField {
                textField.textColor = UIColor.white  // Color del texto
                textField.attributedPlaceholder = NSAttributedString( string: "Search cities...",
                    attributes:[NSAttributedString.Key.foregroundColor: UIColor.lightGray]  // Color del placeholder
                )
                }
            
            navigationItem.titleView = searchBar
        }

    func setupTableView() {
        // Remover el frame inicial ya que usaremos constraints
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CityCell")
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        
        // Agregar el tableView antes de activar constraints
        view.addSubview(tableView)
        
        // Activar constraints asegurando espacio para el tab bar
        NSLayoutConstraint.activate([
           
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),

            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            // Bottom constraint hasta el tab bar con padding
            tableView.bottomAnchor.constraint(equalTo: tabBar.topAnchor, constant: -10)
        ])
    }

    func setupBackground() {
        // Establecer un fondo similar al de la imagen
        let backgroundImageView = UIImageView(frame: view.bounds)
        backgroundImageView.image = UIImage(named: "mesh-gradient")
        backgroundImageView.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImageView, at: 0)
    }
    private func setupTabBar() {
        tabBar.tintColor = .white
        tabBar.layer.masksToBounds = true
        tabBar.layer.cornerRadius = 20
            
    }
    
    @IBAction func tapOnHomeButton(_ sender: Any) {
        
        let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
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


    // MARK: - UITableViewDataSource, UITableViewDelegate
    extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return filteredCities.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath)
            let city = filteredCities[indexPath.row]
            
            // Configurar el texto y la imagen
            cell.textLabel?.text = "\(city.location) - \(city.time) - \(city.temperature)"
            cell.textLabel?.textColor = .white
            cell.imageView?.image = UIImage(systemName: city.weatherIconName)
            cell.imageView?.image?.withTintColor(.white)
            
            // Fondo transparente para la celda
            cell.backgroundColor = .clear
            
            let selectedBackgroundView = UIView()
            selectedBackgroundView.backgroundColor = UIColor.lightText.withAlphaComponent(0.2)
            cell.selectedBackgroundView = selectedBackgroundView


            return cell
        }
    }

    // MARK: - UISearchBarDelegate
    extension SearchViewController: UISearchBarDelegate {
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            
            if searchText.isEmpty {
                filteredCities = cities
            } else {
                filteredCities = cities.filter { $0.location.lowercased().contains(searchText.lowercased()) }
            }
            tableView.reloadData()
        }
    }
