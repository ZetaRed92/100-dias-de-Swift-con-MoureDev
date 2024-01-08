import Foundation

// MANEJO DE ERRORES
func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {

    // Lanzamos errores
    if firstNumber == nil {
        throw SumError.firstNumberNil
    } else if secondNumber == nil{
        throw SumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0{
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }

    // Realizar la suma
    return firstNumber! + secondNumber!
}

// Definición de tipos de errores

enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Inr)
}

// Propagación de errores
do {
print(try sum(firstNumber:100, secondNumber: 50))
} catch SumError.firstNumberNil{
    print("Firs number is null")
} catch SumError.secondNumberNil {
    print("Second number is null")
} catch SumError.numberNegative(let firstNumber, let secondNumber) {
    print("One number is negative. firstNumber: \(firstNumber), secondNumber: \(secondNumber)")
}

// TYPE CASTING
// Validación de tipo de datos

let myString = "Zeta"
let myInt = 31

class MyClass {
    var name: String!
    var age: Int!
}
let myClass = MyClass()
myClass.name = "Zeta Red"
myClass.age = 31

let myArray: [Any] = [myString, myInt, myClass]
/* Habías dicho que los arrays tenían que contener valores del mismo
tipo, sin embargo en Swift, si le ponemos la keyword reservada (Any),
el array puede almacenar cualquier tipo de dato dentro del mismo.*/

for item in myArray {
    if item is String {
        // Downcasting
        let myItemString = item as! String
        print("Item is a String type and has a value of \(myItemString)")
    } else if item is Int {
        // Downcasting
        let myItemInt = item as! Int
        print("Item is a Int type and has a value of \(myItemInt)")
    } else if item is MyClass{
        // Downcasting
        let myItemMyClass = item as! MyClass
        print("Item is a MyClass type and has a value of \(myItemMyClass.name!) and \(myItemMyClass.age!)")
    }
}

for item in myArray {
    if let myItemString = item as? String{
        print("Item is a String type and has a value of \(myItemString)")
    } else if let myItemInt = item as? Int{
        print("Item is a Int type and has a value of \(myItemInt)")
    } else if let myItemMyClass = item as? MyClass{
        print("Item is a MyClass type and has a value of \(myItemMyClass.name!) and \(myItemMyClass.age!)")
    }
}

// NESTED TYPES
// Tipos anidados

struct ChessPiece {
    
    let color: Color
    let type: PieceType
    
    enum Color: String {
        case white = "Blanca", black = "Negra"
    }
    
    enum PieceType: String {
        case king = "Rey", queen = "Reina", rock = "Torre", bishop = "Alfil", knight = "Caballo", pawn = "Peón"
        struct Number {
            let number: Int
        }
        var number: Number {
            switch self {
            case .king:
                return Number(number: 1)
            case .queen:
                return Number(number: 1)
            case .rock:
                return Number(number: 2)
            case .bishop:
                return Number(number: 2)
            case .knight:
                return Number(number: 2)
            case .pawn:
                return Number(number: 8)
            }
        }
    }
    
    var description: String {
        if type.number.number == 1 {
            return "This \(type.number.number) chess piece is \(color.rawValue) color and type \(type.rawValue)"
        }
        return "There are \(type.number.number) chess pieces is \(color.rawValue) color and type \(type.rawValue)"
    }
    
}

let myPiece = ChessPiece(color: .black, type: .queen)
print(myPiece.description)
