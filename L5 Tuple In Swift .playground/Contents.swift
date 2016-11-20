//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//tuple ~ array ??

// declaration of tuple (with two int arguments) and initiate it
// with parenthesis

let twoIntegerNumbers: (number1: Int, number2: Int) = (10, 20)

// in swift we can put simicolon (depend) or nothing at the end of the line , but if we out two line in one , we still need simicolon
// index number 0 is 10 , always count form number 0
//access value in tuple

twoIntegerNumbers.number1

twoIntegerNumbers.number2




// it is very imporatant of your anme (meaningful)

var number1: Int = twoIntegerNumbers.number1;

var number2: Int = twoIntegerNumbers.number2

var twoDecimalValues: (decimalValue1: Double, decimalValue2: Double) = (2.456, 456.234)

twoDecimalValues.decimalValue1
twoDecimalValues.decimalValue2

var twoValuesOfDifferentTypes: (Double, Int) = (23.45667, 234)

twoValuesOfDifferentTypes.0
twoValuesOfDifferentTypes.0 = 2.3423
twoValuesOfDifferentTypes.1

let threeIntegerValues: (num1: Int, num2: Int, num3: Int) = (20, 30, 50)

let a = threeIntegerValues.num1
let b = threeIntegerValues.num2
let c = threeIntegerValues.num3

let (a1, a2, a3) = threeIntegerValues // wow amazing , create three const in one line ,
var (b1, b2, b3) = threeIntegerValues

a1
a2
a3

b1
b2
b3

let (x, y, _ ) = threeIntegerValues // _

x
y


