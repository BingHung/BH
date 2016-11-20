//: Playground - noun: a place where people can play

import UIKit


firstLoop: for numberA in 0 ..< 10 {
    print("=> This is numberA: \(numberA)")
    
    secondLoop: for numberB in 0 ..< 10 {
        
        if numberB == 5 {
            // you can use cintinue to jump to another loop
            // this is the advantage of naming the loop
            
            continue firstLoop  // you can also change it to continue secondLoop 
        }
        print("This is numberB: \(numberB)")
    }
}