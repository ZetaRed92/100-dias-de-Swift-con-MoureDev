import Foundation

// Introducción a las estructuras, propiedades y métodos
/* Las estructuras además de propiedades,
puedes contener funciones
*/
struct RubikCube {
    var side = 6
    var face = 6

    func volumen() -> Int {
        return side * side * side * side
    }

    func area() -> Int {
        return face * side * side
    }
} 

var myRubik = RubikCube()

RubikCube.area()

// Introducción a clases, instancias y uso de objetos
class Droid {
    let color = "White"
    var height = 30
    var prize = 1000

    func turnOn() -> Bool {
        return true
    }
    func reset() -> Bool {
        return true
    }
    func hackingDoor() -> Bool {
        return true
    }
}

var myBDOne = Droid()

myBDOne.prize
myBDOne.prize = 20000
print(myBDOne.prize)

struct StructDroid {
    var color = "White"
    var height = 30
    var prize = 1000

    func turnOn() -> Bool {
        return true
    }
    func reset() -> Bool {
        return true
    }
    func hackingDoor() -> Bool {
        return true
    }
}

var myStructDroid = StructDroid()

myStructDroid.prize
myStructDroid.prize = 20000
print(myStructDroid.prize)

// Estructuras vs Clase (Copiar vs Referencia)
var mySecondBDOne = myBDOne // Las Class son ref
var mySecondStructDroid = myStructDroid // Las Struct son copias
mySecondBDOne.prize = 35000
mySecondStructDroid.prize = 35000

print(mySecondBDOne.prize)
print(mySecondStructDroid.prize)

print(myBDOne.prize) // Ref: El precio se camabia a todo
print(myStructDroid.prize) // Copia: Solo cambia el valor asignado después