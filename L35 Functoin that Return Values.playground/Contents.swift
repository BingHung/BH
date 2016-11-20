//: Playground - noun: a place where people can play

import UIKit


// return value -> data type
// return keyword in func

func returnYourName() -> String {
    return "BH"
}

returnYourName()

var name: String = returnYourName()

name

print(name)

print("name")



func sumOfTwoNumbers (firstNumber: Int, secondNUmber: Int) -> Int {
    return firstNumber + secondNUmber
}
let resultOfSum = sumOfTwoNumbers(firstNumber: 4, secondNUmber: 8)
print(resultOfSum)




// return multiple value , that is tuple  !!!!
func sumAndSubtractTwoNumbers (firstNumber: Int, secondNumber: Int) -> (resultOfSum: Int, resultOfSubtract: Int){
    return (firstNumber + secondNumber , firstNumber - secondNumber)
}


let resultOfSUmAndSubtract = sumAndSubtractTwoNumbers(firstNumber: 30, secondNumber: 80)
let sumResult = resultOfSUmAndSubtract.resultOfSum
let subtractResult = resultOfSUmAndSubtract.resultOfSubtract








