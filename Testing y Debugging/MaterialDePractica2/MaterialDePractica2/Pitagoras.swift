//
//  Pitagoras.swift
//  MaterialDePractica2
//
//  Created by David Sanchez on 12/10/24.
//

import Foundation

class Pitagoras{
    
    func teoremaDePitagoras(cateto_a: Double, cateto_b: Double) -> Double{
        return sqrt(pow(cateto_a, 2) + pow(cateto_b, 2))
    }
}
