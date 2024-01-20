import Foundation

// Closures
/* Los closures son bloques auto-contenidos
de funcionalidad que pueden ser pasados y
usados por todo el código. (Similar a los lambdas)

{(parametros) -> tipo-valor- retorno in
código}
*/

// Método sorted
/* Se usa para ordenar un array de valores
tipo String en orden alfabético invertido.
*/

let names = ["Tim", "Dick", "Barbs", "Jason"]

/* El siguiente ejemplo ordena un array 
de valores de tipo String, 
por lo que la clausura de ordenamiento 
debe ser una función de tipo 
(String, String) -> Bool
*/
func inverted(_s1: String, _s2: String) -> Bool {
    return s1 > s2
}

var invertedNames = names.sorted(by: inverted)

// Sintaxis
invertedNames = names.sorted(by: {(s1:String, s2:String) -> Bool in return s1 > s2})

// Inferencia de tipos a partir del contexto
invertedNames = names.sorted(by: {s1, s2 in return s1 > s2})

// Devolución implícita desde closures de una sola expresión
invertedNames = names.sorted(by: {s1, s2 in s1 > s2})

// Nombres de argumentos concisos
invertedNames = names.sorted(by: {$0 > $1})

// Métodos operadores
invertedNames = names.sorted(by: >)

// Trailing Closures
func UnaFuncionCualquieraQueTomaUnaClausura(clausura: () -> Void) { 
// El cuerpo de la función va aquí
}

// Así es como llamarías a esta función sin usar una clausura colgante:
UnaFuncionCualquieraQueTomaUnaClausura(clausura:{   
// El cuerpo de la clausura va aquí
}

// Así es como llamarías a esta función usando una clausura colgante:
UnaFuncionCualquieraQueTomaUnaClausura(){
// El cuerpo de la clausura colgante va aquí
}

// Método MAP(_:)
/* Usamos el método map(_:) con una clausura colgante,
para convertir un array de valores tipo Int en un array 
de valores tipo String.
*/

let intToStrings = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let nums = [16, 58, 510]
//Ahora podemos usar el array para crear otro array con valores tipo String
let strings = nums.map{(num) -> String in
    var num = num
    var conversion = ""

    repeat {
        conversion = intToStrings[num % 10]! + conversion
        num /= 10
    } while num > 0


    return conversion
}

