//: Playground - noun: a place where people can play

import UIKit

var intValues = [1, 2, 3, 4, 5, 6]
var animalNames = ["African Lion", "Fox", "Beer", "Tiger"]

// Reduce

func getSumResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var sumResult = 0
    
    for number in integerNumbers {
        sumResult = sumResult + number
    }
    
    return sumResult
}

let sumResult = intValues.reduce(0, +)
print(sumResult)

let subtractResult = intValues.reduce(0, -)
print(subtractResult)

let multipleResult = intValues.reduce(1, *)
print(multipleResult)



// Filter
// closure (a: Int) -> Bool ; if closure return true > filter function add elements to return array ; if closure return false > ignore the value

print(intValues.filter({ (a: Int) -> Bool in a > 2 }))


let animalNamesWithLetteri = animalNames.filter {(a: String) -> Bool in a.contains("i") }
print(animalNamesWithLetteri)


let intNUmbersLessThan7AndGreaterThan3 = intValues.filter{ (a: Int) -> Bool in
    a < 7 && a > 3
    }
print(intNUmbersLessThan7AndGreaterThan3)



// Map
// take closure arguments , and map each value in the array to a new value
let newIntegerNUmbers = intValues.map { (a: Int) -> Int in
    a * 2
}
print(newIntegerNUmbers) // just copy don't change initial value
print(intValues)


let uppercasedAnimalNames = animalNames.map { (a: String) -> String in
    a.uppercased() + " Apple"
}
print(uppercasedAnimalNames)
print(animalNames)


let animalNamesWithLetterA = animalNames.map { (a: String) -> Bool in
    a.contains("A")
}
print(animalNamesWithLetterA)

