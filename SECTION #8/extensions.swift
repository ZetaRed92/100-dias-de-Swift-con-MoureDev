import Foundation

// EXTENSIONS
let myMeters: Double = 5000

func metersToKm(meters: Double) -> Double {
    return meters / 1000
}

print(metersToKm(meters: myMeters))

extension  Double {
    var km: Double{
        return self / 1000
    }
    
    var m: Double{
        return self
    }

    var cm: Double {
        return self = 100
    }
}

print(myMeters.km)

// PROTOCOLOS

protocol PersonProtocol {
    var name: String { get set }
    var age: Int { get set }
    
    func fullName() -> String 
}

struct Programmer: PersonProtocol {
    var name: String
    var age: Int
    var language: String

    func fullName() -> String {
        return "The name is \(name), age: \(age) and his language is \(language)"
    }
}

struct Teacher: PersonProtocol {
    var name: String
    var age: Int
    var subject: String   
    
    func fullName() -> String {
        return "The name is \(name), age: \(age) and he teachs \(subject) language."
    }
}

let myProgrammer = Programmer(name: "Zeta", age: 31, language: "Swift")
let myTeacher = Teacher(name:"Brais", age: 32, subject: "Programming")

print(myProgrammer.fullName())
print(myTeacher.fullName())


// PROTOCOLO DELEGADO

class FirstClass: SecondClassProtocol {

    func callSecond() {
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }

    func call() {
        print("I'm back")
    }
}

class SecondClassProtocol {

    func call()
    
}


class SecondClass {

    var delegate: SecondClassProtocol?

    func callFirst() {

        sleep(5)

        delegate?.call()
    }
}

let firstClass = FirstClass()
firstClass.callSecond()

// GENERICS
// Sin genéricos
func swapTwoInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var myFirstGeneric = "Zeta"
var mySecondGeneric = "Red"
print("First value is \(myFirstGeneric) and the second value is \(mySecondGeneric)")
swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print("The first value is \(myFirstGeneric) and the second value is \(mySecondGeneric)")

// Con más de un generic de tipos más concretos
// func functionName<T: SomeClass, U: SomeProtocol>(a: T, b: T, c:U){}