//: Playground - noun: a place where people can play

import UIKit


class Boxer {
    
    // let using private access modifiers
    private let maxPunchingPower = 500
    private let maxPunchingSpeed = 800
    
    var punchingPower: Int = 300 {
        didSet {
            if punchingPower > maxPunchingPower {
                print("The punching power of your boxer instance is too high . Let's change it back to the old value : \(oldValue)")
                punchingPower = oldValue
            }
        }
    }
    var punchingSpeed: Int = 200 {
        willSet {
            if punchingSpeed > maxPunchingPower {
                print("punching speed is changed : \(newValue)")
                
                //punchingSpeed = 200
            }
        }
    }
}


let myBoxer = Boxer() // need ()
myBoxer.punchingPower = 1000
myBoxer.punchingPower

myBoxer.punchingSpeed = 1000
myBoxer.punchingSpeed = 50

