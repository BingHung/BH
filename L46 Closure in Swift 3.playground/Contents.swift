//: Playground - noun: a place where people can play

import UIKit


var sumClosure: (Int, Int) -> Int
var subtractClosure: (Int, Int) -> Int
var multiplyClosure: (Int, Int) -> Int
var divideClosure: (Int, Int) -> Int


sumClosure = {
    $0 + $1
}

subtractClosure = {
    $0 - $1
}

multiplyClosure = {
    $0 * $1
}

divideClosure = {
    $0 / $1
}



func calculateNumbers (numberA: Int, numberB: Int, calculate: (Int, Int) -> Int ) -> Int {
    let calculationResult = calculate (numberA, numberB)
    print(calculationResult)
    return calculationResult
}

// combine multi-closure in one
calculateNumbers(numberA: 30, numberB: 50, calculate: sumClosure)
calculateNumbers(numberA: 30, numberB: 50, calculate: subtractClosure)
calculateNumbers(numberA: 30, numberB: 50, calculate: multiplyClosure)
calculateNumbers(numberA: 100, numberB: 2, calculate: divideClosure)



calculateNumbers(numberA: 2, numberB: 3, calculate: {
    $0 + $1
})


calculateNumbers(numberA: 2, numberB: 3, calculate: { (a: Int, b: Int) in
    a + b
})

// use closure outside the function name ... trailing .... 
calculateNumbers(numberA: 2, numberB: 3) {
    $0 + $1
}
