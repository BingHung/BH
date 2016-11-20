//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


for evenNumber in 0 ... 100 {
    if evenNumber % 2 != 0 {
        continue
    }
    
    print("These are the odd number: \(evenNumber)")
}



// you can name your for loop (label) 
// numberA is the counter
// nested loop structure in swift


firstLoop: for numberA in 0 ..< 10 {
    print("=> This is numberA: \(numberA)")
    
    secondLoop: for numberB in 0 ..< 10 {
        print("This is numberB: \(numberB)")
    }
}