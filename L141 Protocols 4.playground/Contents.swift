//: Playground - noun: a place where people can play

import UIKit



// protocol , property must be var 
// class , struct  , can treated property as store or computed property 
// enum can not have a stored property > computed property only ({get} is enough)

protocol Artist {
    
    var name : String {get}
    var art: String {get}
    
    func performArt()
}

class Actor : Artist {
    
    var name: String
    var art: String
    
    init( name: String, art : String) {
        self.name = name
        self.art = art
    }
    
    func performArt() {
        print("\(name) is \(art)")
    }
    
}

let myActor = Actor(name: "My Actor", art: "Acting")
myActor.performArt()



class Singer : Artist {
    
    var name : String
    var art : String
    
    init( name: String, art : String) {
        self.name = name
        self.art = art
    }
    
    func performArt() {
        print("\(name) is \(art)")
    }
    
}

let mySinger = Singer(name: "My Singer", art: "Singing")
mySinger.performArt()


var artist: Array<Artist> = [Actor(name: "M" , art : "Acting"), myActor , mySinger]


// prototcol can't create instance directly

func printNameAndArtOfArtists (artists: [Artist]) {
    
    for artist in artists {
        print("\(artist.name) , \(artist.art)")
    }
}

printNameAndArtOfArtists(artists: artist)





class Mobile {
    
    let name : String
    var power : Int
    var speed : Int
    var mobileID : Int
    
    init(name: String, power: Int, speed: Int, mobileID: Int) {
        
        self.name = name
        self.power = power
        self.speed = speed
        self.mobileID = mobileID
    }
    
}

let firstMobile = Mobile(name: "iPhone5", power: 200, speed: 300, mobileID: 1)
let secondMobile = Mobile(name: "iPhone6", power: 200, speed: 600, mobileID: 2)
let thirdMobile = Mobile(name: "Android", power: 722, speed: 122, mobileID: 3)

// [error]firstMobile == secondMobile

// predefined protocl : Equatable protocol

// extension , extend the functionality of your type
extension Mobile : Equatable {
    
    public static func == (lhs : Mobile, rhs : Mobile) -> Bool {
        
        // name (eg same type in String) , power , speed
        return lhs.name == rhs.name && lhs.power == rhs.power && lhs.speed == rhs.speed
    }
    
}

firstMobile == secondMobile

// how about less than or greater than ...

// [error] firstMobile < secondMobile

extension Mobile : Comparable {
    
    public static func <(lhs : Mobile, rhs : Mobile) -> Bool {
        
        // why are we going to add it together
        let lhsValue = lhs.power + lhs.speed
        let rhsValue = rhs.power + rhs.speed
        return lhsValue < rhsValue
    }
}

10 < 20

// int type , also conform to comparable protocol , equatable protocol ...

firstMobile < secondMobile
firstMobile > secondMobile  // can refer to other operator logic ....
firstMobile <= secondMobile

// we can sort it ???
let mobiles : Array< Mobile > = [firstMobile,secondMobile,thirdMobile]

//print(mobiles.sorted())
mobiles.max()
mobiles.min()
mobiles.sorted()

mobiles.starts(with: [firstMobile,secondMobile])
mobiles.starts(with: [firstMobile,thirdMobile])

mobiles.contains(thirdMobile)


// create dictionary ...

//[Int : Mobile] > [key : value]
let mobileDictionary : [Int : Mobile]  = [firstMobile.mobileID : firstMobile , secondMobile.mobileID :secondMobile, thirdMobile.mobileID : thirdMobile]



// [error , Mobile does not conform to protocol Hashable] let mobileDictionary2 : [Mobile : Int] = [firstMobile : firstMobile.mobileID]


extension Mobile : Hashable {
    
    var hashValue: Int {
        return self.mobileID
    }
    
}

// dictionary are unordered > we can not expect the order
let mobileDictionary2 : [Mobile : Int] = [firstMobile : firstMobile.mobileID , secondMobile : secondMobile.mobileID, thirdMobile : thirdMobile.mobileID]

print(mobileDictionary2)


//we can also create set of mobile instances , coz we conform to Hashable protocol

// set don't have repeated value ...
let mobileSet : Set<Mobile> = [firstMobile,secondMobile,thirdMobile,firstMobile]

// set are also unordered > can not expect the order
for mobile in mobileSet {
    print(mobile.name)
}





protocol CustomBooleanType {
    var booleanValue : Bool {get}
}

//Struct , Class > stored peoperty , computed property
//Enum > Can only have computed property

extension Mobile : CustomBooleanType {
    var booleanValue : Bool {
        return self.power + self.speed > 100
    }
}

if firstMobile.booleanValue {
    print("This is true")
} else {
    print("This is flase")
}

extension Mobile : CustomStringConvertible {
    
    var description: String {
        return "\(self.name), \(self.power), \(self.speed)"
    }
}


print(firstMobile.description)
print(secondMobile.description)


// object - oriented > protocol - oriented prgramming 

