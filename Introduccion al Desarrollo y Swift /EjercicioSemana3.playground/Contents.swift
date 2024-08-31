import Cocoa


///Ejercicio 1: Enumeraciones y Delegación
///Implementar una enumeración EstadoPedido con casos procesando, enviado, y entregado. Crear un protocolo NotificacionPedido con un método notificarCambioDeEstado. Implementar una clase Pedido que tenga una propiedad estado de tipo EstadoPedido y una propiedad delegado de tipo NotificacionPedido. Crear una función que cambie el estado del pedido y notifique al delegado.
enum EstadoPedido{
    case procesando
    case enviado
    case entregado
}

protocol NotificacionPedido{
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) -> Void
}

class Pedido{
    var estado: EstadoPedido
    var delegado: NotificacionPedido?
    
    init(estado: EstadoPedido) {
            self.estado = estado
        }
    
    func cambiarEstado(nuevoEstado: EstadoPedido){
        estado = nuevoEstado
        if delegado != nil{
            delegado?.notificarCambioDeEstado(nuevoEstado: .entregado)
            
        }

        
    }
}

class GestorPedido: NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) {
        print("El estado del pedido ha cambiado a: \(nuevoEstado)")
    }
    
}

var gestor = GestorPedido()
var pedido = Pedido(estado: .procesando)
pedido.delegado = gestor
pedido.cambiarEstado(nuevoEstado: .enviado)

///Ejercicio 2: Funciones Estáticas y Clases
///Crear una clase Calculadora con funciones estáticas sumar y restar. Implementar una función que acepte un array de enteros y use las funciones estáticas para calcular la suma y la resta total de los elementos del array.

class Calculadora{
    static func sumar(a: Int, b: Int) -> Int{
        return a + b
    }
    
    static func restar(a: Int, b: Int) -> Int{
        return a - b
    }
}

func calcularSumaYRestaTotales(numeros: [Int]) -> (sumaTotal: Int, restaTotal: Int){
    var sumaTotal = 0
    var restaTotal = 0
    
    
    for numero in numeros {
        sumaTotal = Calculadora.sumar(a: sumaTotal, b: numero)
        restaTotal = Calculadora.restar(a: restaTotal, b: numero)
    }
    
    
    return (sumaTotal, restaTotal)
}


//Uso
var arreglo = [1, 2, 3, 4, 5, 6, 7, 8]
var resultado = calcularSumaYRestaTotales(numeros: arreglo)

print("Suma total: \(resultado.sumaTotal)")
print("Resta total: \(resultado.restaTotal)")


///Ejercicio 3: Polimorfismo y Structs
///Crear un protocolo Figura con un método calcularArea. Implementar estructuras Cuadrado y Rectangulo que conformen al protocolo Figura. Crear una función que acepte un array de Figura y calcule el área total de todas las figuras.

protocol Figura {
    func calcularArea() -> Double
}

struct Cuadrado: Figura{
    var lado: Double = 0.0
    
    func calcularArea() -> Double {
        return lado * lado
    }
    
}


struct Rectangulo: Figura{
    var ancho: Double
    var alto: Double
    
    func calcularArea() -> Double {
        return ancho * alto
    }
}

func CalcularAreaTotal(figuras: [Figura]) -> Double {
    var areaTotal = 0.0
    
    for Figura in figuras{
        areaTotal = areaTotal + Figura.calcularArea()
    }
    return areaTotal
}

var cuadrado = Cuadrado(lado: 4.0)
var rectangulo = Rectangulo(ancho: 3.0, alto: 5.0)
var figuras: [Figura] = [cuadrado, rectangulo]


var areaTotal = CalcularAreaTotal(figuras: [cuadrado, rectangulo] )
var areaCuadrado = Cuadrado(lado: 4.0).calcularArea()
var areaRectangulo = Rectangulo(ancho: 3.0, alto: 5.0).calcularArea()

print("Area del Cuadrado: \(areaCuadrado)")
print("Area del rectangulo: \(areaRectangulo)")

print("Area del Cuadrado: \(areaCuadrado)")
print("Area Total: \(areaTotal)")



///Ejercicio 4
///Implementar una enumeración OperacionMatematica con casos suma, resta, multiplicacion, y division. Crear una clase OperadorMatematico con una función estática realizarOperacion que acepte dos números y un caso de OperacionMatematica, y devuelva el resultado de la operación.

enum OperacionMatematica{
    case suma
    case resta
    case multiplicacion
    case division
}
class OperadorMatematico{
    func realizarOperacion(a: Double, b: Double, operacion: OperacionMatematica) -> Double{
        switch operacion{
        case .suma:
            return a + b
        case .resta:
            return a - b
        case .multiplicacion:
            return a * b
        case .division:
            if b != 0{
                return a / b
            }
            else{
                print("Error: Division por cero")
                return 0
            }
            
        }
    }
}

var operadorMatematico = OperadorMatematico()
var resultadoSuma = operadorMatematico.realizarOperacion(a: 10, b: 5, operacion: OperacionMatematica.suma)

print (resultadoSuma)






/*
var resultadoSuma = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: OperacionMatematica.suma)
var resultadoResta = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: OperacionMatematica.resta)
var resultadoMultiplicacion = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: OperacionMatematica.multiplicacion)
var resultadoDivision = OperadorMatematico.realizarOperacion(a: 10, b: 5, operacion: OperacionMatematica.division)


print("La suma es: \(resultadoSuma)")
print("La resta es: \(resultadoResta)")
print("La multiplicación es: \(resultadoMultiplicacion)")
print("La division es: \(resultadoDivision)")

 */
