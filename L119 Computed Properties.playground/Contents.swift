//: Playground - noun: a place where people can play

import UIKit


struct Computer {
    
    // stored property
    var ram: Int
    var cpuPower: Int
    
    // Computed property must be variable and we must specify the data type of the property . Computed properties do not store values and they simply calculate a value and then return that value
    
    // computed property // why we need data type ? return type
    var computerPower: Int {
        
        // implicit get
        let result = ram * cpuPower
        return result
    }
    
    // var , and return value -> computed property
    var computerSpeed: Int  {
        get { // return value
            let result = ram + cpuPower
            return result
        }
        set { // accept value
            //let ramAmout = 500
            //let cpuPowerAmount = 700
            
            ram = newValue
            cpuPower = newValue + 100 // refere the value you assign to the property
            
            //ram = ramAmout
            //cpuPower = cpuPowerAmount
        }
    }
}


var myComputer = Computer(ram: 256, cpuPower: 1000)
print(myComputer.computerPower)
//myComputer.computerPower = 200 error can't assign value , can only read

// get
print(myComputer.computerSpeed)
// set
myComputer.computerSpeed = 100 // what is the use of 100 ???
print(myComputer.computerSpeed)  // 500 + 700










