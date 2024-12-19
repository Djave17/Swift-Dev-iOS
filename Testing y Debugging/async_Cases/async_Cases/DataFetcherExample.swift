//
//  DataFetcherExample.swift
//  async_Cases
//
//  Created by David Sanchez on 19/10/24.
//
import Foundation

class DataFetcherExample {
    
    func fetchData(completion: @escaping (String?, Error?) -> Void){
        //Simulamos una llamada asincrona
        // Simulamos una llamada asincrona
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            // Devuelve los datos simulados después de 2 segundos completion ("Fetched Data", nil)
            completion("Fetched Data", nil)
            
        }
        
    }
    func fetchData() async throws -> String {
        // Simula una llamada asíncrona try await Task. sleep(nanoseconds: 2_000_000_000)
        
        try await Task.sleep(nanoseconds: 2_000_000_000)
        
        return "Fetched Data"
    }
}
