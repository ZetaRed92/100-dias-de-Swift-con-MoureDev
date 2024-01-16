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