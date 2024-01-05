import Foundation

// FUNCIONES E INTRODUCCIÓN A LOS CLOSURES

// Función sin parámetro
func helloWorld() {
    print("Hello World")
}

helloWorld()

func plusTwoRandomNums() {
    var num = 2 + 2
}

plusTwoRandomNums()

// Función con un parámetro
func squared(num:Int){
    let squarNum = num * num

    print(squareNum)
}

squared(num: 10)

// Función con múltiples parámetros y valor de retorno
func cubed(num:Int) -> Int{
    let cubedNum = num * num * num
        return cubedNum
}

_ = cubed(num: 10)



//
func aSecret(text:String, secret:String){
    print(" Well... \(text) \(secret)")
}

aSecret(text: "Given enough startup capital and adequate research facility", secret: "I could be Batman")

// Valores por default
func aSecret(text:String = "Given enough startup capital and adequate research facility", secret:String){
    print(" Well... \(text) \(secret)")
}

aSecret(text:"sure!", secret: "I could be Batman")

// Valores múltiples de retorno en una función
func nameList () -> [String] {
    let arrayNames = ["Tim", "Jason", "Barbs", "Grayson"]
    return arrayNames
}
var names = nameList()

// Nombre de parámetros internos y externos
func averageGrades(physic subject1:Double, biology subject2:Double, math subject3:Double) -> Double{

    return(subject1 + subject2 + subject3) / 3

}

let myAverageGradesSubjects = averageGrades(physic: 10, biology: 8.5, math: 9.0)
print(myAverageGradesSubjects)

// INTRODUCCIÓN A CLOSURES
/* Los closures son bloques de código autocontenidos,
que pueden ser pasados y utilizados alrededor del código de la app.


{(parametros) -> tipo-valor- retorno in
código
}
*/

let myFirstClosure = {(subject1:Double, subject2:Double, subject3:Double) -> Double in
    return (subject1 + subject2 + subject3) / 3

}

print("My average:\(myFirstClosure(10, 8.5, 9.0))")

