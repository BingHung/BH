//: Playground - noun: a place where people can play

import UIKit

class Computer {

    let name: String
    var power: Int
    var speed: Int
    

     init( name: String , power: Int, speed: Int) {
        self.name = name
        self.power = power
        self.speed = speed
    }
}


class MobileComputer: Computer {
    
    let screenType: String
    
    init (name: String, power: Int, speed: Int, screenType: String) {
        self.screenType = screenType
        super.init(name: name, power: power, speed: speed)
    }
}


class DesktopComputer: Computer {
    
    var hasKeyboard : Bool
    var hasMouse: Bool
    
    init(name:String, power:Int, speed: Int, hasKeyboard:Bool , hasMouse: Bool){
        
        self.hasKeyboard = hasKeyboard
        self.hasMouse = hasMouse
        super.init(name: name, power: power, speed: speed)
    }
}


// use inheritance -> only single responsibility (e.g. MobileComputer , only worry about screenType)
// use inheritance -> we have different type

let myComputer = Computer(name: "iMac", power: 200, speed: 100)
let myMobileComputer = MobileComputer(name: "ASUS", power: 10, speed: 20, screenType: "Touch Screen")
let myDesktopComputer = DesktopComputer(name: "ACER", power: 300, speed: 200, hasKeyboard: true, hasMouse: true)

// use inheritance -> share class 



