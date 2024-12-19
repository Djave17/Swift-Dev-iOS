//
//  LoginController.swift
//  APIAppUAMExample
//
//  Created by Macbook on 4/10/24.
//

import Foundation

final class LoginController {
    private let apiDataSource = APIDataSource()
    
    func login(username: String, password: String) async -> LoginResponse? {
        await apiDataSource.logIn(username: username, password: password)
    }
}
