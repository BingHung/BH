//: Playground - noun: a place where people can play

import UIKit

func multiplyTwoNumbers ( firstNumber: Int , secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}



// assign a method (function) to your variable in swift
//function can be data type too !!!!!!!!!!!!!!!!!!!!!! what type of function
// myFunction is the name of my variable

var myFunction: (Int, Int) -> Int


myFunction = multiplyTwoNumbers
let resultA = myFunction(20, 30)

print(resultA)


// function can be a data type .....
func printTheResultOFOperationToTheConsole (function: (Int,Int) -> Int , firstNumber: Int, secondNumber: Int) {
    let resultvalue = function(firstNumber,secondNumber)
    print(resultvalue)
}

printTheResultOFOperationToTheConsole(function: multiplyTwoNumbers, firstNumber: 20, secondNumber: 2)