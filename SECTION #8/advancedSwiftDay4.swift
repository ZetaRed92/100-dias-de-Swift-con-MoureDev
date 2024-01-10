import Foundation

// CONTROL DE ACCESO DESDE CERO
/* Los niveles de acceso serán:
    - open
    - public
    - internal
    - fileprivate
    - private
El control de acceso lo podemos aplicar en:
    - class
    - struct
    - enum
    - var
    - let
    - func
Para asignar un control de acceso, basta con anteponer el tipo de acceso a la palabra reservada.
Ej: public class.
*/

/* Open y Public: Podemos acceder a ese objeto desde cualquier parte de nuestro código.
Internal: Solo podemos acceder al objeto dentro de nuestro módulo.
Fileprivate: Solo podemos acceder dentro de nuestro fichero.
Private: Restringe el uso del objeto únicamente al contexto donde está definido. (El entre llaves).
 */

// OPERADORES AVANZADOS
// Precedencia y Asociatividad

let myInt: Int = (2 + ((3 % 4) * 5))

let myInt2: Int = (((2 + 3) % 4) * 5)

// Más operadores avanzados

// Operadores bit a bit: Realizar operaciones con bits de tipo NOT, AND, OR, XOR
// Operadores de desplazamiento: Para desplazar bits
// Operadores de desbordamiento: Para manejar errores en valores por encima de su límite
// Operadores custom: Para definir nosotros mismos operadores

