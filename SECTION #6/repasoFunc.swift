import Foundation

// FUNCTIONS

// Functions without parameters
func sayHi() {
    print("Hi, Dev!")
}

sayHi()


// Functions with multiple parameters
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(persona: person)
    }
}
print(greet(person: "Bruce", alreadyGreeted: true))

// Functions without return values
func greet(person: String) {
    print("Hello, \(person)!")
}
greet(person: "Alfred")

// Functions with multiple return values
func minMax(array:[Int]) -> (min:Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}