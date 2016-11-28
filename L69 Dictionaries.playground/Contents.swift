//: Playground - noun: a place where people can play

import UIKit


// Dictionary , is another type of collection
// > Specified ( key : value )


// create dictionary
let dictionaryA : Dictionary<String, Int>
let dictionaryB = Dictionary<String, Int>()
let dictionaryC = [String : Int]()

// assign value to dictionary
let animalsPower : Dictionary<String, Int> = ["Lion" : 100 , "Leopard" : 70, "Bear" : 90, "Fox" : 40]
let animalsSpeed : Dictionary<String, Int> = ["Lion" : 95, "Leopard" : 120, "Bear" : 60, "Fox" : 85]

print(animalsPower)
print(animalsSpeed)



var emptyDictionatry: [Int : Int]
emptyDictionatry = [ : ]
print(emptyDictionatry)


print(animalsPower["Lion"])
print(animalsPower["lion"]) // case matter

// need to unwrapped dictionary
if let Lion = animalsPower["Lion"] {
    print(Lion)
}


print(animalsPower.count)
print(animalsSpeed.isEmpty)


print(Array(animalsPower.keys))
print(Array(animalsPower.values))





// create a  (not specified the data type of the dictionary)
var bird = ["animalName": "My Bird" , "color": "White", "power" : "20" , "speed" : "70"]

// updating the value of the dictionary
bird.updateValue("80", forKey: "speed")
bird["power"] = "30"

print(bird)

let oldAnimalName = bird.updateValue("My Flying Bird", forKey: "animalName")

print(oldAnimalName)
print(bird)

bird.removeValue(forKey: "color")
print(bird)

bird["color"]
bird["animalName"] = nil

print(bird)





// Let's iterate through dictionary values

for (key, value) in animalsPower {
    print("\(key) - \(value)")
}

for key in animalsPower.keys {
    //print("\(key),")
    //print("\(key)," , terminator: "*")
    print("\(key)," , terminator: "") //no new line

}

for value in animalsPower.values {
    print("\(value),", terminator: "")
}

print() // new line characeter

for (key, value) in animalsSpeed {
    print("\(key) - \(value)")
}
for key in animalsSpeed.keys {
    print("\(key),", terminator: "")
}

print() // new line characeter


for value in animalsSpeed.values {
    print("\(value),", terminator: "")
}




print()
print()
// Amazing L73

// use reduce and filter functons on dictionaries

// $0 > init value + \($1.0) string interpolation refer second arguments
let animalsPowerKeys = animalsPower.reduce("", { $0 + "\($1.0)," }) // init value is empty string,
print(animalsPowerKeys)

let animalsPowerValues = animalsPower.reduce("", { $0 + "\($1.1)," }) // init value is empty string,
print(animalsPowerValues)

// key$0.0 value $0.1
print(animalsPower.filter({
    $0.1 > 80
}))

let name = animalsPower.filter({
    $0.1 > 80
})





