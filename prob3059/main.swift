//
//  main.swift
//  prob3059
//
//  Created by jusitn dongwook Jung on 2020/01/23.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var testcase: String = readLine()!
var t: Int = Int(testcase)!
var total: Int = 2015
var result = [Int]()


for i in 0..<t {
    let line = readLine()
    var sum8: UInt8 = 0
    var sum: Int = 0
    var charSet = Set<Character>()
    for char in line! {
        charSet.insert(char)
    }
    
    for char in charSet {
        sum8 = char.asciiValue!
        sum += Int(sum8)
    }
    sum = total - sum
    result.insert(sum, at: i)
}

for ans in result {
    print(ans)
}
