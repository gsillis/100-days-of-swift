import UIKit

// Closures

func closureExample(completion: @escaping(String)-> Void) {
    completion("test")
}

closureExample { string in
    print(string)
}

/// Creating basic closures
let driving = {
    print("I'm driving my car")
}

driving()

/// Accepting parameters in a closure

let drivingToPlace = { (place: String) in
    print("I'm going to \(place) in my car")
}
/// o parametro fica oculto não sendo necessário usar drivingToPlace(place: "Osasco")
drivingToPlace("Osasco")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let drive = drivingWithReturn("Osasco")
print(drive)

func travel(completion: () -> Void) {
    print("I'm getting ready to go.")
    completion()
    print("I arrived!")
}

travel(completion: driving)

travel {
    print("I'm driving in my car")
}

func travel2(completion: (String) -> Void) {
    print("I'm getting ready to go.")
    completion("Sp")
    print("I arrived!")
}

travel2 { string in
    print("I'm going to \(string) in my car")
}

/// closures com mais de um parametro
func travel3(completion: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = completion("London", 60)
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) at \($1) miles per hour."
}

func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel4()
result("London")

/// Sumary
/// You can assign closures to variables, then call them later on.
/// Closures can accept parameters and return values, like regular functions.
/// You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
/// If the last parameter to your function is a closure, you can use trailing closure syntax.
/// Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
/// If you use external values inside your closures, they will be captured so the closure can refer to them later.
