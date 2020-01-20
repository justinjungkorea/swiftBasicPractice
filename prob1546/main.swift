//
//  main.swift
//  prob1546
//
//  Created by justin dongwook Jung on 2020/01/20.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

let num: Int = Int(readLine()!)!
var line = readLine()!
var lineArr = line.components(separatedBy: " ")
var numbers = [Double](repeating: 0, count: num)

for i in 0 ..< lineArr.count {
    numbers[i] = Double(lineArr[i])!
}

var maxNum = numbers.max()
var sum: Double = 0
for i in 0 ..< lineArr.count {
    numbers[i] = numbers[i]/maxNum! * 100
    sum += numbers[i]
}

print(sum/Double(num))
