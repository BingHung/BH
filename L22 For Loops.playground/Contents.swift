//: Playground - noun: a place where people can play

import UIKit

let count = 10

var sum = 0


// 1,2,3,4,5,6,7,8,9
for i in 0 ..< count {
    sum = sum + 1
    
    print("Here is our first for loop \(sum)")
}


for _ in 0 ..< count {
    sum = sum + 1
    
    print("Here is our first for loop \(sum)")
}


for i in 0 ..< count {
    sum = sum + i
    
    print("Here is our first for loop \(sum)")
}

var value = 0

for i in 1...10 {
    value += i
    
    print("Here is our second loop \(value)")
    
}
