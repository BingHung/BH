//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
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
}

class Lion:Animal {
    
    //extra features
    var canFight: Bool
    
    // must have initializar
    // super init isn't called on all paths before returing from initializar
    init (name:String,color:String,animalPower:Int,animalSpeed:Int,age:Int,canFight: Bool){
        self.canFight = canFight
        
        // need to init super class too
        //super.init(name: "Animal", color: <#T##String#>, animalPower: <#T##Int#>, animalSpeed: <#T##Int#>, age: <#T##Int#>)
        super.init(name: "Animal", color: color, animalPower: animalPower, animalSpeed: animalSpeed, age: age)
    }
}

let myLion = Lion(name: "Simba", color: "Y", animalPower: 200, animalSpeed: 150, age: 22, canFight: true)
print(myLion.name) // stay in Animal not "Simba"