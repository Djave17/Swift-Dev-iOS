//
//  UIError.swift
//  UiNetworkError
//
//  Created by David Sanchez on 9/11/24.
//

import UIKit
 
final class UIError {
    
    static func showAlert(error: Error, in viewController: UIViewController)
    {
        let alert = UIAlertController{title: "Ocurrió un error" ,
            message: (error as? LocalizedError)?.errorDescription,
            preferredStyle: .alert}
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        viewController.present(alert, animated: true)
    }
}
