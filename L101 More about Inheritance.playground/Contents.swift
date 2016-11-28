//: Playground - noun: a place where people can play

import UIKit

// final keyword > no more subclass
final class Animal {
    
    let name: String
    let color: String
    var animalPower: Int
    var animalSpeed: Int
    var age: Int
    
    init(name:String,color:String,animalPower:Int,animalSpeed:Int,age:Int) {
        self.name = name
        self.color = color
        self.animalPower = animalPower
        self.animalSpeed = animalSpeed
        self.age = age
    }
    
    // you can also declare function , variable in final > we can't overwrite
    final func fight() {
        print("The Animal is now fighting")
    }
}


// if we use final keyword , we can't inherite

/*
class Lion : Animal {
    var canFight: Bool = true
}

let myLion = Lion(name: "Simba", color: "Yellow", animalPower: 200, animalSpeed: 150, age: 35)


print(myLion.name)
print(myLion.color)
print(myLion.age)

myLion.canFight

// add method in class
myLion.fight()
*/





