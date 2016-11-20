//: Playground - noun: a place where people can play

import UIKit

let boxerAScores = 200
let boxerBScores = 170


// not initiate , if you don;t want to assing any value you have to specify data type
var minScore: Int

if boxerAScores < boxerBScores {
    minScore = boxerAScores
}else {
    minScore = boxerBScores
}


// A more easy way > Tenary Operator
var maxScore: Int

maxScore = boxerAScores<boxerBScores ? boxerBScores : boxerAScores



