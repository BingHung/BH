//: Playground - noun: a place where people can play

import UIKit

// Sets , another collection type in swift  , you can store multiple value in same type 
// What is the dfferece between stes and array ?
// set has order !!! in set you can't hold repaeat value (that's the main difference between set and other collection type in swift)


let setOne : Set<Int> // didn't init yet
let setTwo = Set<Int>() // have init
print(setTwo)

//print(setOne) >> error (you have to init before use it )

let someArray = [1, 2, 3, 4, 5, 6, 7, 8 ,8 ,8 ,3]
let someSet : Set = [1,2,3,4,4,4,4,4] // order ??

print(someArray)
print(someSet)


print(someSet.isEmpty)
print(someSet.count)
print(someSet.contains(4))
print(someSet.first)

if let firstValue = someSet.first {
    print(firstValue)
}








var wildAnimals: Set = ["Lion", "Leopard", "Bear", "Cat", "Tiger"]
var tameAnimals: Set = ["Domestic Dog", "Domestic Pig", "Domestic Goat", "Cat", "Tiger"]


// insert
wildAnimals.insert("Wild Panther")
print(wildAnimals)


// remove
let removedAnimal = wildAnimals.remove("Bear")
print(removedAnimal)
wildAnimals.remove("Eagle")
print(wildAnimals)

if let bear = removedAnimal {
    print(bear)
}


// union
let unionAnimals = wildAnimals.union(tameAnimals)
print(unionAnimals)

// intersection
let intersectAnimals = wildAnimals.intersection(tameAnimals)
print(intersectAnimals)



// subtracting
let subtractAnimals = wildAnimals.subtracting(tameAnimals)
print(subtractAnimals)


let subtractAnimals2 = tameAnimals.subtracting(wildAnimals)
print(subtractAnimals2)


// symmetricDifference
let symmetricDifferenceAnimals = wildAnimals.symmetricDifference(tameAnimals)
print(symmetricDifferenceAnimals)


