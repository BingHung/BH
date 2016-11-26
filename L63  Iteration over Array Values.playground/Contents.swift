//: Playground - noun: a place where people can play

import UIKit

var intValues = [1, 2, 3, 4, 5, 6]
var animalNames = ["African Lion", "Fox", "Beer", "Tiger"]

for intValue in intValues {
    print(intValue)
}


// enumerated > return tuple with index of each elements in array
for (index, animalName) in animalNames.enumerated() {
    print("\(index).\(animalName)")
}


func getMultiplicationResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    var multiplyResult = 1
    
    for number in integerNumbers {
        multiplyResult = multiplyResult * number
    }
    
    return multiplyResult
}
print(getMultiplicationResultOfIntegerArrayValues(integerNumbers: intValues))





