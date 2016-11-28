//: Playground - noun: a place where people can play

import UIKit

// Swift provide default initializar in struct
struct Sport {
    var sportName: String
    let score: Int
}

internal class Athlete {
    let athleteName: String
    
    //Module(framework) . import ....
    // private : access modifiers -> hide the implementation details of your code  ,and specify a preferred interface through which that code can be asccessed and used
    // can be apply (classes , structures , enumerators)
    // Swift porvides 5 different access levels ( public , Internal(in same module) , private ,...)
    // default is internal ~~~
    // can also use in var and let
    
    // Array of Sport instances , initial  athleteSports a empty array ,don't need to initialize again
     private var athleteSports: [Sport] = [] // since i use private , we can't access out of class
    
    init(athleteName:String) {
        self.athleteName = athleteName
    }
    
    func addSport(sport: Sport) {
        athleteSports.append(sport)
    }
    
    func getAthleteSportsValues() -> [Sport] {
        return athleteSports
    }
        
}



let BH  = Athlete(athleteName: "BH")
let boxing = Sport(sportName: "Boxing", score: 100)
let kickBoxing = Sport(sportName: "Kick Boxing", score: 400)
BH.addSport(sport: boxing)
BH.addSport(sport: kickBoxing)
//print(BH.athleteSports)


let LT = Athlete(athleteName: "LT")
//LT.athleteSports

//  why did I create addSport function , data protection , we should private var athleteSports: [Sport] = []

//LT.athleteSports = [boxing , kickBoxing]
//print(LT.athleteSports)
LT.addSport(sport: boxing)
LT.getAthleteSportsValues() // data encapsulation ,not to allow other component to access our instance value (set, get )

print(LT.getAthleteSportsValues())





