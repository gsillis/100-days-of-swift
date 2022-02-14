import UIKit

//Variables
var greeting = "Hello, playground"

// Strings and integers
var age = 25

/// mesmo com _ o número é entendido como Int - ajuda na leitura de números grandes
var population = 1_000_000
print(population)

/// com quebra de linha
var string = """
string com muitas linhas
string com muitas linhas
string com muitas linhas
string com muitas linhas
"""
print(string)

// sem quebra de linha
var string2 = """
string com muitas linhas \
string com muitas linhas \
string com muitas linhas \
string com muitas linhas
"""
print(string2)

greeting = "Olar"
age = 26

// Doubles and booleans

/// Sempre que você cria uma variável com um número fracionado, Swift entende a variável como Double
/// o mesmo vale para Int, String, Bool e outros tipos
var pi = 3.141
var isSad = true

/// String interpolation and Constants
/// let é uma constante e seu valor não pode ser alterado
let name = "Gabriela"
let lastName = "Sillis"
let fullName = "Meu nome é \(name) \(lastName), minha idade é \(age)"
print(fullName)

/// Type annotations
/// apesar de nãqo ser necessário, pois o Swift atribui a cada variável e constante um tipo com base no valor que é dado quando é criado,
/// é possível deixar explicito o tipo da várivel
let height: Double = 1.64
let year: Int = 1996
let nickname: String = "Gabs"
let isHappy: Bool = true


// Resume
/// You make variables using var and constants using let. It’s preferable to use constants as often as possible.
/// Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
/// Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
/// String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
/// Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
