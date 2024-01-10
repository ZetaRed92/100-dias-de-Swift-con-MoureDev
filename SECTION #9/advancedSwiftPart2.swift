import Foundation

// SETS
/* Los sets no estarán ordenados y no podrán repetir valores y tienen 
que pertenecer a un tipo concreto */

var mySet = Set <String>()
let mySet2: Set<String> = ["Zeta", "Red", "31"]

// inserción de uno en uno
mySet.insert("Zeta")
mySet.insert("Red")
mySet.insert("31")
mySet.insert("Zeta")
print(mySet)

// Acceso
if mySet.contains("Red") {
    print("Exist")
} else {
    print("Not Exist")
}

// Modificación
mySet.remove("31")
print(mySet)

// Acceso y Modificiación por índice
if let index = mySet.firstIndex(of: "Zeta") {
    mySet.remove(at: index)
}
print(mySet)

// Iteración
mySet.insert("31")
mySet.insert("Zeta")
mySet.insert("ZetaRed")
mySet.insert("Welcome to Swift")

for myElement in mySet{
    print(myElement)
}

// Operaciones en conjunto
let myIntSet: Set = [1, 2, 3, 4, 5]
let myIntSet2: Set = [0, 2, 3, 6, 7]

// Intersección
print(myIntSet.intersection(myIntSet2))
// Diferencia simétrica
print(myIntSet.symetricDifference(myInt2))
// Unión
print(myIntSet.union(myIntSet2))
// Sustracción
print(myIntSet.subtracting(myIntSet2))
print(myIntSet2.subtracting(myIntSet))

// ALGORITMOS PARA COLECCIONES
let myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

// Sort(Ordenación)
print(myArray)
myArray.sort()
print(myArray)

myArray.sort { (intA, intB) -> Bool in
    return intA > intB
}

// myDictionary.sort() No soportada.
// mySet.sort() No soportada.

// SORTED (Ordenación)

print(myArray)
let myArraySorted = myArray.sorted()
print(myArray)
print(myArraySorted)

myArray.sorted{(intA, intB) -> Bool in
    return intA > intB
}
print(myArraySorted)

mySortedDictionary = myDictionary.sorted{(elementA, elementB) -> Bool in
    return elementA.key < elementB.key
}
print(mySortedDictionary)

var mySortedSet = mySet.sorted()
print(mySortedSet)

mySortedSet = mySet.sorted { (intA, intB) -> Bool in
    return intA > intB
}
print(mySortedSet)

// MAP
let myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

let myMapArray = myArray.map { (myInt) -> Int in
    return myInt + 10    
}
print(myMapArray)


let myStringMapArray = myArray.map { (myInt) -> String in
    return " This is the number: \(myInt)"   
}
print(myStringMapArray)

let myIntMapArray = myDictionary.map { (myElement) -> Int in 
    return myElement.key
}
print(myIntMapArray)

let myStringMapArray2 = mySet.map { (myInt) -> String in
    return "\(myInt)"
}
print(myStringMapArray2)

// FOR EACH
let myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

myArray.forEach { (myInt) in 
    print(myInt)
}

myDictionary.forEach { (myElement) in
    print(myElement.key)
}

print("")

mySet.forEach { (myInt) in
    print(myInt)
}

// OTRAS OPERACIONES CON COLECCIONES
let myArray = [5,8,1,0,3,9,7,2,4,6]

let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis"]

let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

// Count
print(myArray.count)
print(myDictionary.count)
print(mySet.count)

// isEmpty
print(myArray.isEmpty)
print(myDictionary.isEmpty)
print(mySet.isEmpty)

// Reversed
print(myArray.reversed() as [Int])
print(myDictionary.reversed())
print(mySet.reversed())

// First o Last
print(myArray.popLast())
print(myDictionary.popFirst())
print(mySet.popFirst())