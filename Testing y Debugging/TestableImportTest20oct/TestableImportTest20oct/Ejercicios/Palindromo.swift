//
//  Palindromo.swift
//  Pruebas_Unitarias_ DavidSanchez
//
//  Created by David Sanchez on 14/10/24.
//

class Palidromo{
    // Funcion para recibir cadena y retirnar un valor booleano de si es palindromo o no
    func isPalindromo(_ cadena: String) -> Bool {
        //        let cadenaSinEspacios = cadena.replacingOccurrences(of: " ", with: "")
        //        let cadenaInvertida = String(cadenaSinEspacios.reversed())
        
        let cadenaProcesada = cadena
            .lowercased()
            .filter{$0.isLetter}
        
        // Invertimos la cadena
        let cadenaInvertida = String(cadenaProcesada.reversed())
        
        // Comparamos la cadena procesada con su versión invertida
        return cadenaProcesada == cadenaInvertida
    }
}
