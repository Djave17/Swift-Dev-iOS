//
//  NumeroImpar.swift
//  Pruebas_Unitarias_ DavidSanchez
//
//  Created by David Sanchez on 14/10/24.
//

import Foundation

class NumeroImpar{
    func calcularNumeroImpar(_ numero: Int) -> Bool{
        if numero % 2 == 0 {
            return true
        }
        else {
            return false
        }
    }
}
