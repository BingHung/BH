//: Playground - noun: a place where people can play

import UIKit



let test: String? = nil

let personName: String? = "BH"//nil
var personJob: String? = "iOS developer"
var personAge: Int? = 25


// if let binding , much better than forced unwrapped
if let unwrappedPersonName: String = personName {
    print(unwrappedPersonName)
} else {
    print("personName is nil")
}


if let unwrappedPersonJob: String = personJob {
    print(unwrappedPersonJob)
} else {
    print("personJob is nil")
}

if let unwrappedPersonAge: Int = personAge {
    print(unwrappedPersonAge)
} else {
    print("personAge is nil")
}


// unwrap multiple values

if let unwrappedPersonName = personName, let unwrappedPersonJob = personJob, let unwrappedPersonAge = personAge {
    print("\(unwrappedPersonName), \(unwrappedPersonJob), \(unwrappedPersonAge)")
} else {
    print("nil for all")
}



