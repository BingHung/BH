//: Playground - noun: a place where people can play

import UIKit


class Lion {
    
    // stored properties
    let name: String
    var speed: Int
    var power: Int
    
    //static > type properties (aka class properties) , the property share all insatnces of the class
    static var numberOfLions: Int = 0
    
    
    init(name: String, speed: Int, power: Int) {
        self.name = name
        self.speed = speed
        self.power = power
        
        // Only in this way you can access your type property
        Lion.numberOfLions += 1
    }

    
}


let firstLion = Lion(name: "Simba", speed: 200, power: 300)
print(Lion.numberOfLions)

let secondLion = Lion(name: "Lity", speed: 200, power: 50)
print(Lion.numberOfLions)

let thirdLion = Lion(name: "BH", speed: 999, power: 999)
print(Lion.numberOfLions)

