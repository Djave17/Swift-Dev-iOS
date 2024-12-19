//
//  PitagorasTests.swift
//  MaterialDePractica2
//
//  Created by David Sanchez on 12/10/24.
//
import XCTest

class PitagorasTests: XCTestCase {
    
    func testResultado(){
        let calculo = Pitagoras()
        
        let cateto_a = 3.0
        let cateto_b = 4.0
        let hipotenusa_Esperada = 5.0
        
        let hipotenusa = calculo.teoremaDePitagoras(cateto_a: cateto_a, cateto_b: cateto_b)
        
        XCTAssertEqual(hipotenusa, hipotenusa_Esperada, accuracy: 0.0001, "La hipotenusa debe de ser 5.0")
        
    }
    
}
