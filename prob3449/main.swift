//
//  main.swift
//  prob3449
//
//  Created by justin dongwook Jung on 2020/02/06.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var tStr: String = readLine()!
var t: Int = Int(tStr)!
var ans = [Int]()

for i in 0..<t {
    let num1: String = readLine()!
    let num2: String = readLine()!
    var cnt = 0
    for j in 0..<num1.count {
        let index = num1.index(num1.startIndex, offsetBy: j)
        if num1[index] != num2[index] {
            cnt += 1
        }
    }
    ans.insert(cnt, at: i)
}

for i in ans {
    print("Hamming distance is \(i).")
}
