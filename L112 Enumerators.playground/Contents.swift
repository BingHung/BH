//: Playground - noun: a place where people can play

import UIKit


// enum is a type , value in this type , can hold value

enum Animal {
    
    case Lion
    case Tiger
    case Horse
    case Sheep
    case Cat
    case Leopard
    case Panther
    case Monkey
    case Dolphin
}


Animal.Cat
Animal.Tiger



enum Animal2 {
    // seperate value by comma
    case Lion,  Tiger
}

Animal2.Lion


func specifyWildAnimalsAndTameAnimals(animal: Animal) -> String {
    
    switch animal {
    case Animal.Lion , Animal.Tiger , Animal.Leopard, Animal.Panther :
        return "Wild Animal"
        
    case Animal.Horse,Animal.Cat,Animal.Monkey,Animal.Dolphin:
        return "Tame Animal"
        
    default:
        return "Unknown"
    }
    
}


specifyWildAnimalsAndTameAnimals(animal: Animal.Horse)


var myAnimal = Animal.Lion
myAnimal = Animal.Leopard
specifyWildAnimalsAndTameAnimals(animal: myAnimal)


// specufy data type for enum
enum Computer: Int {
    case iMac = 1 , macbookPro = 2 , iPhone7 = 3 , iPhone6 = 4 , iPhone5 = 5 , iPhone4 = 6 , GalaxyS5 = 7
}


// raw value
Computer.iPhone5.rawValue
Computer.iMac


enum Computer2: Int {
    case iMac  , macbookPro  , iPhone7 , iPhone6  , iPhone5 , iPhone4 , GalaxyS5
}
Computer2.iMac.rawValue // swift provide default raw value for case in this enum , raw value must unique


enum Computer3 {
    case iMac  , macbookPro  , iPhone7 , iPhone6  , iPhone5 , iPhone4 , GalaxyS5
}
// no int no raw value


enum Computer4: Int {
    case iMac = 100 , macbookPro  , iPhone7 , iPhone6  , iPhone5 , iPhone4 , GalaxyS5
}
Computer4.macbookPro.rawValue




enum Sport: Int {
    case Boxing = 20, KickBoxing = 50 , Judo = 100 , Jujitsu = 200, Aikido = 12 , Taekwondo = 400 , Wrestling = 1
}
print(Sport.Aikido.rawValue)


func multiplyBoxingRawValue(sport: Sport) -> Int {
    return Sport.Boxing.rawValue * sport.rawValue
}
multiplyBoxingRawValue(sport: Sport.Judo)
multiplyBoxingRawValue(sport: .Judo)    // implicit assign Sport


let kickBoxing = Sport(rawValue: 50)
let kickBoxing2 = Sport(rawValue: 400)
let kickBoxing3 = Sport(rawValue: 2)

multiplyBoxingRawValue(sport: kickBoxing!)

if let kickBoxing = kickBoxing {
    multiplyBoxingRawValue(sport: kickBoxing)
}

enum  PersonGender: Int {
    case Male = 1
    case Female = 2
}

let male = PersonGender.Male
male.rawValue
let female = PersonGender.Female
female.rawValue


// enum can only have rawvalue ot associate value , only pick one
enum OutCome {
    case victory(String) // associate value
    case failure(String)
}


func evaluateSport(sport: Sport) -> OutCome {
    switch  sport {
    case .Boxing:   // Sport.Boxing
        return .victory("Awesome")
    default :
        return .failure("Bad")
    }
}

evaluateSport(sport: .Boxing)
evaluateSport(sport: .Judo)


let outcome = evaluateSport(sport: .Boxing)

switch outcome {
case .victory:
    print("Great")
case . failure:
    print("Not Good")
}







