import UIKit

// Complex data types

// Arrays
/// Arrays, são coleções de valores que são armazenados em um único valor.

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles: [String] = [john, paul, george, ringo]
print(beatles)
print(beatles[2])

// Set
/// itens são armazenados de forma randomica e não se repetem
var words = Set<String>()
words = (["teste"])
print(words)

let colors = Set(["blue", "red", "green"])
print(colors)
/// item duplicado é ignorado no print
let colorsDuplicate = Set(["blue", "red", "green", "green"])
print(colorsDuplicate)

// Tuples
/// permite armazenar vários valores em um único valor. Tem tamanho fixo e os itens não podem ser removidos ou adicionados
/// não é possível alterar o tipo de um item dentro de um tuple
/// é possível acessar os items usando a posição numérica ou nomeando os itens.

let fullName = (first: "Gabriela", last: "Sillis")
print(fullName.last)

// Dictionaries
/// para cada valor (value) é associado chave única (chave), o identificador de chave como o valor de dados de dicionário.
/// se tentar let um valor que não existe será exibido nil no console
var someDict = [String: Double]() ///
someDict = ["any_name": 20.00]
print(someDict)

let heights: [String: Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
print(heights["Taylor Swift"])
print(heights["teste"]) /// printa nill

// Enum

enum Result {
    case success
    case failure
}
print(Result.success)

enum Strings {
    static let name = "nome"
    static let lastName = "sobrenome"
}
print(Strings.name)

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
print(Planet(rawValue: 0))


// Resumo
/// Arrays, Set, Tuple e Dictionaries permitem que você armazene um grupo de itens sob um único valor. Cada um deles faz isso de maneiras diferentes, então o que você usa depende do comportamento que deseja.
/// Os arrays armazenam itens na ordem em que você os adiciona e você os acessa usando posições numéricas.
/// Sets salva itens fora de ordem, então você não pode acessá-los usando posições numéricas.
/// Tuples são fixas em tamanho, e você pode anexar nomes a cada um de seus itens. Você pode ler itens usando posições numéricas ou usando seus nomes.
/// Dictionaries armazenam itens de acordo com uma chave e valor, e você pode ler itens usando essas chaves.
/// Enums são uma maneira de agrupar valores relacionados para que você possa usá-los sem erros ortográficos.
/// Você pode anexar valores brutos a enums para que eles possam ser criados a partir de inteiros ou strings, ou você pode adicionar valores associados para armazenar informações adicionais sobre cada caso.
