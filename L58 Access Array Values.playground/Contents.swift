//: Playground - noun: a place where people can play

import UIKit


var animalNames = ["African Lion", "Fox", "Beer", "Tiger"]

// that array might be empty so the value in array is optional
let firstAnimal = animalNames.first

print(firstAnimal)

// unwrapped optional values
if let firstAnimal = firstAnimal {
    print("The first animal is \(firstAnimal)")
}