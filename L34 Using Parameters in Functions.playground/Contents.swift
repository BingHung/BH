//: Playground - noun: a place where people can play

import UIKit


// default arguments
func printTheSUmOfNumers (number1 : Int, number2 : Int , number3 : Int = 1){
    print("\(number1) + \(number2) + \(number3) = \(number1 + number2 + number3)")
}

printTheSUmOfNumers(number1: 10, number2: 20)
printTheSUmOfNumers(number1: 10, number2: 20, number3: 30)

