//: Playground - noun: a place where people can play

import UIKit

// closure is the function without name ....
// closure = anonymous function

//what is the benifit of closure ??


// Declaring Variables that can hold closures


var sumClosure: (Int, Int) -> Int
var subtractClosure: (Int, Int) -> Int
var multiplyClosure: (Int, Int) -> Int
var divideClosure: (Int, Int) -> Int



sumClosure = { (a: Int, b:Int) -> Int in
    return a + b
}

let sumResult = sumClosure(2 , 3)
print(sumResult)



//  without return keyword  , coz closure implicity return value
var sumClosure2: (Int, Int) -> Int
sumClosure2 = { (a: Int, b : Int) -> Int in
    a + b
}

let sumResult2 = sumClosure2 (3 , 4 )
print(sumResult2)


// without -> Int
var sumClosure3: (Int, Int) -> Int
sumClosure3 = { (a: Int, b : Int) in
    a + b
}

let sumResult3 = sumClosure3 (4 , 5 )
print(sumResult3)



//  without arguments
// $ maens argumetns indexß
var sumClosure4: (Int, Int) -> Int
sumClosure4 = {
    $0 + $1
}

let sumResult4 = sumClosure4 (5 , 6 )
print(sumResult4)

