import Foundation

// INTRODUCCIÓN A LAS ESTRUCTURAS, PROPIEDADES Y MÉTODOS
struct Squared {

    var width = 10  // Las estructuras además de propiedades
    var height = 10
    
    // Tambien pueden contener funciones
    func area() -> Int {
        return width * height
    }                 
        
}

var mySquared = Squared()

/* Al introducir la función del área dentro de la estructura
nos permite ahora acceder a los tres datos: Width, Height y Area.*/

squared.area()

// INTRODUCCIÓN A CLASES, INSTANCIAS Y USO DE OBJETOS
class Tesla {
    var color = "gray"
    var wheels = 4
    var prize = 0

    func turnOn() -> Bool {
        return true
    }
    func turnOff() -> Bool {
        return true
    }
    func speedUp() -> Bool {
        return true
    }
}

var myTeslaCybertruck = Tesla()

myTeslaCybertruck.prize

myTeslaCybertruck.prize = 40000

print(myTeslaCybertruck.prize)

struct StructTesla {

    var color = "gray"
    var wheels = 4
    var prize = 0

    func turnOn() -> Bool{
        return true
    }

    func turnOff() -> Bool {
        return true
    }

    func speedUp() -> Bool {
        return true
    }
}

var myStructTesla = StructTesla()

myStructTesla.prize
myStructTesla.prize = 40000

print(myStructTesla.prize)


// ESTRUCTURA VS CLASE: COPIA VS REFERENCIA
var mySecondTeslaCybertruck = myTeslaCybertruck // Las class referencias
var mySecondStructTesla = myStructTesla //Las struct son copias
mySecondTeslaCybertruck.prize = 60000
mySecondStructTesla.prize = 65000

print(mySecondTeslaCybertruck.prize)
print(mySecondStructTesla.prize)

print(myTeslaCybertruck.prize) // Al ser ref. el precio se cambia a todo
print(myStructTesla.prize) // Al ser una copia solo cambia el valor asignado después
