//: Playground - noun: a place where people can play

import UIKit

func multiplyTwoNumbers ( firstNumber: Int , secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}


var myFunction: (Int, Int) -> Int


myFunction = multiplyTwoNumbers
let resultA = myFunction(20, 30)

print(resultA)

