//
//  PersonaTest.swift
//  MaterialDePractica1
//
//  Created by David Sanchez on 12/10/24.
//

import XCTest

class PersonaTest: XCTestCase {
    
    
    //Verificaar si el  nombre es correcto
    func testNombre (){
        let persona = Persona(nombre: "Rodrigo", edad: 25)
        XCTAssertEqual(persona.nombre, "Rodrigo", "El nombre deberia ser rodrigo")
    }
    
    func testEdad() {
        let persona = Persona(nombre: "Rodrigo", edad: 25)
        XCTAssertEqual(persona.edad, 25 , "La edad deberia de ser 25")
        
    }
    
    func testSaludo(){
        let persona = Persona(nombre: "Rodrigo", edad: 25)
        let saludoEsperado = "Hola, soy Rodrigo y tengo 25 años"
        XCTAssertEqual(persona.saludo(), saludoEsperado, "El saludo esperado deberia ser: \(saludoEsperado)")
    }
}
