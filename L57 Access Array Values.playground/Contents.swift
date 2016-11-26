//: Playground - noun: a place where people can play

import UIKit


var intValues = [1, 2, 3, 4, 5, 6]
var animalNames = ["African Lion", "Fox", "Beer", "Tiger"]

print(intValues.count)

if intValues.count > 5 {
    print("We have more than 5 Integer values")
} else {
    print("We have less than 6 Integer Values")
}


let firstIntegerValue = intValues.first
let lastImtegerValue = intValues.last
let minIntegerValue = intValues.min()
let maxIntegerValue = intValues.max()


let firstAnimal = animalNames.first
let lastAnimal = animalNames.last

// Lower string value in alphabet order
let minStringValueInAlphaber =  animalNames.min()

