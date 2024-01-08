import Foundation

// OPTIONALS
/* Los optionals son una característica de Swift,
que nos va a ayudar a manejar ausencias de valor.
Estas ausencias de valor son representadas como (nil) o nulos. 
Se representará con el símbolo interrogante después de su tipo.
Ej: String?.*/

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Zeta"
let myWrongIntNumber: Int? = Int(myStringNumber) // retorna un nil


var myOptionalString: String?
print(myOptionalString)

myOptionalString = "Welcome"

if myOptionalString != nil {
    print("Our variable have a different value of null")
} else {
    print("Our variable is null")
}

// Utilizamos opcionales en Swift para evitar errores.

// OPTIONAL BINDING
// De esta manera podemos verificar si nuestra variable tiene un valor nulo
var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?

myOptionalString = "Zeta"
myOptionalString2 = "Red"
myOptionalString3 = "31"

if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3 {
    print("\(myString) \(myString2) \(myString3)")
} else {
    print("Maybe we have some null variable")
}

// Desempaquetado forzado
print(myOptionalString2!)
/* Si estamos seguros de que nuestra variable opcional tiene un valor,
podemos desempaquetarla, y esto se hace añadiendo (!) despues de la variable opcional.*/

if myOptionalString != nil {
    print(myOptionalString!)
} // Si no estamos seguros, debemos comprobarlo de esta manera.

// OPTIONAL CHAINING
// Cadenas opcionales (Concatenaciones)

class Student {
    var name: String?
    var book: Book?
}

class Book {
    var pages: Int?
}

let myStudent = Student()

print(myStudent.name)
print(myStudent.book?.pages)

myStudent.name = "Zeta"

let myBook = Book()
myBook.pages = 50

myStudent.book = myBook

// Enlaces opcionales encadenados

if let pages = my.Student.book?.pages, let name = myStudent.name{    
    print("The \(name)'s book has \(pages) pages")

} else if let myString = myOptionalString{
    print("The value of myOptionalString is null = \(myString)")

} else {
    print("The book has no pages")
}

// GUARD LET
// Sentencia de salida rápida
var myOptionalString: String?

func myFunction() {

    guard let myString = myOptionalString else {
        print("myString is null")
        return
    }

    print("The value of myString is \(myString)")
}

myFunction()

myOptionalString = "What do you think of this class?"

myFunction()

