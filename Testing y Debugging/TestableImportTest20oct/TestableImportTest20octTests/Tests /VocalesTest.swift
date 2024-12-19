//
//  VocalesTest.swift
//  Pruebas_Unitarias_ DavidSanchez
//
//  Created by David Sanchez on 14/10/24.
//

import XCTest
import Foundation
@testable import TestableImportTest20oct

final class VocalesTest: XCTestCase {
    let vocales = Vocales()
    func testVocalesHolaMundo(){
        let resultado = vocales.contarVocalesDeUnaCadena("Hola Mundo")
        let resultadoEsperado = 4
        
        XCTAssertEqual(resultado, resultadoEsperado, "Hola Mundo deberia contener 4 vocales")
    }
    
    func testVocalesBcdfghjkl(){
        let resultado = vocales.contarVocalesDeUnaCadena("bcdfghjkl")
        let resultadoEsperado = 0
        
        XCTAssertEqual(resultado, resultadoEsperado, "bcdfghjkl deberia contener 0 vocales")
    }
}
