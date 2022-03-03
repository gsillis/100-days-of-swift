import UIKit

func sayHello() {
    print("Hello World")
}

sayHello()

func sayHello(_ name: String) {
    print("Hello, my name is \(name)")
}

sayHello("Gabriela")

func square(number: Int) {
    print(number * number)
}

square(number: 20)

func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 9)
print(result)

/// retorna um tuple
func nameAndAge(_ name: String,_ age: Int) -> (String, Int) {
    return (name, age)
}

let userData = nameAndAge("Gabriela", 26)
print(userData)

func should(enableButton: Bool = false) -> Bool {
    return enableButton
}
print(should())
print(should(enableButton: true))

/// Variadic functions

func givenSquare(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

/// throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

try? checkPassword("password")

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

/// parametro inout
/// por default os valores passados por parametros são let, por isso não é possível alterar eu valor
/// para alterar o valor é possível user inout
func doubleInPlace(number: inout Int) {
    number *= 2
}

/// Resumo
/// Functions let us re-use code without repeating ourselves.
/// Functions can accept parameters – just tell Swift the type of each parameter.
/// Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
/// You can use different names for parameters externally and internally, or omit the external name entirely.
/// Parameters can have default values, which helps you write less code when specific values are common.
/// Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
/// Functions can throw errors, but you must call them using try and handle errors using catch.
/// You can use inout to change variables inside a function, but it’s usually better to return a new value.
