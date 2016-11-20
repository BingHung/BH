//: Playground - noun: a place where people can play

import UIKit

// In swift we have two range 
// closed / half

let closedRangeExample1 = 20 ... 30  // closeed range 20,21,22,23,24,25,26,27,28,29,30
                                        //These const hold thesenumbers

closedRangeExample1.lowerBound
closedRangeExample1.upperBound

let closedRangeExample2 = 30 ... 40

let halfopenRangeExample = 10 ..< 15  //half(not include 15) 10,11,12,13,14



// You can combinded switch with ranges
let StudentGrade: Int = 100
let message: String

switch StudentGrade {
case 90 ... 100:
    message = "Awesome 😇"
case 80 ..< 90:
    message = "Great"
case 70 ..< 80:
    message = "Good"
case 60 ..< 70:
    message = "Not bad"
default:
    message = "Failed"
}

