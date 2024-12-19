//
//  Persona.swift
//  MaterialDePractica1
//
//  Created by David Sanchez on 12/10/24.
//

import Foundation

class Persona {
    var nombre : String
    var edad : Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    func saludo() -> String{
        return "Hola, soy \(nombre) y tengo \(edad) años"
    }
    
    
}
