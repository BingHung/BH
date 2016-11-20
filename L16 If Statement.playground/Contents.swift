//: Playground - noun: a place where people can play

import UIKit

var num1 = 20
var num2 = 30


// print , is to show some value in the console
//console > View >DebugArea > Avtivate Console
// \n means newline character  , for conosle

if num1 > num2 {
    print("\(num1) is greater than \(num2)")
}

print("something")

if num1 < num2 {
    print("\(num1) is less than \(num2)")
}


let animal1 = "Lion"
let animal2 = "Fox"

if animal1 == "Lion" {
    print("The name of the animal is \(animal1)")
} else if animal1 != "Lion" {
    print("The name of the animal1 is not Lion")
}


// if first condition true , not if else statement
if animal1 == "Lion" || animal2 == "Bear" {
    print("Nice!!!")
} else  if animal1 == "Lion" && animal2 == "Fox" {
    print("Perfect!!!")
}


// if ... else if ... else

let fruit = "Dock"

if fruit == "Apple" {
    
}else if fruit == "banana" {
    
}else {
    print("There is no food !!!! ")
}
