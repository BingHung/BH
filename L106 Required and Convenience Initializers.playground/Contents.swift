//: Playground - noun: a place where people can play

import UIKit

class Computer {
    let computerName: String
    var computerPower: Int
    var computerSpeed: Int
    
    
    // what is required ?? subclass must implicit , explicit override of this computer class
    required init( computerName: String , computerPower: Int, computerSpeed: Int) {
        self.computerName = computerName
        self.computerPower = computerPower
        self.computerSpeed = computerSpeed
    }
}

class Mobile : Computer {
    // assign empty value you don't need to init
    var screenType : String = ""
    
    
    // since we declare our own initializr , we have to build reqquire initializar ourself
    init (computerName: String , computerPower: Int, computerSpeed: Int , screenType: String) {
        
        //self.screenType = screenType
        super.init(computerName: computerName, computerPower: computerPower, computerSpeed: computerSpeed)
        
    }
    
    // the same as superclass , by reuired , we must override !! implcit override
    // What if no required init ??  error , must provide by subcalss
    required init(computerName: String , computerPower: Int, computerSpeed: Int) {
        super.init(computerName: computerName, computerPower: computerPower, computerSpeed: computerSpeed)
    }
    
    
    // The purpose : to convenient build init
    convenience init (computer: Computer , screenType : String) {
        self.init(computerName: computer.computerName, computerPower: computer.computerPower, computerSpeed: computer.computerSpeed)
        
        self.screenType = screenType
    }
    
}


let mySecondMobile = Mobile(computerName: "iPhone6", computerPower: 200, computerSpeed: 100, screenType: "TouchScreen")
print(mySecondMobile.computerName)

let myMobileComputer = Computer(computerName: "Galaxy S6", computerPower: 200, computerSpeed: 250)
let myThirdMobile = Mobile(computer: myMobileComputer, screenType: "Touch Screen")

// In swift we can only inherit from one class
// can unlimited number fo subclass
