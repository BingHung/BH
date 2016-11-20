//: Playground - noun: a place where people can play

import UIKit

// instance variable
var number1 = 10
var number2 = 20

if number1 < number2{
    
    //local variable
    var result = number1 * number2
    
    print(result)
    
    if number2 > 15{
        
        // scope result can be apply in here 
        // varialbe life span
        
        // local variable
        result = result + 2
        
        let value  = 2
        
        // declare first then access it
        // var in side parent scope is going to accessable in child scope
        
    }
    
}