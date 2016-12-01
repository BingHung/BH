//: Playground - noun: a place where people can play

import UIKit


class Lion {
    
    let name: String
    var power: Int
    var speed: Int
    var age: Int
    var canFight: Bool = false {
        
        // property observes > when you changed the value of your property , the code will be execute
        // can only execute after instance fully initialize
        // but first change the property , it will still execute , i first time assign
        willSet {
            print("willSet is called and this is the new value: \(newValue)")
        }
        
        didSet {
            print("didSet is called and this is the old value: \(oldValue)")
            
            if canFight && age > 18 {
                print("Our Lion instance can now fight !")
            }
        }
    }
    
    init(name: String , power: Int, speed: Int, age: Int) {
        
        // if we init canFight , will not count in change
        self.name = name
        self.power = power
        self.speed = speed
        self.age = age
    }
    
}


let myLion = Lion(name: "Simba", power: 200, speed: 50, age: 23)
myLion.age
myLion.canFight
myLion.canFight = true
myLion.canFight = false
