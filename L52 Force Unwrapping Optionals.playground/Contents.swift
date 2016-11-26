//: Playground - noun: a place where people can play

import UIKit

var numberA: Int? = 20
print(numberA)
//print(numberA + 10) -> we can't do the operations(but only init it) since we haven't unwrap the optional yet
print(numberA! + 10) // we use ! to force unwrap the box


var numberB: Int? = 2 + 3
print(numberB)
print(numberB!)
print(numberB)
//print(numberB + 10) once unwrap

// force unwarp is actually danger 


var prgrammer: String? = "John"
print(prgrammer)
print(prgrammer!)


var unwrappedProgramer = prgrammer!
print(unwrappedProgramer)


var job: String? = "iOS developer"
print(job!)
job = nil
//print(job!) -> we can't unwrapped optional
job = "CS enginnering"
if job != nil { // this is the safety check
    print(job!)
}





