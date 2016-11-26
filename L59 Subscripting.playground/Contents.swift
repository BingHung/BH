//: Playground - noun: a place where people can play

import UIKit

var intValues = [1, 2, 3, 4, 5, 6]
var animalNames = ["African Lion", "Fox", "Beer", "Tiger"]

var firstAnimal = animalNames[0]
print(firstAnimal)

let someAnimals = animalNames[1...3]
print(someAnimals)
print(animalNames)



if intValues.contains(20) {
    print("\(intValues) array contains the value 20 ")
} else {
    print("\(intValues) array does not contain the value 20")
}


if animalNames[0...3].contains("Fox") {
    print("We have Fox inside our array")
}

