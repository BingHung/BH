//: Playground - noun: a place where people can play

import UIKit


var sumClosure: (Int, Int) -> Int
var multiplyClosure: (Int, Int) -> Int
var divideClosure: (Int, Int) -> Int


var subtractClosure: (Int, Int) -> Int
var subtractClosure2: (Int, Int) -> Int
var subtractClosure3: (Int, Int) -> Int
var subtractClosure4: (Int, Int) -> Int



// Case(1)
subtractClosure = { (a: Int , b: Int) -> Int in
    return a - b
}
let subtractResult = subtractClosure(2, 3)


//Case(2)
subtractClosure2 = { (a: Int,b: Int) -> Int in
    a - b //closure implicity return
}
let subtractResult2 = subtractClosure2(2, 3)


//Case(3)
subtractClosure3 = { (a: Int,b: Int)  in
    a - b
}
let subtractResult3 = subtractClosure3(2, 3)


//Case(4)
subtractClosure4 = {
    $0 - $1
}
let subtractResult4 = subtractClosure4(2, 3)