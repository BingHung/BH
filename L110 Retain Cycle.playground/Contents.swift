//: Playground - noun: a place where people can play

import UIKit


class Animal {
    let name: String
    var power : Int
    var speed: Int
    
    init (name:String,power:Int,speed:Int) {
        self.name = name
        self.power = power
        self.speed = speed
    }
    
    deinit {
        print ("\(name) is now being removed form the device memory")
    }
    
}

class Lion: Animal {
    var canFight : Bool = true
    
    // weak keyword -> the reference count of this property , is not going to increment ... when i assign a value to the property
    weak var spouse: Lion?
}

var maleLion: Lion? = Lion(name: "Male Lion", power: 400, speed: 300)
var femaleLion: Lion? = Lion(name: "Female Lion", power: 200, speed: 500)

// spuse , data type is optional
// optional chanining
// if maleLion is not nil , called spouse  ...
// reference each other ....
maleLion?.spouse  = femaleLion
femaleLion?.spouse = maleLion

maleLion = nil //dead
femaleLion = nil //dead
// object are not removed from the memory ?? why  ??  -> memory leak !!!!!!!!


// what is the solution ? -> in lion class !! weak keyword


// if maleLion is nil , we force unwrapped , it may coz runtime error
// since we put question mark is safe
//maleLion!.spouse  = femaleLion
//femaleLion!.spouse = maleLion


