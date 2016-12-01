//: Playground - noun: a place where people can play

import UIKit


// protocol > contract that struct , class , enum can conform to
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

// class can conform to protocol
class Boxer: Boxing {
    
    func throwJab() {
        print("JAB")
    }
    
    func throwCross() {
        print("CROSS")
    }
    
    func throwHook() {
        print("HOOK")
    }
    
    func throwUppercut() {
        print("UPPERCUT")
    }
    
    
    /*
    var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int) {
        self.stamina = stamina
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
    }
    */
    
    // stored property
    var stamina: Int = 400
    var punchSpeed: Int = 200
    
    // computed property // must be var , must specify data type (return value)
    // computer property just calculating value and return value , do not store value

    var punchPower: Int {
        return stamina * punchSpeed
    }
    
    
    
}


//let myBoxer = Boxer(stamina: 100, punchSpeed: 200, punchPower: 300)
let myBoxer = Boxer()

myBoxer.punchPower
myBoxer.punchSpeed
myBoxer.stamina
myBoxer.throwCross()

myBoxer.stamina = 777
myBoxer.stamina

//myBoxer.punchPower = 800  // still allow to assign value ???
myBoxer.punchPower


myBoxer.punchSpeed = 666

