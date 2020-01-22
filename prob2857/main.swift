//
//  main.swift
//  prob2857
//
//  Created by justin dongwook Jung on 2020/01/23.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var result: Bool = false

for n in 1...5 {
    let temp: String = readLine()!
    if temp.contains("FBI") {
        print(n, terminator:" ")
        result = true
    }
}

if result == false {
    print("HE GOT AWAY!")
}
