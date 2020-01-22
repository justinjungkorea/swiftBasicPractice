//
//  main.swift
//  prob2902
//
//  Created by justin dongwook Jung on 2020/01/22.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var name: String = readLine()!
var result = [Character]()

for temp in name {
    if("A" <= temp && temp <= "Z"){
        result.insert(temp, at: result.endIndex)
    }
}

for temp in result {
    print(temp, terminator:"")
}
print()
