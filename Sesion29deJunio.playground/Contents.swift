import SwiftUI


var greeting = "Hello, playground"
/*
class Animal{
 func hacerSonido(){
     print("sonido de animal")
 }
}

final class Perro: Animal{
 override func hacerSonido() {
     print("ladrar")
 }
}



final class Gato: Animal{
 override func hacerSonido() {
     print("maullar")
 }
}

final class Gallo: Animal{
 override func hacerSonido() {
     print("Cantar")
 }
}

let perro: Perro? = nil
let gato = Gato()
let gallo = Gallo()

let animales: [Animal?] = [gato, perro, gallo]


animales.forEach{ animal in
 animal?.hacerSonido()
}
*/

//protocolos
protocol Animal{
    func hacerSonido()
}

//extension Animal{
  //  func hacersonido(){ }
//}

protocol Mamifero{
    var nombre: String{get set}
    func caminar()
}


final class Perro{
    var nombre: String = ""
    var miFuncion: (() -> Void)?
    
    
    
    
   
    
}
extension Perro: Animal {
    func hacerSonido() {
        
    }
}

extension Perro: Mamifero{
    
    func caminar() {
        
    }
}
final class Gato: Animal{
    func hacerSonido() {
        print("maullar")
    }
}

final class Gallo: Animal{
    func hacerSonido() {
        print("Cantar")
    }
}

let perro = Perro()
let gato = Gato()
let gallo = Gallo()

func miFuncionLLamada(){
    print("Hola")
}

perro.miFuncion = miFuncionLLamada
perro.callToMiFuncion()

/*let animales: [Animal] = [gato, perro, gallo]


animales.forEach{ animal in
    animal.hacerSonido()
}
*/
