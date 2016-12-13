//: Playground - noun: a place where people can play

import UIKit

protocol Boxing {
    
    func throwJab()
    func throwCross()
    func throwHook()
    func throwUppercut()
    
    func calcualteOveralValueOfBoxer() -> Int
    
    var stamina: Int {get}
    var punchSpeed: Int {get}
    var punchPower: Int {get}
    var accuracy: Int {get}
    
}

// inside protocol we can't define implementation,  but in extension we can implement it.
extension Boxing {
    
    // defualt implementation of our functions in protocol
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
    
    
    func calcualteOveralValueOfBoxer() -> Int {
        return stamina * punchPower * punchSpeed
    }
    
    
    // default implementation of property
    
    // if you have init value > defualt will be ignore ... (overwrtite default implmentation)
    var stamina: Int {
        return 10
    }
    
    var accuracy: Int {
        return 50
    }
    

    // can create function not inside protocol itself (new function (must have body , not just declare))
    

    
    
    // can also create properties in extension (new properties) > must treat as computed properties
    
    var reflrctionSpeed: Int {
        return 70
    }
    
    
    // [error] var BH: String = "Smart"
    
}


class BoxerClass : Boxing {
    
    
    var stamina: Int
    var punchPower: Int
    var punchSpeed: Int
    var accuracy: Int
    
    init (stamina: Int, punchPower: Int, punchSpeed: Int, accuracy: Int) {
        self.stamina = stamina
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
        self.accuracy = accuracy
    }
}

protocol kickBoxing {
    func throwKick()
    
    func calculateOveralValueOfKickBoxer() -> Int
    
    var kickPower : Int {get}
    var kickSpeed : Int {get}
}


//   where Self : Boxing > this extension , only be executed if the class actually confrom to kickBoxing, Boxing
//   where is the condition ...
extension kickBoxing  where Self : Boxing {
    
    func throwKick() {
        print("KICK")
    }
    
    
    // does not recognize (stamina , punchPower ,punchSpeed) > error -> solution is using where
    func calculateOveralValueOfKickBoxer() -> Int {
        return (stamina * punchPower * punchSpeed) + (kickSpeed * kickPower)
    }
}

// this class comform to both Boxing and kickBoxing , satify the extension statement
class KickBoxer : Boxing , kickBoxing  {
    

    /*
    func calculateOveralValueOfKickBoxer() -> Int {
        return (stamina * punchPower * punchSpeed) + (kickSpeed * kickPower)
    }*/
    
    
    
    var stamina: Int
    var punchPower: Int
    var punchSpeed: Int
    var accuracy: Int
    
    var kickSpeed: Int
    var kickPower: Int
    
    init (stamina: Int, punchPower: Int, punchSpeed: Int, accuracy: Int, kickSpeed:Int, kickPower:Int) {
        
        self.stamina = stamina
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
        self.accuracy = accuracy
        
        self.kickPower = kickPower
        self.kickSpeed = kickSpeed
    }
    
}



let myBoxer : Boxing = BoxerClass(stamina: 300, punchPower: 400, punchSpeed: 500, accuracy: 600)
myBoxer.reflrctionSpeed



let firstBoxer : Boxing = BoxerClass(stamina: 50, punchPower: 60, punchSpeed: 70, accuracy: 80)
let secondBoxer : BoxerClass = BoxerClass(stamina: 100, punchPower: 200, punchSpeed: 300, accuracy: 400)
let thirdBoxer : Boxing = BoxerClass(stamina: 200, punchPower: 300, punchSpeed: 400, accuracy: 500)


// becauese , the data type is kickBoxing , is not KickBoxer > we can only use in kickBoxing protocol
let firstKickBoxer : kickBoxing = KickBoxer(stamina: 100, punchPower: 200, punchSpeed: 300, accuracy: 400, kickSpeed: 500, kickPower: 600)
let secondKickBoxer : KickBoxer = KickBoxer(stamina: 10, punchPower: 20, punchSpeed: 30, accuracy: 40, kickSpeed: 50, kickPower: 60)


print(firstBoxer.calcualteOveralValueOfBoxer())
print(firstKickBoxer.calculateOveralValueOfKickBoxer())

// we can create instance but not apply func in different data type ...
// [error] firstKickBoxer > we can't use .... stamina , accuracy ..... etc 

secondKickBoxer.stamina // coz data type is KickBoxer class that we can apply lots of ...var func kickBoxer(Boxing , KickBoxing ... )


// single inheriatance (class) , multi  inheritance (protocol)

// overwrite problem related to data type .... (which version )






