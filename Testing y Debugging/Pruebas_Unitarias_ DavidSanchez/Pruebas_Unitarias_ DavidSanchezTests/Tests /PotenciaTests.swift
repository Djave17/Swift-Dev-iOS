//
//  PotenciaTests.swift
//  Pruebas_Unitarias_ DavidSanchez
//
//  Created by David Sanchez on 14/10/24.
//

import XCTest
import Foundation

class PotenciaTests: XCTestCase {
     
    func testPotencia() {
        let potencia = Potencia()
        let resultado = potencia.potenciaDeUnNumero(10, 0)
        let resultado_Esperado: Double = 1
        
        XCTAssertEqual(resultado, resultado_Esperado, "El numero 10 a la pontencia 0 deberia de ser \(resultado_Esperado)")
        
    }
}


