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
    
    // method
    deinit {
        print ("\(name) is now being removed form the device memory")
    }
    
}

// Reference count to my Animal object is 1
// this value my Animal can hold "nil"
// when you create an object of a class , also create reference to that object in the memory
var myAnimal: Animal? = Animal(name: "My Animal", power: 1000, speed: 2000)

// When the object is being remved from the memory ? -> whenever there is no reference . it will remove automatically by swift (Automatic reference counting)



// Reference count to yourAnimal Object is 1
var yourAnimal: Animal? = Animal(name: "Your Animal", power: 200, speed: 700)


// Reference count to myOtherAnimal is 1
var myOtherAnimal: Animal? = Animal(name: "My Other Animal", power: 900, speed: 200)


// Reference count to myAnimal instance is 2
var animal4: Animal? = myAnimal

myAnimal?.power
myAnimal?.power  = 50
animal4?.power


var arrayOfAnimals = [myAnimal, animal4, yourAnimal,myOtherAnimal]

myAnimal = nil // Reference count to myAnimal instance inside the memory is now 3
animal4 = nil // Reference count to myAnimal instance inside the memory is now 2
arrayOfAnimals = [] // Reference count to myAnimal instance inside the memory is now 0
yourAnimal = nil
myOtherAnimal = nil

// How object is removed from memory
// You don't have to worry about memory issue (swift do it for you) , but the concept is important
// crash lacking of memory ...




