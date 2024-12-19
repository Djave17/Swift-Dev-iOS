//
//  HelperTest .swift
//  MaterialDePractica3
//
//  Created by David Sanchez on 12/10/24.
//

import XCTest

final class HelperTest: XCTestCase {
    func testCompararLongitud(){
        let helper = Helper()
        
        let resultado = helper.compararLongitud("Cuatro", "Uno")
        let resultadoEsperado = "La palabra Cuatro es más larga que la palabra Uno por 3 letras"
        XCTAssertEqual(resultado, resultadoEsperado)
        
    }
}
