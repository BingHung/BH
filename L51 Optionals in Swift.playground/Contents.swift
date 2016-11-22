//: Playground - noun: a place where people can play

import UIKit

var numberA: Int  // not initialize yet
numberA = 1
//number = nil ,nil cannot be assinged to not optional value , nil means nothing


var numberB: Int?  //adding ? ,become optional(type)  ,that a varaiable can hold nothing
numberB = nil
numberB = 2
print(numberB) // console : optional(2) ,value is wrapped in optional
print(numberB!) // using ! to unwrpped optional


//Why we need optional ? , Sometimes we want to express nothing.


var numberC: Int! = nil
numberC


var numberD: Int?
numberD = nil
//numberD! -> error we can't unwrap nil


var stringVlueA: String
//stringVlueA = nil -> error
stringVlueA = "something"

var stringValueB: String?
stringValueB = nil
stringValueB = "Value"



