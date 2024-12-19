//
//  TestPalindromo .swift
//  Pruebas_Unitarias_ DavidSanchez
//
//  Created by David Sanchez on 14/10/24.
//

import XCTest
import Foundation

//a. Reconocer, anilina, radar
//Crea la prueba unitaria para evaluar si una frase es un palíndromo.
//a. Anita lava la tina
//b. Roma ni se conoce sin oro, ni se conoce sin amor
final class TestNumeroPalindromo: XCTestCase {
    let palindromo = Palidromo()
    
    func testPalindromoReconocer() {
       
        let resultado = palindromo.isPalindromo("Reconocer")
        XCTAssertTrue(resultado)
        
    }
    func testPalindromoAnilina() {
       
        let resultado = palindromo.isPalindromo("Anilina")
        XCTAssertTrue(resultado)
        
    }
    
    func testPalindromoRadar() {
       
        let resultado = palindromo.isPalindromo("Radar")
        XCTAssertTrue(resultado)
        
    }
    func testPalindromoAnita() {
       
        let resultado = palindromo.isPalindromo("Anita lava la tina")
        XCTAssertTrue(resultado)
        
    }
    func testPalindromoRoma() {
       
        let resultado = palindromo.isPalindromo("Roma ni se conoce sin oro, ni se conoce sin amor")
        XCTAssertTrue(resultado)
        
    }
    
    
}
