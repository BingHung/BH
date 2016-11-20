//: Playground - noun: a place where people can play

import UIKit


// tuple
let numbers: (number1: Int, number2: Int, number3: Int) = (10, 20, 30)


// keyword fallthrough
// ignore value > use _

switch numbers {
case(10, 20 , 30):
    print("These are the correct values")
    fallthrough
case(_, 20, 30):
    print("Without the first number")
    fallthrough
case (10, _, 30):
    print("Without the second number")
    fallthrough
case (10, 20, _):
    print("Without the third number")
case (1000, 2000, 3000):
    print("Other Vaues")
default :
    break
}

switch numbers {
case(10, 20 , 30):
    print("These are the correct values")
    fallthrough
case(_, 20, 30):
    print("Without the first number")
    
case (10, _, 30):
    print("Without the second number")
    fallthrough
case (10, 20, _):
    print("Without the third number")
case (1000, 2000, 3000):
    print("Other Vaues")
default :
    break
}

switch numbers {
case(10, 20 , 30):
    print("These are the correct values")
    fallthrough
case(44, 20, 30):
    print("Without the first number")
    
case (10, _, 30):
    print("Without the second number")
    fallthrough
case (10, 20, _):
    print("Without the third number")
case (1000, 2000, 3000):
    print("Other Vaues")
default :
    break
}


// we are using this const "let" , to access vlaue in tuple
switch numbers {
case(let number1, let number2, let number3):
    print("This is number 1 :\(number1)")
    print("This is number 2 :\(number2) and This is number3 :\(number3)")
    //fallthrough
default:
    break
}

switch numbers {
case (let number1, let number2, let number3) where number2 == number1 * number3:
    print("right")
default:
    break
}