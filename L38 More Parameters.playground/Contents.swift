//: Playground - noun: a place where people can play

import UIKit


// number , parameter is a const , we can't change it
func multiplyAndPrintThisNumber (number: Int) {
    var myNumber = number // that's why we create this line , so that we can modify the number
    
    myNumber = myNumber * 7
    
    print(myNumber)
}

var numberA = 7
multiplyAndPrintThisNumber(number: numberA)

// pass by value , copy
print(numberA)





// L39
//what is inout => pass by reference => modify the original value
func multiplyAndPrintThisNumberInOut (number: inout Int) {
    
    number = number * 7
    print(number)
}

var numberB = 7

// remamber there is a & signal

//command key will let you go in the function(tips)
multiplyAndPrintThisNumberInOut(number: &numberB)

print(numberB) // numberB is changed by using inout keyword
