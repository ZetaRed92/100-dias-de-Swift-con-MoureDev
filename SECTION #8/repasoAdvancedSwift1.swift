import Foundation

// OPTIONALS
let myStringNumber = "250"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Dev"
let myWrongIntNumber: Int? = Int(myStringNumber) // retorna un nil


var myOptionalString: String?
print(myOptionalString)

myOptionalString = "SWIFT"

if myOptionalString != nil {
    print("Our variable have a different value of null")
} else {
    print("Our variable is null")
}

// OPTIONAL BINDING
var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?

myOptionalString = "Zeta"
myOptionalString2 = "Dev"
myOptionalString3 = "Coding from GC"

if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3 {
    print("\(myString) \(myString2) \(myString3)")
} else {
    print("Maybe we have some null variable")
}

// Desempaquetado forzado
print(myOptionalString2!)
if myOptionalString != nil {
    print(myOptionalString!)
} // Si no estamos seguros, debemos comprobarlo de esta manera.

// OPTIONAL CHAINING (Concatenaciones)
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
myBook.pages = 420

myStudent.book = myBook

// Enlaces opt. concatenados
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

