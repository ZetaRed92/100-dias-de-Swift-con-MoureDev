import Foundation

//STRINGS
//String en una línea
let myString = "Oh gravity, thou art a heartless b****"

// String en varias líneas
let myMultipleString = """
Tijeras cortan papel, 
papel cubre a piedra, 
piedra aplasta lagarto, 
lagarto envenena a Spock
"""

// String en varias líneas en código
let myFalseMultipleString = """
Uno llora porque está triste.\ 
\
Por ejemplo, yo lloro porque los demás son estúpidos, 
y eso me pone triste
"""
// \ = Salto de línea


// String vacío
let myEmptyString = ""
let myEmptyString2 = String()


// CARACTERES
// Caracter
let myCharacter: Character = "\u{E9}"
let myCharacter2 = "Me había olvidado de que las personas normales tienen límites"

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
let myEmoji = "🔋"
let myEmoji2 = "🪫"

// CONCATENACIÓN
var myString = "Cuando entiendes las leyes de la física," + " " + "todo es posible."
myString += "\n-Dr. Sheldon Cooper."

let name = "Zeta"
let hero = "Batman"

let mySecret = "I'm " + name + " and I could be " + hero

// INTERPOLACIÓN
let mySecretInterpolation = "I'm \(name) and I could be \(hero)"

// COMPARACIÓN
let name1 = "Sheldon Cooper"
let name2 = "Amy Farrah Fowler"
let name3 = "Sheldon Cooper"
// No son iguales
name1 == name2
// Son iguales
name1 == name3

// CONTENIDO
let myContent = "Amy Farrah Fowler es Neurocientífica"

myContent.contains(name2)

// VACÍA
let myEmptyString = ""
myEmptyString.isEmpty

// BUCLE FOR
for valor in myContent {
    print(valor)
}
