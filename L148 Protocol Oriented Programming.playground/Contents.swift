//: Playground - noun: a place where people can play

import UIKit

// inside protocol , you don't implement
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
    
    
    // can create function not inside protocol itself (new function (must have body , not just declare))
    
    func HaveFun() {
        print("Blalalallalalalaala")
    }
    
    
    // can also create properties in extension (new properties) > must treat as computed properties
    
    // [error] var BH: String = "Smart"
    
}




class BoxerClass : Boxing {
    
    /*
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
     */
    
    /*
    func calcualteOveralValueOfBoxer() -> Int {
        return stamina * punchPower * punchSpeed
    }
     */
    
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

let myBoxer = BoxerClass(stamina: 200, punchPower: 400, punchSpeed: 500, accuracy: 600)
myBoxer.throwCross()
myBoxer.calcualteOveralValueOfBoxer()
myBoxer.HaveFun()

let myBoxer2 : Boxing = BoxerClass(stamina: 700, punchPower: 800, punchSpeed: 900, accuracy: 1000)
let myBoxer3 : BoxerClass = BoxerClass(stamina: 1100, punchPower: 1200, punchSpeed: 1300, accuracy: 1400)


class KickBoxer : Boxing {
    
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
    
    func throwKick() {
        print("Kick")
    }
    
    // ignore default one (overwrite)
    func calcualteOveralValueOfBoxer() -> Int {
        return (stamina * punchPower * punchSpeed) + (kickSpeed * kickPower)
    }
    
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

let myKickBoxer = KickBoxer(stamina: 400, punchPower: 500, punchSpeed: 600, accuracy: 700, kickSpeed: 800, kickPower: 900)
myKickBoxer.kickSpeed
myKickBoxer.calcualteOveralValueOfBoxer()


// there are alot of common in these class > can we simplified it. (too much duplicated code)







