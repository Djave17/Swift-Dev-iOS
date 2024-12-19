//
//  Vocales.swift
//  Pruebas_Unitarias_ DavidSanchez
//
//  Created by David Sanchez on 14/10/24.
//

import Foundation

class Vocales {
    func contarVocalesDeUnaCadena(_ cadena: String) -> Int{
        let vocales: Set<Character>  = ["a", "e", "i", "o", "u"]
        let cadenas = String(cadena.lowercased().filter { $0.isLetter })
        
        
        return cadenas.filter{vocales.contains($0)} .count
    }
}
