//: Playground - noun: a place where people can play

import UIKit

var power: Int?

power = 100
print(power)
print(power!)
print(power as Any) // not recommand , silence warning


power = nil
//print(power!)  error , runtime error
print(power ?? 10) // if the value is nil and assign 10 , but if it is not nil , stay origin value
print(power as Any)
print(power)


// optional , type transfrom
let computerScreen: Optional<String> = Optional.none
let computerCPU: Optional<String> = Optional.some("Core i7")

print(computerScreen ??  "Nothing found ")
print(computerCPU)

let BH: Optional<String>
BH = "handsome"
print(BH)

let LT: String?
LT = "pretty"
print(LT)


switch computerScreen {
case let Optional.none(value):
    print("No CPU \(value)")
case let Optional.some(value):
    print("our computer has a CPU\(value)")
}

switch computerCPU {
case let Optional.none(value):
    print("No CPU \(value)")
case let Optional.some(value):
    print("our computer has a CPU\(value)")
}

let number : Optional<Int> = 5


