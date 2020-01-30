//
//  main.swift
//  prob2566
//
//  Created by jusitn dongwook Jung on 2020/01/29.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var max: Int = 0
var x: Int = 1
var y: Int = 1

for i in 1...9 {
    var line: String = readLine()!
    var numbers = line.components(separatedBy: " ")
    for num in numbers {
        if(max <= Int(num)!){
            max = Int(num)!
            x = i
        }
    }
}
