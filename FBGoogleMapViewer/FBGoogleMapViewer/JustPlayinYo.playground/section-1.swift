// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let hoursPerDay = 24

let daysPerWeek = 7

let hoursPerWeek = hoursPerDay * daysPerWeek

let names = ["James", "Chris", "Tom"]

var ages = [40, 33, 33]

var cities: [String]

var states: Array<String>

let flags: [Character] = ["f", "j", "m"]

cities = ["San Francisco", "Sydney"]

ages[1] = 35

ages

let abcAges = ["Alice" : 43, "Bob": 34, "Bruce": 24]

var myAges: Dictionary<String, Int>

myAges = abcAges

myAges["Bob"] = 45

myAges

if cities[0] == "Sydney" {
    let state = "NSW"
    print(state)
} else {
    print("Dunno")
}



for var i=1; i<=10; ++i {
    println(i)
}

for index in 1...10 {
    print(index)
}

for index in 1 ..< 10 {
    println("index is \(index)")
}


