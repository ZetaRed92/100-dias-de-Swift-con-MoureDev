import Foundation

// TIPOS DE STRING Y CARACTERES 

// STRINGS
// String en una línea
let myString = "Bienvenidos a los 100 días de Swift"

// String en varias líneas
let myMultipleString = """
Este Roadmap sobre Swift, no solo
es para aprender sobre el lenguaje de programación.
También para crear un hábito, constancia y disciplina.
"""

// String en varias líneas únicamente en código
let myFalseMultipleString = """
Bienvenidos a los 100 días de Swift\
\
Hemos venido a picar!!
"""
/* En este caso la barra invertida lo que nos permite
es hacer un salto de línea */

// String vacío
let myEmptyString = ""
let myEmptyString2 = String()

// CARACTERES
// Caracter
let myCharacter: Character = "\u{E9}"
let myCharacter2 = "Bienvenidos a los 100 días de Swift"

/* Caracteres especiales
    - \0 (Caracter nulo)
    - \\ (Barra invertida)
    - \t (Tabulador)
    - \n (Salto de línea)
    - \r (Retorno de carro)
    - \" (Comilla doble)
    - \' (Comilla simple)
*/

// EMOJIS
let myEmoji = "🍏"
let myEmoji2 = "💻"

// CONCATENACIÓN
var myString = "Bienvenidos" + " " + "a los 100 días de Swift"
myString += "\nHemos venido a picar"

let name = "Zeta"
let country = "España"

let myPersonalInfo = "Mi nombre es " + name + " y soy de " + country

// INTERPOLACIÓN
let myPersonalInfoInterpolation = "Mi nombre es \(name) y soy de \(country)"


// COMPARACIÓN
let name1 = "Zeta"
let name2 = "Turing"
let name3 = "Zeta"
// No son iguales:
name1 == name2
// Son iguales:
name1 == name3

// Contenido
let myContent = "Mi nombre es Zeta"

myContent.contains(name1)

// Vacía
let myEmptyString = ""
myEmptyString.isEmpty

// Recorrido (Bucle FOR)
for valor in myContent {
    print(valor)
}
