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
    
}

// no error why ?? because , the Desktop is implicity override these require initializar here
// as you can see , when you create required init , subclass must implicity or explicity implement require initializar
class Desktop: Computer {
    
}
let myDesktop = Desktop(computerName: "ASUS", computerPower: 500, computerSpeed: 26)


class BOX : Computer {
    var screenType : String
    
    
    // since we declare our own initializr , we have to build reqquire initializar ourself
    init (computerName: String , computerPower: Int, computerSpeed: Int , screenType: String) {
        
        self.screenType = screenType
        super.init(computerName: computerName, computerPower: computerPower, computerSpeed: computerSpeed)
        
    }
    
    // the same as superclass , by reuired , we must override !! implcit override
    // What if no required init ??  error , must provide by subcalss
    required init(computerName: String , computerPower: Int, computerSpeed: Int) {
        
        self.screenType = "Touch Screen"
        super.init(computerName: computerName, computerPower: computerPower, computerSpeed: computerSpeed)
    }
}

// L105 is very important ,,,


