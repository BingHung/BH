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
    var stamina:Int { get set }
    var punchSpeed: Int { get }
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
    
    // properties can be stored property or computed property
    var stamina: Int = 100      // coz we use { get set }, we can only define it to var
    
    // can;t refer to my property stamina here
    
    var punchPower: Int = 200
    let punchSpeed: Int = 300  // coz we use {get} we can define it to var or let
    
}


// create an instance , don't need to provide init , because stored property already init
let myBoxer = Boxer()
myBoxer.punchPower
myBoxer.punchSpeed
myBoxer.stamina
myBoxer.throwCross()

myBoxer.stamina = 777
myBoxer.stamina

myBoxer.punchPower = 800  // still allow to assign value ???
myBoxer.punchPower


//myBoxer.punchSpeed = 666  error ~








