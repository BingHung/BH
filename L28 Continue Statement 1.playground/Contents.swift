//: Playground - noun: a place where people can play

import UIKit

for oddNumber in 0 ..< 100 {
    if oddNumber % 2 == 0 {
        continue
    }
    
    print("These are the odd number: \(oddNumber)")
}


// declare  since you apply for loop
for evenNumber in 0 ..< 100 {
    if evenNumber % 2 != 0 {
        continue
    }
    
    print("These are the odd number: \(evenNumber)")
}