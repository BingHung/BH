//: Playground - noun: a place where people can play

import UIKit

let amountOfMoney = 250.5
let numberOfApps = 20

let resultOfMultiplicationForDouble = amountOfMoney * Double(numberOfApps)

//let test = amountOfMoney * Int(numberOfApps) -> error
// can't be applied to the operands of type "Double " and "int"

let resultOfMultiplicationForInt = Int(amountOfMoney) * numberOfApps

// type casting manipulate
// double casting to integer will loose decimal digit
// all of the cast operation is temporaliy

amountOfMoney