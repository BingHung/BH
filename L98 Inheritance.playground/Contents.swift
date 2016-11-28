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

//class Lion {
//    
//    let name: String
//    let color: String
//    var animalPower: Int
//    var animalSpeed: Int
//    
//    init(name:String,color:String,animalPower:Int,animalSpeed:Int) {
//        self.name = name
//        self.color = color
//        self.animalPower = animalPower
//        self.animalSpeed = animalSpeed
//    }
//
//}


// Power of Inheritance (all methods , features from super class , but excpet private one )
class Lion: Animal {
    let canFight: Bool = true
}

let myAnimal = Animal(name: "Hippo", color: "Gray", animalPower: 100, animalSpeed: 5)
let Simba = Lion(name: "Lion King", color: "Brown", animalPower: 100, animalSpeed: 90)


print(myAnimal)
print(myAnimal.name)


print(Simba)
print(Simba.canFight)





