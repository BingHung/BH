//: Playground - noun: a place where people can play

import UIKit

struct Calculation {
    
    let firstNumber: Int
    let secondNumber: Int
    
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    // method is , function in structure
    func calculateSum() -> Int {
        return firstNumber + secondNumber
    }
    
    func calculateSubtraction() -> Int {
        return firstNumber - secondNumber
    }
    
    func calculationMultiplication() -> Int {
        return firstNumber * secondNumber
    }
    
    func calculateDivision() -> Int {
        return firstNumber/secondNumber
    }
    
    
}


let calculation1 = Calculation(firstNumber: 10, secondNumber: 5)
calculation1.calculateSum()
calculation1.calculateSubtraction()
calculation1.calculationMultiplication()
calculation1.calculateDivision()


