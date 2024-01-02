import UIKit

// CONSTANTES Y VARIABLES

// let y var deben ser declaradas antes de usarlas.

var myName = "Zeta" // La palabra clave var sirve para declarar una variable
myName = "ZetaRed" // Las variables pueden cambiar su valor.
 
let myBirthdate = "12-03-1992" // Las constantes se declaran con let y no pueden cambiar su valor.

// DECLARACIONES MÚLTIPLES

// Denominamos a la consecución de declaraciones como "Concatenación"
var distance = 300, time = 60
let h = 6.63 * 10-34, f = 6.2 * 10

// TIPOS DE DATOS
var x = 18 // Integer o Entero con valor de 64bits
var y = 18.8 // Float 32bits y 6 dígitos decimales.  Double 64bits 15 dígitos decimales.

// OPERADORES ARITMÉTICOS
var sumaInt = x + 2
var sumaFloat = y + 2.2
var suma = Double(x) + y // El valor x es de tipo int, para sumar un tipo int con un tipo double, hay que convertir la variable.
var division = Double(x) / 5

// ASIGNACIÓN IMPLÍCITA Y EXPLÍCITA

/* Podemos asignar de manera explícita el tipo
de variable con el que queremos trabajar.
Esto se hace añadiendo el tipo después de nombrar la variable y 
añadirle dos puntos. */

var z:Int = 20
var w:Double = 22.2

// Respecto a la asignación implícita en Swift se reconoce el tipo de variable al igualarla a un valor concreto.
var v = 24


// 01 PRÁCTICA RESUMEN DE LA SECCIÓN 3: CONSTANTE DE PLANCK-EINSTEIN
var E = h * f
print("E= h*f:", E)

// 02 PRÁCTICA RESUMEN DE LA SECCIÓN 3: MRU
var velocity = distance / time
print("v=d/t:", velocity, "m/s")





