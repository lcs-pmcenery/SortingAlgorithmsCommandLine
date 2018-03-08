//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty array / list
var numbers : [Int] = []

// Populate the array
//for _ in 1...6 {
//    numbers.append( random(between: 1, and: 50) )
//}
numbers.append(6)
numbers.append(4)
numbers.append(3)
numbers.append(2)
numbers.append(1)
numbers.append(5)

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")

// Loop through the array and find the highest, moving it to the end
for _ in 0...numbers.count - 2 {
    for i in 0...numbers.count - 2 {
        if numbers[i] > numbers[i+1] {
            let temporaryValue = numbers[i]
            numbers[i] = numbers[i+1]
            numbers[i+1] = temporaryValue
        }
    }
}
for number in numbers {
    print(number)
}
print("===================")

// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")


