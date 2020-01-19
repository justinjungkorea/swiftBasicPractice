//
//  main.swift
//  prob1076
//
//  Created by justin dongwook Jung on 2020/01/20.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var color = [String](repeating: "0", count: 3)
var colorTable: [String: String] = [
    "black": "0",
    "brown": "1",
    "red": "2",
    "orange": "3",
    "yellow": "4",
    "green": "5",
    "blue": "6",
    "violet": "7",
    "grey": "8",
    "white": "9"
]

for i in 0 ..< color.count {
    color[i] = colorTable[readLine()!]!
}

var result = Int(color[0]+color[1])! * Int(pow(Double(10), Double(color[2])!))
print(result)
