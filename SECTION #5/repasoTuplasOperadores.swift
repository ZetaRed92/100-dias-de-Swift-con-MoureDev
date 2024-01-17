import Foundation

// Tuplas
var character = ("Sheldon", "Cooper", 1.86, 187)

person.4

var(name, surname, height, CI) = character
Name

var characterNameTuples = (name: "Sheldon", surname: "Cooper", height: 1.86, ci: 187)
characterNameTuples.CI

//Enumeraciones
//Sintaxis
enum PersonalData {
    case name
    case surname
    case height
    case CI
}

var currenData: PersonalData = .surname
var input = "Sheldon"

currentData = .CI
var input = "187"

// Enumeraciones con valores asociados
enum ComplexPersonalData {
    case name(String)
    case surname(String)
    case height(Double)
    case CI(Int)
}

var complexCurrentData: ComplexPersonalData = .name("Sheldon")

complexCurrentData = .CI(187)

// Enumeraciones con el mismo tipo de valor
enum RawPersonalData: String {
    case name = "Nombre"
    case surname = "Apellidos"
    case height = "Altura"
    case CI = "Cociente Intelectual"
}

RawPersonalData.name.rawValue

// Operadones de rango
var arrayExample = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

var subSetArray = arrayExample[1...3]

var subSetArray1 = arrayExample[...3]
var subSetArray2 = arrayExample[5...]

var closedRange = [1...3]

var subArray = Array(closedRange[0])

subArray[2]

// Operadores de control
var constNum = 15

// Operadores aritméticos
var varNum = 5

constNum + varNum
constNum - varNum
constNum * varNum
constNum / varNum

// Operadores compuestos
varNum += 5
varNum -= 5
varNum *= 5
varNum /= 5

// Operadores de comparación
var equal = 1 == 1
var notEqual = 2 != 1
var greaterThan = 2 > 1
var lessThan = 1 < 2
var greaterEqualThan = 1 >= 1
var lessEqualThan = 2 <= 1

// IF ELSE
temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("So cold...")
} else {
    print("It's okey")
}

// Condicionales anidadas
var age = 30
var expPoints = 1000
var credentials = true

if age >= 30 {
    print("You pass the first level to access")

        if expPoints > 500 {
            print("Okey, you have EXP")
        }

            if credentials = true {
                print("Welcome to Entropy!")
            }
}   else {
    print("Get out nerd!")
}

// SWITCH
// Sintaxis de la sentencia Switch

switch languages {
case "SW":
    print("The language is Swift")
case "RS":
    print("The language is Rust")
case "PY":
    print("The language is Python")
case "KT":
    print("The language is Kotlin")
default:
    print("Are you using COBOL?")
}

let exp = 100

switch exp {
case 0...10:
    print("Sorry, we don't need a rookie")
case 11...45:
    print("You're still a rookie")
case 46...60:
    print("We can talk now")
case 61...80:
    print("Show your skills and probably you are in")
case 81...100:
    print("Definitely you're in")
default:
    print("You're a master")
}

// Switch con enum

enum Data {
    case alias
    case exp
    case age
}

let userData: Data = .alias

switch userData {
case .alias:
    print("Modifying the alias")
case .exp:
    print("Modifying the expericence")
case .age:
    print("Modifying the age")
}

// Bucle FOR IN
var counter = 0

for num in 1...5 {
    counter = counter + 1
    print(num)
}

var languages = ["Swift", "Rust", "Python", "Kotlin"]

for lng in languages {
    print(lng)
}

var languagesDic = ["Swift": "SW", "Rust": "RS", "Python": "PY", "Kotlin": "KT"]

for (lng, acron) in languagesDic {
    print("\(lng) : \(acron)")
}

var numbers = [1, 2, 3, 4, 5]
var plus = 0

for num in numbers {
    plus = num + plus
}
print("Plus = \(plus)")

// Bucle-Ciclo While

var age = 31

while age < 21 {
    print("No pass")
    age += 1
}
print("Welcome!")

// Repeat While

var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8]
var i = numbers.count - 1

repeat {
    numbers.remove(at: i)
    i -= 1
    print("Items num: \(numbers.count) ")
    print("i = \(i)")
} while (numbers.count > 0)
print("Empty Array. Items num: \(numbers.count)")

var rawNum: Int
var x = 0

repeat {
    x += 1
    rawNum = Int(arc4random_uniform(8))
    print("Interactions: \(x)")
    print("Random Number: \(rawNum)")
} while(rawNum != 6)
