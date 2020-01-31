//
//  main.swift
//  prob3184
//
//  Created by jusitn dongwook Jung on 2020/01/31.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

let rcLine: String = readLine()!
let rc = rcLine.components(separatedBy: " ");
let r = Int(rc[0])
let c = Int(rc[1])
var map = [String]()

for i in 0..<r! {
    let mapLine: String = readLine()!
    map.insert(mapLine, at: Int(i))
}

for i in 0..<r! {
    for j in 0..<c! {
        let temp = map[i].index(map[i].startIndex, offsetBy: j)
        print(map[i][temp], terminator:" ")
    }
}

