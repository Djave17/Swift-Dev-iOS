//
//  Network.swift
//  UiNetworkError
//
//  Created by David Sanchez on 9/11/24.
//

import UIKit

final class Network {
    
    
    func fetchData() throws -> String {
        guard validateInternet() else {
            print("No está contectado a internet")
            throw NetworkErrors.noInternetConection
        }
            
            let data  = ""
            guard !data.isEmpty else{
                throw NetworkErrors.emptyData
            }
            
            return data
    
    }
    
    
    func validateInternet() -> Bool {
        return false
    }
}


