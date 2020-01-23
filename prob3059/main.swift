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
var total: Int = 0

for i in 0..<t {
    let line = readLine()
    var sum: UInt8 = 0
    for char in line! {
        sum += char.asciiValue!
    }
    print(sum)
}
