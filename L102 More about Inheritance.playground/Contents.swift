//: Playground - noun: a place where people can play

import UIKit

// final keyword > no more subclass
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
    
    // you can also declare function , variable in final > we can't overwrite
     func fight() {
        print("The Animal is now fighting")
    }
}


 class Lion : Animal {
    var canFight: Bool = true
    
    // override function from parent
    // if no override keyword , the compiler show error , coz we can't have the same name with super class ,
    override func fight() {
        // apply parent function
        super.fight()
        print("My Lion Fight")
    }
    
    func balala() {
        super.fight()
        super.age = 27
        
        age = 55 // we can easily use var in class
    }
 }
 
 let myLion = Lion(name: "Simba", color: "Yellow", animalPower: 200, animalSpeed: 150, age: 35)
 
 
 print(myLion.name)
 print(myLion.color)
 print(myLion.age)
 
 myLion.canFight
 
 // add method in class
myLion.fight()
myLion.balala()
myLion.age


