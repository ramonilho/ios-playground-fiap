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
        print("\(item) is Int")
    } else if item is String {
        print("\(item) is String")
    } else if item == nil {
        print("\(item) is nil")
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

// --------------------------- //
var str = "swift rules"
let coolBlue = UIColor(red: 52/255.0, green: 73/255.0, blue: 94/255.0, alpha: 1.0)

// Label Setup
let awesomeLabel = UILabel(frame: CGRect(x: 0, y: 66, width: 200, height: 44))
awesomeLabel.text = str
awesomeLabel.textAlignment = NSTextAlignment.center
awesomeLabel.textColor = UIColor.white

// Label Style
awesomeLabel.backgroundColor = coolBlue
awesomeLabel.layer.masksToBounds = true
awesomeLabel.layer.cornerRadius = 10.0

// Adding into a view
var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
view.addSubview(awesomeLabel)

// --------------------------- //
