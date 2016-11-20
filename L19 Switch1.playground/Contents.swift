//: Playground - noun: a place where people can play

import UIKit

var scores = 100

switch scores {
case 50 :
    print("Good")
case 80 :
    print("Great")
case 100 :
    print("Excellent")
default :
    print("Fail")
}

scores = 30

switch scores {
case 50 :
    print("Good")
case 80 :
    print("Great")
case 100 :
    print("Excellent")
default :
    print("Fail")
}



let name = "Lity"
// swift is a Case sensitive language !!!!!!!!!

// we can use multiple values in one line like ,,,, Lity and Lee in the same line
// if there is nothing in default , we need to put break inside if do nothing
// case means if


switch name {
case "Lee", "Lity":
    print("This is \(name)")
default:
    break
}


let numberValue = 10

// n, x  is numberValue
// we can put decision in switch .... where

switch numberValue {
case let n where n % 2 == 0:
    print("This is a even number ")
case let x where x % 2 != 1:
    print("This is a odd number")
default:
    break
}





