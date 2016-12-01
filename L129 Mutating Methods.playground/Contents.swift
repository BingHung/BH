//: Playground - noun: a place where people can play

import UIKit


struct Fighter {
    
    var power: Int
    var speed: Int
    
    // in struct , you cannot modify your store property in your method
    //mutating keyword > struct value type , inorder to specify we can modify store property ...
    mutating func increasePowerBy10() {
        power = power + 10
    }
    
    mutating func increaseSpeedBy20() {
        speed += 20
    }
}

var firstFighter = Fighter(power: 20, speed: 10)
var secondFighter = firstFighter // copy asign to secondFighter , they are totally different individuals
firstFighter.power = 200

print(firstFighter.power)
print(secondFighter.power)
firstFighter.increasePowerBy10()
print(firstFighter.power)
print(secondFighter.power)


// struct is value type
// class is reference type


class Boxer {
    
    var punchPower: Int
    var punchSpeed: Int
    
    init(punchPower: Int, punchSpeed: Int) {
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
    }
    
    func increasePunchPowerby10() {
        punchPower += 10
    }
    
    func increasePunchSpeedby20() {
        punchSpeed += 20
    }
}


var firstBoxer = Boxer(punchPower: 100, punchSpeed: 500)
var secondBoxer = firstBoxer

firstBoxer.punchPower = 800
print(secondBoxer.punchPower)




