import Foundation

// Booleanos y valores lógicos
var myLevel = "Junior"
var exp = 0
var mySwiftRoadmap = true
var techLicense = false

if mySwiftRoadmap {
    exp = 5
} else {
    exp = 2
}

salary

// Arrays
var arrayNum = [1, 2, 3]
let arrayNumLet = [ 3, 2, 1]

print(arrayNum[2])

print(arrayNumLet[1])

// Agregar valores al array
arrayNum.append(4)

arrayNum.insert(0, at: 0)
arrayNum.insert(1, at: arrayNum.endIndex)
print(arrayNum)

// Eliminar valores
arrayNum.removeLast()
arrayNum.remove(at:1)

print(arrayNum)

// Eliminar todo el array
arrayNum.removeAll()
print(arrayNum)

// Array vacío
var arrayEmpty:[Int] = []
print(arrayEmpty)

// Diccionarios
let myClassicalDic = Dictionary<Int, String>()
var myModernDic = [Int:String]()

// Añadir datos
myModernDic = [001:"Dr. Cooper", 002:"Dr. Hofstadter"]

// Añadirlo en un solo dato
myModernDic[003] = "Dra. Farrah Fowler"
myModernDic[004] = "Dr. Koothrappali"
myModernDic[005] = "Dra. Rostenkowski"
myModernDic[006] = "Wolowitz"

// Acceso a un dato
myModernDic[003]

// Clave única
myModernDic[006] = "Engineer Wolowitz"
myModernDic.updateValue("Engineer Wolowitz") // Forma clásica
myModernDic[006]

// Borrar un dato
myModernDic[006] = nil // Opción moderna
myModernDic.removeValue(forKey:006) // Opción clásica

myModernDic[002]