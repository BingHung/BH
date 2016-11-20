//: Playground - noun: a place where people can play

import UIKit


// function basic =>  func keyword _ func name _ () _ { }
func printSomething() {
    print("This is my name : BingHung")
}

printSomething()



// function ith arguments
func printSomething2(name: String) {
    
    let myname = name
    print("This is my name : \(myname)")
}

printSomething2(name: "Lity")



// function with multi-arguments
func printSomething3 (name1: String , name2: String) {
    
    let myname = name1
    print("This is my name : \(myname) and my friend  \(name2)")
}

printSomething3(name1: "Lity" , name2 : "BH")


