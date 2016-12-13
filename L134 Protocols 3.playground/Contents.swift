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


protocol ConvertIntToDouble {
    
    func convertToDouble() -> Double
    
}

// extension , in order to extend functionality of your type
extension Int : ConvertIntToDouble {
   
    // self refer to instance , of this int data type
    func convertToDouble() -> Double {
        return Double(self)  // convert to double
    }
    
}

2.convertToDouble()
print(2.convertToDouble())

var number20 = 20
print(number20.convertToDouble())


class BoxerClass : Boxing {
    
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

    var stamina: Int = 200
    var punchPower: Int = 300
    var punchSpeed: Int = 400
    
}

// In Swift all, struct , class , enum call all conform to the protocol
struct BoxerSruct : Boxing {
    
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

    var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    
}


// In enum we can't have stored property , we can only have computed property
enum BoxerEnum : Boxing {
    
    case AmatureBoxer
    case ProfessionalBoxer
    
    
    // { get set } > computed property
    var stamina: Int {
        
        get {
            switch self { // self > instance of these BoxerEnum (AmatureBoxer, ProfessionalBoxer)
            case .AmatureBoxer :
                return 1000
            case .ProfessionalBoxer :
                return 2000
            }
        }
        
        // we can ignore get if i want , but we need to provide here
        set {
            
            
        }
        
    }
    
    var punchSpeed: Int {
        
        // we can >
        /*
        get {
            
        }*/
        
        return 1000 // for both instances ....
        
    }
    
    
    var punchPower: Int {
        
        switch self {
        case .AmatureBoxer:
            return 2000
        case .ProfessionalBoxer:
            return 4000
        }
        
    }
    
    func throwJab() {
        switch self {
        case .AmatureBoxer:
            print("The Amature ....")
        default:
            print("The Professional")
        }
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

// every instances , that actually conform to your specific protocol can be assigned to your variable
var myBoxerOfClass : Boxing  =  BoxerClass()
myBoxerOfClass.stamina
myBoxerOfClass.throwJab()


var myBoxerOfStruct : Boxing = BoxerSruct(stamina: 200, punchSpeed: 400, punchPower: 700)
myBoxerOfStruct.stamina
myBoxerOfStruct.throwHook()


var amatureBoxerEnum : Boxing = BoxerEnum.AmatureBoxer
amatureBoxerEnum.stamina
amatureBoxerEnum.throwCross()

var professionalBoxerOfEnum : Boxing = BoxerEnum.ProfessionalBoxer
professionalBoxerOfEnum.stamina
professionalBoxerOfEnum.throwHook()





var arrayOfBoxers : Array<Boxing> = [myBoxerOfClass, myBoxerOfStruct, amatureBoxerEnum, professionalBoxerOfEnum]
//print(arrayOfBoxers[0])

for boxer in arrayOfBoxers {
    print(boxer)
}



