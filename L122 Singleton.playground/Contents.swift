//: Playground - noun: a place where people can play

import UIKit

class Leopard {
    
    private let name: String
    var speed: Int
    var power: Int
    
    // private init
    private init(name: String, power: Int, speed: Int) {
        self.name = name
        self.speed = speed
        self.power = power
    }
    
    //create stance in class by private init , type properties
    static let myOnlyLeopardInstance = Leopard(name: "My Leopard", power: 700, speed: 900)
    
}

// can't choose init , coz private ...
// Singleton > we have only instance of our class
let myLeopard = Leopard.myOnlyLeopardInstance
//print(myLeopard.name) > error , private protection
print(myLeopard.power)

myLeopard.power = 400
print(myLeopard.power)

