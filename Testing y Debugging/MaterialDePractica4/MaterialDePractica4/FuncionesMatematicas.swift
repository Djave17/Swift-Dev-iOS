//
//  FuncionesMatematicas.swift
//  MaterialDePractica4
//
//  Created by David Sanchez on 12/10/24.
//

import Foundation

class FuncionesMatematicas {
    func calcularTrapecio(_ base1: Double, _ base2: Double, _ altura: Double) -> Double {
        return (base1 + base2) * altura / 2
    }
    func calcularRombo(_ diagonalMayor: Double, _ diagonalMenor: Double) -> Double {
        return (diagonalMayor * diagonalMenor) / 2
    }
    func calcularCirculo(_ radio: Double) -> Double {
        return Double.pi * pow(radio, 2)
    }
}
