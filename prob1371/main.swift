//
//  main.swift
//  prob1371
//
//  Created by justin dongwook Jung on 2020/01/21.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var line: String
line = readLine()!
var ans = [Character: Int]()

for temp in line {
    if ans[temp] != nil {
        ans[temp]! += 1
    } else {
        ans[temp] = 1
    }
}

let sortedAns = Array(ans).sorted(by: {$0.value > $1.value} )
var result = [Character]()
for temp in sortedAns {
    if(temp.value < sortedAns.first!.value){
        break
    } else {
        result.insert(temp.key, at: result.endIndex)
    }
}

result.sort()

for temp in result {
    print(temp, terminator:"")
}
print()
