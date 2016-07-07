//: Playground - noun: a place where people can play

import UIKit

var numeros = 1...100

// I use a bool variable in order to avoid
// apply more than one rule to the same number.
// true: only one rule can be applied to each number
// false: more than one rule can be applied to each number
var repeat_not_allowed = false

for num in numeros {
    if num % 5 == 0 {
        print("\(num) # Bingo!!!")
        if repeat_not_allowed {continue}
    }
    if num >= 30 && num <= 40 {
        print("\(num) #Viva Swift!!!")
        if repeat_not_allowed {continue}
    }
    if num % 2 == 0 {
        print("\(num) par!!!")
        if repeat_not_allowed {continue}
    } else {
        print("\(num) impar!!!")
        if repeat_not_allowed {continue}
    }
}

