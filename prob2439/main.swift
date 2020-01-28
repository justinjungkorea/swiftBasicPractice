//
//  main.swift
//  prob2439
//
//  Created by justin dongwook Jung on 2020/01/28.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var line: String = readLine()!
var n: Int = Int(line)!

for i in 1..<(n+1) {
    for _ in 1..<(n-i+1){
        print(" ",terminator: "")
    }
    for _ in 1..<(i+1){
        print("*",terminator: "")
    }
    print()
}
