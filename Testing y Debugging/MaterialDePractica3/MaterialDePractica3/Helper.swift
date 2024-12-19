//
//  Helper.swift
//  MaterialDePractica3
//
//  Created by David Sanchez on 12/10/24.
//

import Foundation


class Helper{
    func compararLongitud(_ cadena1: String, _ cadena2: String) -> String{
        //let diferenciaa = abs(cadena1.count - cadena2.count)
        
        let longitudCadena1 = cadena1.count
        let longitudCadena2 = cadena2.count
        
        let diferencia = abs(longitudCadena1 - longitudCadena2)
        
        if cadena1.count > cadena2.count {
            return "La palabra \(cadena1) es más larga que la palabra \(cadena2) por \(diferencia) letras"
        }
        
        else if cadena1.count < cadena2.count{
            return "La palabra \(cadena2) es más larga que la palabra \(cadena1) por \(diferencia) letras"
        }
        
        else {
            return "La palabras \(cadena1) y la palabra '\(cadena2) son de la misma longitud"
        }
        
    }
}
