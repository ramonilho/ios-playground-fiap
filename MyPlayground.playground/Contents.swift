//: Playground - noun: a place where people can play

import UIKit

// -------- 14/08/2017 -------- //

// Variaveis
var age = 22    //  Mutable
var a = 1, b = "abc", c = 3.0

// Constants
let age1 = 22
//age1 = 30 // <--- you cant do this

// Tipos
// Int, Double, Float, String, Character, Bool
// Int, UInt, Int8, Int16, Int32, Int65, Float80

let count = 77
let dolarRate = 3.42
let fiapClass = "13MOB"
let gender = "M"
let isMale = gender == "M"

// Concatenacao String
print("Concatenacao String ============")
let firstName = "Eric"
let lastName = "Brito"
var fullName = "Eric" + " " + "Brito"
fullName = "\(firstName) \(lastName)"

let dog1 = "Beethoven 🐶", dog2 = "Mozart 🐕"
print("Meus cachorros são \(dog1) e \(dog2). Fazedores de 💩.")

// Tuplas
print("Tuplas =========================")
var address: (street: String, number: Int, postalCode: String) = ("Av. Paulista", 1100, "01217-010")
print("Eu moro na rua \(address.street) no número \(address.number).")

var (street, _, postalCode) = address

// Optional 
print("Optional =======================")
var student: String?
student = "Joãozinho ✅"

func printOptional(str: String?) {
    guard let string = str else {
        print("String is null")
        return
    }
    print(string)
}

printOptional(str: student)

var grade: Int!
grade = 10
print(grade)

// Arrays
print("Arrays =========================")
var anyTypeArray: [Any?] = [1, "1231", nil]
print(anyTypeArray)

for item in anyTypeArray {
    if item is Int {
        print("\(item!) is Int")
    } else if item is String {
        print("\(item!) is String")
    } else if item == nil {
        print("item is nil")
    }
}

var tupleArray: [(String, UInt)] = [
    ("Fulano", 10),
    ("Beltrano", 20),
    ("Ciclano", 0)
]

// Adicionando elementos
tupleArray.append(("Novo nome", 29))
tupleArray += [("Mais um nome", 29)]

let firstAndSecondTuple = tupleArray[0..<2]

tupleArray.insert(("Novo insert", 29), at: 0)

let nicknames = ["Nome1", "Nome2", "Nome4"]
print(nicknames.contains("Nome5"))

print("Dictionaries ===================")

let states : [String:String] = [
    "PA" : "Pará",
    "SP" : "São Paulo",
    "BA" : "Bahia",
]

print("Eu nasci em \(states["SP"] ?? "Acre")")

nicknames.map { print($0) }
states.map { print($0) }

print("================================")


// Operadores personalizados
// Operador prefix: opera antes do operando
prefix operator >-
prefix func >- (right: Int) -> Int {
    return right * right * (-1)
}
>-5

// Operador postfix: opera depois do operando
postfix operator -<
postfix func -< (right: Int) -> Int {
    return right / right * (-1)
}
5-<

// Operador infix: opera entre dois valores
infix operator >-<
func >-< (left: Int, right: Int) -> Int {
    return 2 * left * right
}
3>-<5


// Desafio print( 15 <-> 25 )
import Foundation
infix operator <->
func <-> (numberOfElements: Int, max: Int) -> [Int] {
    var result = [Int]()
    
    while result.count < numberOfElements {
        let random = Int(arc4random_uniform(UInt32(max)))+1
        if !result.contains(random) {
            result.append(random)
        }
    }
    
    return result.sorted()
}


print(6<->60)

// Função com n parâmetros
func sumValues(_ initialValue: Int, with values:Int..., multipier: Int = 1) -> Int{
    var result = initialValue
    for value in values {
        result += value
    }
    return result * multipier
}
sumValues(0, with: 2,3,4,5,6,7,10)
sumValues(1, with: 2,3,4,5,6,7,10, multipier: 2)

enum OperationType {
    case sum
    case substract
    case multiply
    case divide
}

// First Class Citizen || Clojures
typealias Operation = (Int, Int) -> Int

func sum(_ a: Int,_ b:Int) -> Int{
    return a + b
}
func substract(_ a: Int,_ b:Int) -> Int{
    return a - b
}
func multiply(_ a: Int,_ b:Int) -> Int{
    return a * b
}
func divide(_ a: Int,_ b:Int) -> Int{
    return a / b
}

func calculate(_ a: Int,_ b:Int, operation: OperationType) -> Int {
    switch operation {
        case .sum:
            return sum(a, b)
        case .substract:
            return substract(a, b)
        case .divide:
            return divide(a, b)
        case .multiply:
            return multiply(a, b)
    }
    
}

calculate(2, 3, operation: .multiply)

// Resumindo funções
func calc(_ a: Int, _ b: Int, operation: Operation) -> Int {
    return operation(a, b)
}
calc(2, 3) { (a, b) -> Int in
    return a * b
}
calc(2, 3) {
    return $0 * $1
}
calc(2, 3) { $0 * $1 }


