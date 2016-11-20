//: Playground - noun: a place where people can play

import UIKit


let closureWithNoParameter: () -> String = {
    "This is Closure with no parameters"
}

closureWithNoParameter()

var stringValue = closureWithNoParameter()
print(stringValue)


/*
let closureWithNoReturnValue: (Int) -> Void = { (argumentA: Int) in
    print(argumentA * 5)
}
*/

let closureWithNoReturnValue: (Int) -> Void = {
    print($0 * 5)
}


closureWithNoReturnValue(4)


let closureWithNoParmetersAndNoReturnValues: () -> Void = {
    print("This is a closure with no parameter and no return value")

}

closureWithNoParmetersAndNoReturnValues()