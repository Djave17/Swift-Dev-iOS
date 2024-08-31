import Cocoa

//Actividad 1
///Ejercicio 1: Escribe una función llamada calcularAreaYPerimetro que acepte dos parámetros ancho y alto de tipo Double. La función debe devolver una tupla con el área y el perímetro del rectángulo. Utiliza constantes para los cálculos y llama a la función con valores de prueba, imprimiendo los resultado

func calcularAreaYPerimetro(ancho: Double, alto: Double) -> (area: Double, perimetro: Double){
    
    let area = ancho * alto
    let perimetro = 2 * (ancho + alto)
    
    return (area, perimetro)
    
}


let areaPerimetro = calcularAreaYPerimetro(ancho: 10, alto: 15)
print("El area es: \(areaPerimetro.area)")
print("El perimetro es: \(areaPerimetro.perimetro)")


//====================================================================================
///Ejericicio 2

func calcularAreaTriangulo(_ a: Double, _ b: Double, _ c: Double) -> Double? {
    // Verificar si los lados forman un triángulo válido
    if !(a > 0 && b > 0 && c > 0 && a + b > c && a + c > b && b + c > a) {
        print("Los lados ingresados no forman un triángulo válido")
        return nil
    }
    
    let s = (a + b + c) / 2.0
    let area = sqrt(s * (s - a) * (s - b) * (s - c))
    return area
}

// Ejemplo de uso
if let area = calcularAreaTriangulo(3, 4, 5) {
    print("El área del triángulo es \(area)")
} else {
    print("Datos inválidos para los lados del triángulo")
}




//====================================================================================

//Actividad 2
///Ejercicio 1: Escribe una función llamada calcularEstadisticas que acepte un array de enteros y devuelva una tupla con la media, mediana y moda del array. Implementa la lógica para calcular cada una de estas estadísticas y prueba la función con un array de ejemplo.
func calcularEstadisticas(_ numeros: [Int]) -> (media: Double, mediana: Double, moda: Int?){
    var suma = numeros.reduce(0, +) //Suma del arreglo // Suma todos los números en el array y divide la suma por la cantidad de elementos para obtener la media.
    var media = Double(suma) / Double(numeros.count) //Media
    
    //mediana // Ordena el array. Si la cantidad de elementos es par, la mediana es el promedio de los dos elementos centrales. Si es impar, la mediana es el elemento central
    var mediana: Double = 0.0 //Inicializamos
    var numerosOrdenados = numeros.sorted()//ordenamos numeros
    if numerosOrdenados.count % 2 == 0{
        var mediana = (numerosOrdenados[(numerosOrdenados.count) / 2 - 1 ] + numerosOrdenados[numerosOrdenados.count / 2 ] / 2)
    }
    
    else{
        var mediana = numerosOrdenados[numerosOrdenados.count / 2]
    }
    
    
    //creamos un diccionario
    //un diccionario para contar la frecuencia de cada número. Luego, encuentra el número con la mayor frecuencia.
    var frecuencia: [Int: Int] = [:]
    //encontrar la clave del diccionario frecuencia que tiene el valor más alto
    for numero in numeros{
        if frecuencia[numero] == nil {
            frecuencia[numero] = 0 //Si el valor del diccionario para la clave numero es nil (no existe), se establece en 0
            
        }
        frecuencia[numero]! += 1 //forced unwrapping: Se utiliza para acceder al valor subyacente de un opcional
    }
    
    var moda = frecuencia.max { a, b in a.value < b.value }?.key
    //.max { a, b in a.value < b.value } es un método de orden superior que encuentra el elemento con el valor máximo
    
    
    return (media, mediana, moda)
    
}

//uso
let estadisticas = calcularEstadisticas([1, 2, 2, 3, 4, 4, 4, 5])
print("Media: \(estadisticas.media)")
print("Mediana: \(estadisticas.mediana)")
print("Moda: \(estadisticas.moda ?? 0)")

///=======================================================================================================================================================
///Ejercicio 2: Escribe dos funciones, sumaMatrices y multiplicarMatrices, que acepten dos matrices (arrays de arrays de enteros) y devuelvan la matriz resultado de la suma y la multiplicación, respectivamente. Valida que las dimensiones de las matrices sean compatibles para cada operación. Prueba las funciones con matrices de ejemplo.

func sumaMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]?{
    if matrizA.count != matrizB.count || matrizA[0].count != matrizB[0].count {
        print("Las matrices no tienen las mismas dimensiones...")
        return nil
    }

    var matrizResultado = matrizA
    
    for i in 0..<matrizA.count{
        for j in 0..<matrizB.count{
            matrizResultado[i][j] = matrizA[i][j] + matrizB[i][j]
        }
    }
    
    return matrizResultado
    
    
}





/// mulltiplicación
func multiplicarMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
    if matrizA[0].count != matrizB.count{
        print("Las matrices no pueden ser multiplicadas...")
        return nil
    }
    
    
    let filasResultado = matrizA.count
    let columnasResultado = matrizB[0].count
    var matrizResultado = Array(repeating: Array(repeating: 0, count: columnasResultado), count: filasResultado)
        
        // Realizar la multiplicación de matrices
    for i in 0..<filasResultado {
        for j in 0..<columnasResultado {
            for k in 0..<matrizA[0].count {
                matrizResultado[i][j] += matrizA[i][k] * matrizB[k][j]
            }
        }
    }
        
        return matrizResultado
}
//Uso
let suma = sumaMatrices(matrizA: [[1,2], [3,4]], matrizB: [[1,2], [3,4]])

print("La suma de las matrices es: \(suma)")

let multiplicacion = multiplicarMatrices(matrizA: [[1,2], [3,4]], matrizB: [[1,2], [3,4]])

print("La multiplicacion de las matrices es: \(multiplicacion)")



//====================================================================================

//Actividad 3

///Ejercicio 1:Escribe una función llamada ordenarPorSeleccion que acepte un array de enteros y lo ordene utilizando el algoritmo de
///ordenamiento por selección. Implementa la lógica del algoritmo y prueba la función con un array de ejemplo.
///

func ordenarPorSeleccion(_ arreglo: inout [Int]){
        for i in 0..<arreglo.count { //El ciclo valora si es mayor o menor y  si es menor lo sustituye a la posicion inicial del ciclo
        var minIndex = i
        for j in i + 1..<arreglo.count{
            if arreglo[j] < arreglo[minIndex] {
                minIndex = j
            }
        }
        arreglo.swapAt(i, minIndex) //Intercambiar

        
    }
    
    
}
//Prueba / uso
var numeros = [64, 25, 12, 22, 11, 90]
ordenarPorSeleccion(&numeros)
print("Array ordenado por selección: \(numeros)")


///Ejercicio 2:  Implementar el algoritmo de búsqueda en profundidad (DFS) en un grafo
///Crea una clase Grafo que represente un grafo utilizando una lista de adyacencia. Escribe un método dfs que realice una búsqueda en profundidad (DFS) desde un nodo inicial y devuelva el recorrido. Implementa y prueba la función con un grafo de ejemplo.

class Grafo {
    var adjList: [Int: [Int]]
    
    init() { //Inicializa el diccionario como vacío
        self.adjList = [Int: [Int]]()
    }
    
    func agregarArista(from: Int, to: Int) { // Agrega una arista desde el nodo from al nodo to.
        if adjList[from] == nil { //Si from no tiene una lista de adyacencia, se crea una nueva lista.
            adjList[from] = [Int]()
        }
        adjList[from]?.append(to) //Se agrega el nodo to a la lista de adyacencia del nodo from.

    }
    //DFS: sistema de archivos distribuido
    func dfs(inicio: Int) -> [Int] {
        var visitados = Set<Int>()//Inicializa un conjunto visitados para llevar un registro de los nodos visitados
        //'Set<Int>()' es una instancia de un conjunto vacío que almacenará valores de tipo Int.
        // Set es una colección que no permite elementos duplicados y no mantiene un orden específico.

        var resultado = [Int]() //lista resultado para almacenar el recorrido de DFS.
        dfsUtil(nodo: inicio, visitados: &visitados, resultado: &resultado) //Llama a la función dfsUtil para realizar el DFS.
        return resultado
    }
    //Función auxiliar que realiza la búsqueda en profundidad recursiva.
    //Recorre los vecinos del nodo actual. Si un nodo adyacente no ha sido visitado, llama a dfsUtil para ese nodo adyacente.
    private func dfsUtil(nodo: Int, visitados: inout Set<Int>, resultado: inout [Int]) {
        visitados.insert(nodo)
        resultado.append(nodo)
        
        if let vecinos = adjList[nodo] {
            for vecino in vecinos {
                if !visitados.contains(vecino) {
                    dfsUtil(nodo: vecino, visitados: &visitados, resultado: &resultado)
                }
            }
        }
    }
}

//uso
// crear una instancia de Grafo.
let grafo = Grafo()
grafo.agregarArista(from: 0, to: 1)//agregar aristas al grafo.
grafo.agregarArista(from: 0, to: 2)
grafo.agregarArista(from: 1, to: 2)
grafo.agregarArista(from: 2, to: 0)
grafo.agregarArista(from: 2, to: 3)
grafo.agregarArista(from: 3, to: 3)
// búsqueda en profundidad (DFS) comenzando desde el nodo 2 y se imprime el recorrido DFS.
let recorridoDFS = grafo.dfs(inicio: 2)
print("Recorrido DFS desde el nodo 2: \(recorridoDFS)")


//Actividad 4

///Ejercicio 1:Calcular la suma de los primeros N números utilizando recursión y no recursión
///Escribe dos funciones llamadas sumaRecursiva y sumaIterativa que calculen la suma de los primeros N números naturales.
///La primera función debe ser recursiva y la segunda iterativa. Prueba ambas funciones con un valor de ejemplo

func sumaRecursiva(_ num: Int) -> Int{
    // '_'indicaa que un parámetro no tiene nombre externo cuando se llama a una función.
    //Esto significa que no se necesita usar el nombre del parámetro cuando llamas a la función.
    
    
    if num == 0 {
        return 0
    }
    else{
        return num + sumaRecursiva(num - 1)
    }
    
}


func sumaIterativa(_ num: Int) -> Int{
    var suma = 0
    for i in 1...num{
        suma += i
    }
    
    return suma
    
}


var resultadoRecursivo = sumaRecursiva(12)
var resultadoIterativo = sumaIterativa(10)


print("El resultado de la suma recursiva es: \(resultadoIterativo)")
print("El resultado de la suma iterativa es: \(resultadoRecursivo)")


///Ejercicio  2: Implementar la búsqueda binaria recursiva en un array ordenado
///Escribe una función llamada busquedaBinariaRecursiva que implemente el algoritmo de búsqueda binaria de manera recursiva.
/// La función debe aceptar un array ordenado de enteros, el valor a buscar, y los índices de inicio y fin. Devuelve la posición del valor encontrado o nil si no se encuentra. Prueba la función con un array de ejemplo.

func busquedaBinariaRecursiva(_ arreglo: [Int],_ valor : Int,_ inicio: Int,_ fin: Int) -> Int?{
    if inicio > fin{
        return nil
    }
    
    
    
    let medio = (inicio + fin) / 2
    if arreglo[medio] == valor{
        return medio
    }
    else if arreglo[medio] < valor{
        return busquedaBinariaRecursiva(arreglo, valor, medio + 1, fin)
    }
    else{
        return busquedaBinariaRecursiva(arreglo, valor, inicio, medio + 1)
    }
}

var numerosOrdenado = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var posicion = busquedaBinariaRecursiva(numerosOrdenado, 5, 0, numerosOrdenado.count - 1)

//Actividad 5
///Ejercicio 1: Crear una clase Coche y un método para describirlo
///Define una clase Coche con propiedades para marca, modelo y año.
///Implementa un método describir que devuelva una cadena con la descripción del coche. Crea una instancia de Coche y llama al método describir.


class Coche{
    var marca: String
    var modelo: String
    var año: Int
    
    init(marca: String, modelo: String, año: Int){
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }
    
    
    func describir() -> String{
        return "Coche: \(marca) \(modelo), año: \(año)"
    }
    
}

let miCoche = Coche(marca: "Toyota", modelo: "Corolla", año: 2024)
print(miCoche.describir())


///Ejercicio 2
///Crear un struct Rectángulo con métodos para calcular el área y el perímetro
///Define un struct Rectángulo con propiedades para ancho y alto. Implementa métodos para calcular el área y el perímetro.
///Crea una instancia de Rectángulo y llama a los métodos para imprimir el área y el perímetro.
///

struct Rectangulo{
    var ancho: Double
    var alto: Double
    
    func calcularArea() -> Double{
        return ancho * alto
    }
    
    func calcularPerimetro() -> Double{
        return 2 * (ancho + alto)
    }

}

var miRectangulo = Rectangulo(ancho: 5.0, alto: 10.0)
print("Area: \(miRectangulo.calcularArea())")
print("Perimetro: \(miRectangulo.calcularPerimetro())")


///Ejercicio 3
///Definir un protocolo Volable y conformar clases Pájaro y Avión
///Define un protocolo Volable con un método volar. Crea dos clases Pájaro y Avión que conformen al protocolo Volable
///. Implementa el método volar en ambas clases con una implementación específica para cada una. Crea instancias de ambas clases y llama al método volar.

protocol Volable{
    func volar() -> String
}

class Pajaro: Volable{
    func volar() -> String {
        return "El pajaro esta volando"
    }
}

class Avion: Volable{
    func volar() -> String {
         return "El avion esta despegando"
    }
}
//Instancias
var miPajaro = Pajaro()
var miAvion = Avion()

print(miPajaro.volar())
print(miAvion.volar())

