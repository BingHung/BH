//: Playground - noun: a place where people can play

import UIKit

// protocl can inherit from each other 

protocol Boxing {
    
    // function  // function without body
    
    func throwJab()
    func throwCross()
    func throwHook()
    func throwUppercut()
    
    
    // properties  // property in protocol must be var
    var stamina:Int { get set }  // Treat this one as  a Variable
    var punchSpeed: Int { get }  // Treat this one as  a Variable or a Constant
    var punchPower: Int { get }
    
}

// That means, can access all the functions and properties are inside the Boxing protocol
protocol kickBoxing : Boxing {
    
    func throwKick()
    
    // in protocol must be var
    var kickPower: Int { set get } // var
    var kickSpeed: Int { get }  // var let
    
}

class KickBoxer : kickBoxing {
    
    var kickPower: Int
    var kickSpeed: Int
    var stamina: Int
    var punchPower: Int
    var punchSpeed: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int, kickPower: Int, kickSpeed: Int ) {
        
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        self.kickPower = kickPower
        self.kickSpeed = kickSpeed
    }
    
    func throwKick() {
        print("")
    }
    func throwJab() {
        print("Jab")
    }
    
    func throwCross() {
        print("Cross")
    }
    
    func throwUppercut() {
        print("Uppercut")
    }
    
    func throwHook() {
        print("throwHook")
    }
}

let myKickBoxer = KickBoxer(stamina: 500, punchSpeed: 200, punchPower: 400, kickPower: 600, kickSpeed: 100)
print(myKickBoxer.stamina)
myKickBoxer.throwHook()


protocol Computer {
    
    // associated type > means we can put whatever data type we want to put it there
    associatedtype RamType
    
    func trunOn()
    func turnOff()
    func nameOfOperatingSystem() -> String
    func canCalculateHeavyTasks() -> Bool
    
    func returnAmountOfRam() -> RamType // return RamType type (associate type)
    
    var speed: Int {get}
    var power: Int {get}
    
}



class iPhone7 : Computer {
    
    func trunOn() {
        print("iPhone is turned on")
    }
    
    func turnOff() {
        print("iPhone is turned off")
    }
    
    func nameOfOperatingSystem() -> String {
        return "iOS"
    }
    
    func canCalculateHeavyTasks() -> Bool {
        return true
    }
    
    /*
    func returnAmountOfRam() -> Self.RamType {
        <#code#>
    }
     */
    
    func returnAmountOfRam() -> Double {
        return 700.100
    }
    
    var speed: Int = 500
    var power: Int = 800
    
}


let myIPhone7 = iPhone7()
myIPhone7.returnAmountOfRam()
myIPhone7.trunOn()


// In swift you can inherit from only one class
// You can inherit as many protocol as you want in swift.

protocol Screen {
    
    func specifyTypeOdScreen() -> String
    
}

class GalaxyS6 : Computer, Screen {
    
    func trunOn() {
        print("Galaxy is turned on")
    }
    
    func turnOff() {
        print("Galaxy is turned off")
    }
    
    func nameOfOperatingSystem() -> String {
        return "Android"
    }
    
    func canCalculateHeavyTasks() -> Bool {
        return true
    }

    
    func returnAmountOfRam() -> Int {
        return 600
    }
    
    var speed: Int = 500
    var power: Int = 800
    
    func specifyTypeOdScreen() -> String {
        return "Touch Screen"
    }
    
}

let myGalaxyS6 = GalaxyS6()
myGalaxyS6.returnAmountOfRam()
myGalaxyS6.nameOfOperatingSystem()






