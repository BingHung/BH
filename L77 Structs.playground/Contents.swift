//: Playground - noun: a place where people can play

import UIKit


// struct ,  a data type in swift , like array but can include differenct data type
// strcut , let us to create our own type

let number: Int

struct Computer {
    var power: Int
    var speed: Int
    var ram: Int
    let cpu: String
    let screenSiza: Int
}

// create instance of struct
var computerA: Computer = Computer(power: 500, speed: 750, ram: 2000, cpu: "Intel i7", screenSiza: 27)
var computerB: Computer = Computer(power: 1000, speed: 500, ram: 1000, cpu: "Mediatec", screenSiza: 5)


struct DesktopComputer {
    var computer: Computer   // struct in struct
    let name: String
    var hasTouchPad: Bool
}


var DesktopA: DesktopComputer = DesktopComputer(computer: computerA, name: "MacBook Pro", hasTouchPad: true)


struct MobileComputer {
    var computer: Computer
    let name: String
    var hsaTouchScreen: Bool
}

var myMobileComputer = MobileComputer(computer: computerB, name: "iPhone7", hsaTouchScreen: true)

//Access member in struct
print(computerA)
print(computerA.power)
print(computerA.cpu)

