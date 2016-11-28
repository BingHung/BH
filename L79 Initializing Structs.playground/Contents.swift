//: Playground - noun: a place where people can play

import UIKit

struct Computer {
    var power: Int
    var speed: Int
    var ram: Int
    let cpu: String
    let screenSize: Int?
    
    // there is an implicit initializer when you don't create specific initializer
    // we need to init all value once
    
    init(power: Int,speed: Int,ram: Int,cpu:String,screenSize: Int){
        
        self.power = power
        self.speed = speed
        self.ram = ram
        self.cpu = cpu
        self.screenSize = screenSize
    }
    
    
    // you can create unlimited initilizer in your struct
    init(power123: Int,speed: Int,ram: Int,cpu:String,screenSize: Int){
        
        power = power123
        self.speed = speed
        self.ram = ram
        self.cpu = cpu
        self.screenSize = screenSize
    }

    
    init(power: Int,speed: Int,ram: Int,cpu:String) {
        
        self.power = power
        self.speed = speed
        self.ram = ram
        self.cpu = cpu
        self.screenSize = nil
    }
    
    
    init (values: String) {
        // command characters
        let ValuesString = values.characters.split(separator: ",")
        // atol > convert value string to integer
        self.power = atol(String(ValuesString.first!))
        self.speed = atol(String(ValuesString[1]))
        self.ram = atol(String(ValuesString[2]))
        self.cpu = String(ValuesString[3])
        self.screenSize = atol(String(ValuesString[4]))
    }
    
    
}

// You can choose different initializer
let computerA = Computer(power: 10, speed: 20, ram: 100, cpu: "Core2", screenSize: 10)
print(computerA)
let computerB = Computer(power: 20, speed: 40, ram: 200, cpu: "MTK")
print(computerB)

// makesure initialize the same number as init
let myComputer = Computer(values: "20,30,1000,Corei7,17")
print(myComputer)
print(myComputer.cpu)

//unwrapped the optional
print(myComputer.screenSize!)

if let myComputerScreenSize = myComputer.screenSize {
    print(myComputerScreenSize)
}




let intelProtableDesktopComputer = Computer(power: 30, speed: 40, ram: 50, cpu: "Corei3")
print(intelProtableDesktopComputer)


struct DesktopComputer {
    var desktopComputers: [Computer]
    let name: String
    var hasTouchPad: Bool
    
    
    // same exactly with the default initializar
    init(desktopComputers: [Computer] , name: String, hasTouchPad: Bool) {
        self.desktopComputers = desktopComputers
        self.name = name
        self.hasTouchPad = hasTouchPad
    }
    
    init (name : String , hasTouchPad :Bool) {
        self.desktopComputers = [computerA]
        self.name = name
        //self.name = "Apple iMac"
        self.hasTouchPad = hasTouchPad
    }
    
    init(portableDesktopComputer: Bool) {
        if portableDesktopComputer == true {
            self.desktopComputers = [intelProtableDesktopComputer]
            self.name = "Intel Computer"
            self.hasTouchPad = false
        } else {
            self.desktopComputers = [computerA]
            self.name = "Apple Computer"
            self.hasTouchPad = false
        }
    }
    
}


let desktop1 = DesktopComputer(portableDesktopComputer: true)
print(desktop1)

let desktop2 = DesktopComputer(portableDesktopComputer: false)
print(desktop2)

// two computer instance at one time
let desktop3 = DesktopComputer(desktopComputers: [computerA, intelProtableDesktopComputer], name: "High Perfomane Computer", hasTouchPad: true)
print(desktop3)





// Struct name , start from capital number (convention)
struct MobileComputer {
    var mobileComputers: [Computer]
    let name: String
    var hasTouchScreen: Bool
    
    init (mobileComputers: [Computer], name: String, hasTouchScreen: Bool){
        self.mobileComputers = mobileComputers
        self.name = name
        self.hasTouchScreen = hasTouchScreen
    }
    
    
    // optional init can return value nil
    init? (mobileModel: String, mobileComputers: [Computer], name: String) {
        if mobileModel == "iPhone4" {
            print("outdated")
            
            return nil
        }
        
        self.mobileComputers = mobileComputers
        self.name = name
        self.hasTouchScreen = true
    }
    
    // error -> without init all stored properties error
    /*init() {
        
    }*/
}


var mobile1 = MobileComputer(mobileComputers: [computerA, intelProtableDesktopComputer], name: "iPhone7", hasTouchScreen: true)
print(mobile1)

let mobile2 = MobileComputer(mobileModel: "iPhone4", mobileComputers: [computerA, intelProtableDesktopComputer], name: "iPhone")
print(mobile2)

let mobile3 = MobileComputer(mobileModel: "iPhone5s", mobileComputers: [computerA], name: "iPhone")
print(mobile3)


if let iPhone = mobile3 {
    print(iPhone)
}
