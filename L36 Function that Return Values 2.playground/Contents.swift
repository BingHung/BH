//: Playground - noun: a place where people can play

import UIKit

func operationsTwoNumbers (firstNumber: Int, secondNumber: Int) -> (sum: Int, subtract: Int, multiply: Int, divide: Int) {
    
    return (firstNumber + secondNumber , firstNumber - secondNumber , firstNumber * secondNumber , firstNumber / secondNumber)
}

var result  = operationsTwoNumbers(firstNumber: 6, secondNumber: 3)

result.sum
result.multiply
result.subtract
result.divide


