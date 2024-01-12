import Foundation

// Constantes y Variables
var myName: String = "Zeta"
myName = "ZetaRed"

let myHeight: Double = 1.70

// Declaraciones múltiples
    // Concatenación
// Newton's Apple 🍎
var resultantForce: Double
let mass: Double = 0.200, aceleration: Double = 9.80665

resultantForce = mass * aceleration
print(resultantForce, "N")


// Tipos de datos
var x: Int = 150
var y: Double = 1.5555555555
var z: Float = 1.5

// Operadores aritméticos
var sumInt: Int = x + 2
var sumDouble: Double = y + 2.2222222
var sumFloat: Float = z + 1.5
var sum: Double = (x) + y

var subtraction: Int = x - 50
var multiplication: Double = y * 2
var division: Int = x / 2
var module: Int = x % 50

// Asignación explícita e implícita
var z: Int

// Asignación implícita
var pi: Double = 3.14159265358979323846
var myJob: String = "Project Manager"

// PRÁCTICA RESUMEN DE LA SECCIÓN 3: CAÍDA LIBRE 🍎 NEWTON'S APPLE 🍎
/* La manzana cae del árbol y tarda 3s en llegar al suelo. ¿Desde qué
altura cayó la manzana?

Datos:
    - t = 3s
    - h = ?
    - g = 9.8 m/s

Fórmula: h = gt²/2 */

let time: Float = 3.2
let gravity: Float = 9.8
var height: Float 

height = (gravity * time) * 2 / 2
print(height, "meters")




