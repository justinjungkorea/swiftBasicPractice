//
//  main.swift
//  prob3058
//
//  Created by justin dongwook Jung on 2020/01/23.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

let testcase: String = readLine()!
let t: Int = Int(testcase)!

for _ in 0..<t {
    let numbers = readLine()?.components(separatedBy: " ")
    var sum: Int = 0
    var min: Int = 100
    for temp in numbers! {
        let num: Int = Int(temp)!
        if(num % 2 == 0){
            sum += num
            if(num < min){
                min = num
            }
        }
    }
    print("\(sum) \(min)")
}
