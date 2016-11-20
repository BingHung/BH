//: Playground - noun: a place where people can play

import UIKit

func sumUpTwoNumber (number1: Int, number2: Int) {
    print("\(number1) + \(number2) = \(number1 + number2)")
}



// we use "and" on the second arguments
// these two function has the same function name , what is the different ???
func sumUpTwoNumber (number1: Int,and number2: Int) {
    print("\(number1) + \(number2) = \(number1 + number2)")
}



// number2 vs and number2 (and is the external name , number2 is the internal name)
// inside the function we need internal name 
// if there is external name outside the function we use external name

sumUpTwoNumber(number1: 10, number2: 20)
sumUpTwoNumber(number1: 5, and: 10)



// What is the underline ?? => not providing an argument name ....
func printTheSumofTheseNumbers( _ number : Int , number2 : Int , _ number3 : Int ) {
    print("\(number) + \(number2) + \(number3) = \(number + number2 + number3)")
}



// we don't use to add parameter name by adding _
printTheSumofTheseNumbers(20, number2: 10, 40)