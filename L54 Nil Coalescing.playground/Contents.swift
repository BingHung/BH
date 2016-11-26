//: Playground - noun: a place where people can play

import UIKit

var numberA: Int? = 20
print(numberA)

//if numberA contains nil, the default value is going to be 0
// coalescing ??
var unwrappedNUmberA: Int = numberA ?? 0
print(unwrappedNUmberA)


var numberB: Int? = 100
// if numberB contains nil m the default value is going to be 1
let unwrappedNumberB: Int  = numberB ?? 1


var numberC: Int? = nil
// if numberC contains nil, the default value is going to be 20
var unwrappedNUmberC: Int = numberC ?? 20