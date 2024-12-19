//
//  MapViewController.swift
//  ForecastApp
//
//  Created by David Sanchez on 14/12/24.
//

import UIKit

class MapViewController: UIViewController {

    @IBOutlet weak var tabBar: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapOnHomeButton(_ sender: Any) {
        
        let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    
    
    @IBAction func tapOnNotificationsButton(_ sender: Any) {
        
        let notificationsViewController = NotificationsViewController()
        navigationController?.pushViewController(notificationsViewController, animated: true)
    }
    
    @IBAction func tapOnSearchButton(_ sender: Any) {
        
        let searchViewController = SearchViewController()
        navigationController?.pushViewController(searchViewController, animated: true)
    }
    private func setupTabBar() {
        tabBar.tintColor = .white
        tabBar.layer.masksToBounds = true
        tabBar.layer.cornerRadius = 20
            
    }
    
    
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


