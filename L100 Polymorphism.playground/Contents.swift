//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
    let name: String
    let color: String
    var animalPower: Int
    var animalSpeed: Int
    
    init(name:String,color:String,animalPower:Int,animalSpeed:Int) {
        self.name = name
        self.color = color
        self.animalPower = animalPower
        self.animalSpeed = animalSpeed
    }
}

// inherite all features and behaviors
class Dog: Animal {
    let canFight = false
    
    
}


func returnAnimal(animal: Animal) -> String {
    return "\(animal.name),\(animal.color),\(animal.animalPower),\(animal.animalSpeed)"
}

let myAnimal = Animal(name: "Lion", color: "Yellow", animalPower: 200, animalSpeed: 100)
let myDog = Dog(name: "labolador", color: "Red", animalPower: 10, animalSpeed: 20)


print(returnAnimal(animal: myAnimal))
print(returnAnimal(animal: myDog)) // Can work successfully


