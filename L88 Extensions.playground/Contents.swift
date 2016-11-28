//: Playground - noun: a place where people can play

import UIKit

struct Boxing {
    
    var punchSpeed: Int
    var punchPower: Int
    var stamina: Int
    
    init(punchSpeed: Int, punchPower: Int, stamina: Int) {
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
        self.stamina = stamina
    }
    
    // mutating keyword > self is mutable
    mutating func increasePunchPower() {
    
        // self is immutable
        punchPower += 5
    }
    
    //Extension , add additional property to struct
}



// extension fot "Boxing" strcut
extension Boxing {
    mutating func increasePunchSpeed() {
        punchSpeed += 5
    }
}



extension Boxing {
    mutating func incraseStamina() {
        stamina += 5
    }
}


// you can also extend datatype , ....
extension String {
    
    // character is a property inside the string struct
    func ShortOrLongStringValue() -> String {
        if characters.count > 5 {
            return "Long String Value"
        } else {
            return "Short String Value"
        }
    }
}

// String is a actually a struct in swift
"iOS".ShortOrLongStringValue()
"The Complete iOS Developer Course".ShortOrLongStringValue()




