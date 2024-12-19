//
//  NetworkErrors.swift
//  UiNetworkError
//
//  Created by David Sanchez on 9/11/24.
//

import UIKit

enum NetworkErrors: LocalizedError {
    case noInternetConection
    case emptyData
    case invalidURL
    case malformedData
    case invalidRequest
    
    var errorDescription : String?
    {
        switch self {
            
        case .noInternetConection:
            "No hay conexion"
        
        case .emptyData:
            "Sin data "
        case .invalidURL:
            "URL Invalida"
        case .malformedData:
            "Data corrupta"
        case .invalidRequest:
            "Petición invalida"
        }
    }
    
    var failureReason: String? {
        switch self {
            
        case .noInternetConection:
            "Dispositivo no conectado a internet. Se requiere WIFI o una red 4G para este servicio"
        case .emptyData:
            "La solicitud ha retornado un paquete vacío"
        case .invalidURL:
            "La URL es invalida"
        case .malformedData:
            "Data no convertible"
        case .invalidRequest:
            "Peticion invalida, no puede procesar peticion"
        }
    }
}
