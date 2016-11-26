//: Playground - noun: a place where people can play

import UIKit

var intValues = [1, 2, 3, 4, 5, 6]
var animalNames = ["African Lion", "Fox", "Beer", "Tiger"]

animalNames.append("Leopard")

//animalNames += ["Cats"]
animalNames = animalNames + ["Cat"]

animalNames += ["Dog", "Fish", "Dolphin"]

animalNames.insert("Panther", at: 4)
print(animalNames)


var deleteAnimal = animalNames.removeLast()
print(deleteAnimal)

animalNames.removeLast()
print(animalNames)

print("\(animalNames) without dolphin")

deleteAnimal = animalNames.remove(at: 5)

print("\(animalNames) without lerpard")

animalNames.index(of: "African Lion")

animalNames[2] = "Panda"

print(animalNames)

animalNames.count




intValues[0...1] = [100,200]
print(intValues)

// replace 0...2 to the array below
intValues[0...2] = [1000, 2000, 3000, 4000, 5000, 6000]
print(intValues)

let number4 = intValues.remove(at: 6)
intValues.insert(number4, at: 0)
print(intValues)


intValues = intValues.sorted()
print(intValues)

