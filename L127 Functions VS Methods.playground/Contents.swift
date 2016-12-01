//: Playground - noun: a place where people can play

import UIKit

// data type of enum is String
enum Sport: String {
    case Boxing = "This is Boxing"
    case KickBoxing = "This is Kick Boxing"
    case Judo = "This is Judo"
    
    // This is a method (Instance Method)
    func giveMeSportTitle(sport: Sport) -> String {
        
        return sport.rawValue
    
    }
    
    
    func giveMeSportTitle() -> String {
        
        return self.rawValue
    }

}



// This is function
/*
func giveMeSportTitle(sport: Sport) -> String {
    return sport.rawValue
}

giveMeSportTitle(sport: .Boxing)
giveMeSportTitle(sport: Sport.Boxing)

*/



// What is the method ? a function put in > enum , strcut , class

let boxing = Sport.Boxing
boxing.giveMeSportTitle(sport: boxing)

boxing.giveMeSportTitle()
