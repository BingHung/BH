//: Playground - noun: a place where people can play

import UIKit


enum Sport: String {
    
    case Boxing = "This is Boxing"
    case KickBoxing = "This is Kick Boxing"
    case Judo = "This is Judo"
    case Taekwondo = "This is Taekwondo"
    
    // we don't init everything in this case
    // self , refer to instances that is create from Sport enum
    init() {
        
        // init default instance
        self = . Boxing
    }
    
    
    
    func giveMeSportTitle() -> String {
        return self.rawValue
    }
    
    
}


let mySport: Sport = Sport() // init
mySport.giveMeSportTitle()


// in swift , only struct and class can have stored properties
// enum can not have stored properties 

class Fighter {
    
    var power: Int
    var speed: Int
    let sport: Sport
    
    init() {
        self.power = 100
        self.speed = 200
        self.sport = .Boxing
    }
    
    init(power: Int, speed: Int , sport: Sport) {
        
        self.power = power
        self.speed = speed
        self.sport = sport
    
    }
}

let myFirstFighter = Fighter()
myFirstFighter.power
myFirstFighter.sport

let mySecondFighter = Fighter(power: 200, speed: 400, sport: .KickBoxing)
mySecondFighter.sport
mySecondFighter.speed



