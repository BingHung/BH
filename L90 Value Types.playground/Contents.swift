//: Playground - noun: a place where people can play

import UIKit

var numberA = 20
// numberA assign to numberB is a copy , this is called value type
var numberB = numberA


print(numberA)
print(numberB)


numberA = 100
print(numberA)
print(numberB) //20 , it hasn't change 


struct KickBoxer {
    
    var punchSpeed: Int
    var punchPower: Int
    var kickSpeed: Int
    var kickPower: Int
    
    init (punchSpeed: Int, punchPower: Int,  kickSpeed: Int, kickPower: Int) {
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        self.kickSpeed = kickSpeed
        self.kickPower = kickPower
    }
}


var kickBoxerA = KickBoxer(punchSpeed: 100, punchPower: 200, kickSpeed: 150, kickPower: 300)
print(kickBoxerA.kickPower)


var kickBoxerB = KickBoxer(punchSpeed: 200, punchPower: 400, kickSpeed: 1000, kickPower: 5000)
print(kickBoxerB.punchSpeed)

// assign instances to instances , struct are value type (copy)
var kickBoxerC = kickBoxerB
kickBoxerB.kickPower = 10
print(kickBoxerC.kickPower)


// value type > create copy
// All basic data type in swift is struct (value type)








