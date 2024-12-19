//
//  FuncionesMatematicasTest.swift
//  MaterialDePractica4
//
//  Created by David Sanchez on 12/10/24.
//

import XCTest
@testable import MaterialDePractica4

final class FuncionesMatematicasTest: XCTestCase {
//    func calcularTrapecio(_ base1: Double, _ base2: Double, _ altura: Double) -> Double {
//        return (base1 + base2) * altura / 2
//    }
//    func calcularRombo(_ diagonalMayor: Double, _ diagonalMenor: Double) -> Double {
//        return (diagonalMayor * diagonalMenor) / 2
//    }
//    func calcularCirculo(_ radio: Double) -> Double {
//        return Double.pi * pow(radio, 2)
//    }
    
    var funcionesMatematicas: FuncionesMatematicas!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        funcionesMatematicas = FuncionesMatematicas()
    }
    
    override func setUp() {
        super.setUp()
    }
    
    func testCalcularTrapecio(){
        let base1: Double = 10
        let base2: Double = 20
        let altura: Double = 30
        
        let resultadoEsperado: Double = 450
        
        let resultado = funcionesMatematicas.calcularTrapecio(base1, base2, altura)
        XCTAssertEqual(resultado, resultadoEsperado)
    }
    
    func testCalcularRombo(){
        let diagonalMayor: Double = 10
        let diagonalMenor: Double = 20
        let resultadoEsperado: Double = 100
        
        let resultado = funcionesMatematicas.calcularRombo(diagonalMayor, diagonalMenor)
    }
    
    func testCalcularCirculo(){
        let radio: Double = 10
        
        let resultadoEsperado: Double = 314.159
        
        let resultado = funcionesMatematicas.calcularCirculo(radio)
        XCTAssertEqual(resultado, resultadoEsperado, accuracy: 0.001)
        
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}
