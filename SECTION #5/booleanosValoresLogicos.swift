import Foundation

// BOOLEANOS Y VALORES LÓGICOS
var myJob = "Project Manager in Healthcare"
var salary = 0
var profesionalLicense = true
var phdLicense = false

// Si la variable de la licencia es (true) entonces se ejeduta la instruccion dentro del if.
if profesionalLicense {
    salary = 2800
} else {
    salary = 1700
}

salary
// Si es (false), se ejecuta la instrucción del else.


// ARRAYS O ARREGLOS
// Un array es una colección ordenada de acceso aleatorio.
             // 0  1  2   
var arrayNum = [1, 2, 3] // Array mutable: se utiliza la keyword (var). Variable = Mutable.
let arrayNumLet = [3, 2, 1] // Array inmutable: usamos la keyword (let) Constante = Inmutable.

print(arrayNum[1]) 
/* Este print muestra por consola el número dentro del array en la posición 1. 
En este caso se imprimiría el número 2. */
print(arrayNumLet[2])
/* Se muestra por consola el número en la posición 2.
Haría el print del número 1. */

// Agregar valores
arrayNum.append(6) // En este caso se agrega el valor 6 dentro del array.
/* Si imprimieramos esto por consola saldría:
[1, 2, 3, 4] porque le estamos diciendo que añada el valor 6 a la colección de arrayNum. */
arrayNum.insert(0, at: 2) // Aquí agregamos el valor de 0 en la posición 2.
/* Con un print de esto obtendríamos lo siguiente: 
[1, 2, 0, 4] porque le decimos que cambie el num de la posición 2 (3) por el valor 0.*/
print(arrayNum)


// Eliminar valores
arrayNum.removeLast() // Eliminamos el último valor del array.
arrayNum.remove(at:3) // Eliminamos el valor ubicado en la posición 3.

print(arrayNum)

// Eliminar todo el array
arrayNum.removeAll()
print(arrayNum)

// Array vacío
var arrayEmpty:[Int] = []
print(arrayEmpty)

// DICCIONARIOS
// Son colecciones no ordenadas 
// Sintaxis Diccionarios
let myClassicDictionary = Dictionary<Int, String>() // Forma clásica
var myModernDictionary = [Int:String]() // Forma moderna

// Añadir datos
myModernDictionary = [001:"Turing", 002: "Schrödinger"]

// Añadir un solo dato
myModernDictionary[003] = "Planck"
myModernDictionary[004] = "Bohr"
myModernDictionary[005] = "Oppenheimer"
myModernDictionary[006] = "Einstein"

// Acceso a un dato
myModernDictionary[002]

// La clave del diccionario es única
myModernDictionary[002] = "Schrödinger"
myModernDictionary.updateValue("Erwin Schrödinger", forKey: 002) // Opción clásica
myModernDictionary[002]

// Borrar un dato
myModernDictionary[002] = nil // La palabra nil significa nulo. Esta es la opción moderna.
myModernDictionary.removeValue(forKey:002) // Opción clásica.

myModernDictionary[002]


// TUPLAS
/* No es una colección pero actúa como tal. Agrupan múltiples valores en un solo valor
compuesto. Los valores pueden ser de cualquier tipo y no tienen que ser del mismo tipo
entre sí.*/
            // Name, Surname, Age, Height
var person = ("Zeta", "Red", 31, 1.70) // Tipos: String, String, Int, Double.

person.2 // De esta manera accedemos a un valor determinado en la tupla.

var (name, surname, age, height) = person // De esta manera estamos asignando los valores de nuestra tupla
Age

var personNameTuples = (name: "Zeta", surname: "Red", age: 31, height: 1.70)
personNameTuples.Age // Esta es una manera de acceder a valores concretos usando el nombre.


// ENUMERACIONES
/* Es una estructura que permite agrupar diferentes valores relacionados y permite 
trabajar con dichos valores de manera segura, evitando errores en nuestro código.  */

// Sintaxis enumeración
enum PersonalData {
    case name
    case surname
    case age
    case height

    /* También podemos definirlo en una sola línea de código.
    case name, surname, age, height.*/
}

var currentData: PersonalData = .name
var input = "Zeta" // El input recibe los datos que introduce el usuario.

currenData = .height
input = "1.70"

// Enumeraciones con valores asociados
enum ComplexPersonalData {
    case name(String)
    case surname(String, String)
    case age (Int)
    case height (Double)
}

var complexCurrentData: ComplexPersonalData = .name("Zeta")

complexCurrentData = .height(1.70)

// Enumeraciones con el mismo tipo de valor
enum RawPersonalData: String {
    case name = "Nombre"
    case surname = "Apellidos"
    case age = "Edad"
    case height = "Altura"
}

RawPersonalData.name.rawValue // rawValue es el valor en bruto

// OPERADORES DE RANGO
var arrayExample = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// Two-sided range operator
var subSetArray = arrayExample[1...3]

// One-sided range operator
var subSetArray1 = arrayExample[...3]
var subSetArray2 = arrayExample[5...]

var closedRange = [1...3]
// 1.2.3.4.5
var subArray = Array(closedRange[0])

subArray[2]

// OPERADORES DE CONTROL
var constantNum = 15

// Operadores aritméticos
var variableNum = 5

constantNum + variableNum // Suma del número constante - variable (15+5)
constantNum - variableNum // Resta del número constante - variable (15-5)
constantNum * variableNum // Multiplicación del número constante - variable (15*5)
constantNum / variableNum // División del número constante - variable (15/5)

// Operadores compuestos
variableNum += 4
variableNum -= 4
variableNum *= 4
variableNum /= 4

// Operadores de comparación
/* - Igual que (==)
    - No igual que (!=)
    - Mayor que (>)
    - Menor que (<)
    - Mayor o igual que (>=)
    - Menor o igual que (<=) */
var igual = 1 == 1 
var noIgual = 2 != 1 
var mayorQue = 2 > 1 
var menorQue = 1 < 2 
var mayorIgual = 1 >= 1 
var menorIgual = 2 <= 1 

// IF ELSE
var age = 16
var minimumKey = 1939
var scanRetin = true

if !(age >= 18 || minimumKey <= 1900) && (scanRetin) {
    print("Tim, You can't use the Batpod.")
} else {
    print("Drive careful, PS: Red Hood, please. don't exceed the velocity")
}

// CONDICIONALES ANIDADAS
var age = 21
var minimumKey = 2000
var scanRetin = true

if age >= 18 {
    print("You can use the Batpod")
        
        if minimumKey > 1939 {
            print("Accept the keys")
            
            if scanRetin {
                print("You are a Gotham Knight")
            }
        }
}   else {
    print("Tim, you can't drive")
}

// SWITCH
// Sintaxis de la sentencia Switch

switch ccaa {
case "ES":
    print("El idioma es español")
case "CA":
    print("L'idioma és català")
case "EUS":
    print("Hizkuntza euskara da")
case "GAL":
    print("A lingua é o galego")
default:
    print("We can't recognize the language")  
}

let age = 31

switch age {
case 0, 1, 2:
    print("Do you know how to use a computer, baby?")
case 3...10:
    print("Oh, child...")
case 11..<16:
    print("Level up")
case 16..<70:
    print("Good age mate")
case 70..<100:
    print("Loading cryogenic machine")
default:
    print("Jarvis? 🤖")
}

// Switch con enum

enum PersonalData {
    case name
    case surname
    case age
    case height
}

let userData: PersonalData = .name

switch userData {
case .name:
    print("Modifying the name")
case .surname:
    print("Modifying the surname")
case .age:
    print("Modifying the age")
case .height:
    print("Modifying the height")
}

// BUCLE-CICLO FOR IN
var counting = 0
/* Los ciclos for sirven para itinerar sobre una colección
de datos/items y ejecutar un bloque de código por cada uno
de los items de la colección o rango.*/

// var    //rango
for num in 1...4{
    counting = counting + 1
    print(num)
}

var countries = ["Spain", "United State of America", "Russia", "China"]

for country in countries {
    print(country)
}

var countriesDictionary = ["Spain": "SP", "United States of America": "USA", "Russia": "RU", "China": "CHI"]

for (country, acronym) in countriesDictionary {
    print("\(country) : \(acronym)")
}

var nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var plus = 0

for num in nums {
    plus = num + plus
}
print("Plus is equal to: \(plus)")

// BUCLE-CICLO WHILE
var age = 25

while age < 18 {
    print("You are under legal age. You are \(18 - age) years away from coming of age.")
    age += 1
}
print("Welcome to legal age 🍻")

// REPEAT WHILE
var nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var i = nums.count - 1

repeat {
    nums.remove(at: i)
    i -= 1
    print("Number of Items: \(nums.count) ")
    print("i = \(i)")
} while (nums.count > 0)
print("Array is empty, the number of items: \(nums.count)")

var randomNum:Int
var n = 0

repeat {
    n += 1
    randomNum = Int(arc4random_uniform(8))
    print("The cycle takes \(n) interactions")
    print("The random number: \(randomNum)")
} while(randomNum != 6)