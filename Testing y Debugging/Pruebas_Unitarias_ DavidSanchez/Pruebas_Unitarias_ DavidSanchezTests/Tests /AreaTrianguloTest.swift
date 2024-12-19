//
//  AreaTrianguloTest.swift
//  Pruebas_Unitarias_ DavidSanchez
//
//  Created by David Sanchez on 14/10/24.
//

import XCTest
import Foundation
final class AreaTrianguloTest: XCTestCase{
    func testCalcularAreaDelTriangulo(){
        let areaTriangulo = AreaTriangulo()
        
        let resultado = areaTriangulo.calcularAreaDelTriangulo(10, 30)
        let resultadEsperado: Double = 150
        
        XCTAssertEqual(resultado, resultadEsperado, accuracy: 0.0001, "El area del triangulo deberia ser 150")
    }
}
