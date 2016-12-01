//: Playground - noun: a place where people can play

import UIKit

class Computer {
    
    var power : Int
    var speed : Int
    var ram : Int
    
    
    // lazy property is stored properties 
    // lazy property > have to be var
    // put assignment operator , () , closure execute immediately but calculation only execute when I need it
    // heavy calculation
    // we can use it , such as  downloading image from internet ... (heavy task)
    lazy var cpuPower: Int = {
        return (1000 * 2) + (2000 * 2) + (3000 * 2) + 1000
    }()
    
    
    // computed properties , doind calculation of stored properties
    var computerOveralValue: Int {
        return  power * speed * ram + cpuPower // only in this time, lazy property calculate
    }
    
    
    init (power: Int, speed: Int, ram :Int){
        self.power = power
        self.speed = speed
        self.ram = ram
    }
    
}


let myComputer = Computer(power: 200, speed: 300, ram: 400)
myComputer.cpuPower
myComputer.computerOveralValue