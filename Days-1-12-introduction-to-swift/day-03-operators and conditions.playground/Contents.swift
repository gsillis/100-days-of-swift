import UIKit

// Arithmetic operators
let firstScore = 12
let secondScore = 4

let sumTotal = firstScore + secondScore
print(sumTotal)

let minTotal = firstScore - secondScore
print(minTotal)

let multTotal = firstScore * secondScore
print(multTotal)

let divTotal = firstScore / secondScore
print(divTotal)

let modulo = 13 % secondScore
print(modulo)

let fakers = "Fakers gonna "
let action = fakers + "fake"
print(action)

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf
print(beatles)

/// para subtrair ou somar um valor em váriavel é preciso usar = depois do operador
var score = 95
score -= 5
print(score)

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
print(quote)

// Comparison operators
let firstNumber = 6
let secondNumber = 4
/// é possível capturar o valor dessa operação em uma variável que retorna true
let resultOne = firstScore == secondScore
print(resultOne)
let resultTwo = firstScore != secondScore
print(resultTwo)

let lessThan = firstScore < secondScore
print(lessThan)
let moreThan = firstScore >= secondScore
print(moreThan)

// Conditions

/// if e else
if firstNumber + secondNumber == 21 {
    print("Blackjack!")
} else {
    print("Not this time")
}

/// if ternário
firstNumber + secondNumber == 21 ? print("Not this time") : print("yeah")

/// else if
if firstNumber + secondNumber == 2 {
    print("Aces – lucky!")
} else if firstNumber + secondNumber == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Combining conditions
/// || ou && e
let age1 = 12
let age2 = 21

age1 > 18 && age2 > 18 ? print("Both are over 18") : print("")

age1 > 18 || age2 > 18 ? print("Both are over 18") : print("")

// The ternary operator
let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

// Switch statements

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// Range operators
let totalScore = 85

switch totalScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// Resumo
/// Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
///There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
///You can use if, else, and else if to run code based on the result of a condition.
///Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
/// If you have multiple conditions using the same value, it’s often clearer to use switch instead.
/// You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
