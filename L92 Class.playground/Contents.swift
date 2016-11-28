//: Playground - noun: a place where people can play

import UIKit


// class are similar as struct 
// what are the difference with struct ??
//(1) struct => value tpye , class => reference type
//(2) struct povide default initializar , but class need to create by your own


class KickBoxer {
    
    var name: String
    var punchPower: Int
    var punchSpeed: Int
    var kickPower: Int
    var kickSpeed: Int
    
    // class not provide default initializar , we have to create by our own
    init( name: String, punchPower: Int, punchSpeed: Int, kickPower: Int, kickSpeed: Int) {
        self.name = name
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
        self.kickPower = kickPower
        self.kickSpeed = kickSpeed
    }
    
    func kickBoxerIdentify() -> String {
        return "\(name),\(punchPower),\(punchSpeed),\(kickPower),\(kickSpeed)"
    }
    
}

var kickBoxerA = KickBoxer(name: "BH", punchPower: 100, punchSpeed: 200, kickPower: 300, kickSpeed: 400)
kickBoxerA.kickBoxerIdentify()
print(kickBoxerA.kickPower)

var kickBoxerB = KickBoxer(name: "LT", punchPower: 400, punchSpeed: 300, kickPower: 200, kickSpeed: 100)
print(kickBoxerB.kickPower)
print(kickBoxerA.kickPower)


var kickBoxerC = kickBoxerA
kickBoxerA.kickPower = 5000
print(kickBoxerA.kickPower)

// class in reference type
kickBoxerC.kickPower

print(kickBoxerA.kickBoxerIdentify())
print(kickBoxerB.kickBoxerIdentify())
print(kickBoxerC.kickBoxerIdentify())


kickBoxerA.kickPower = 800
print(kickBoxerA.punchPower)
print(kickBoxerC.punchPower)


// ===, instances hold the same address ??
if kickBoxerA === kickBoxerC {
    print("These two Varaibles are referring to the same object in memory")
} else {
    print("These two Variables are not referring ti the same object in memory")
}


if kickBoxerA === kickBoxerB {
    print("These two Varaibles are referring to the same object in memory")
} else {
    print("These two Variables are not referring ti the same object in memory")
}

kickBoxerB === kickBoxerC










