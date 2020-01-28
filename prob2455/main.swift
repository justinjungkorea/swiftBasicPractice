//
//  main.swift
//  prob2455
//
//  Created by justin dongwook Jung on 2020/01/28.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var people = [Int]()

for i in 0...3 {
    let line: String = readLine()!
    let numbers = line.components(separatedBy: " ")
    if(i==0) {
        people.insert(Int(numbers[1])!, at: i)
    } else {
        people.insert((people[i-1] - Int(numbers[0])! + Int(numbers[1])!), at: i)
    }
}

print(people.max()!)
