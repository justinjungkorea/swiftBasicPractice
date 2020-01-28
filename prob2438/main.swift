//
//  main.swift
//  prob2438
//
//  Created by jusitn dongwook Jung on 2020/01/28.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var line: String = readLine()!
let n: Int = Int(line)!

for i in 1..<(n+1) {
    for j in 1..<(i+1) {
        print("*",terminator:"")
    }
    print()
}

