//
//  ViewController.swift
//  UiNetworkError
//
//  Created by David Sanchez on 9/11/24.
//

import UIKit

class ViewController: UIViewController {

    
    let dataRequest = Network()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Task{
            do {
                let result = try await dataRequest.fetchData()
                debugPrint(result)
            }
            catch {
                debugPrint(error.localizedDescription)
            }
        }
        
    }


}

