//
//  main.swift
//  prob5656
//
//  Created by justin dongwook Jung on 2020/02/07.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

var flag: String = "=="
var cnt: Int = 1
while flag != "E" {
    let line: String = readLine()!
    let temp = line.components(separatedBy: " ")
    if(temp[1] == ">"){
        let ans: Bool = Int(temp[0])! > Int(temp[2])!
        print("Case \(cnt): \(ans)")
    } else if(temp[1] == ">="){
        let ans: Bool = Int(temp[0])! >= Int(temp[2])!
        print("Case \(cnt): \(ans)")
    } else if(temp[1] == "<"){
        let ans: Bool = Int(temp[0])! < Int(temp[2])!
        print("Case \(cnt): \(ans)")
    } else if(temp[1] == "<="){
        let ans: Bool = Int(temp[0])! <= Int(temp[2])!
        print("Case \(cnt): \(ans)")
    } else if(temp[1] == "=="){
        let ans: Bool = Int(temp[0])! == Int(temp[2])!
        print("Case \(cnt): \(ans)")
    } else if(temp[1] == "!="){
        let ans: Bool = Int(temp[0])! != Int(temp[2])!
        print("Case \(cnt): \(ans)")
    } else if(temp[1] == "E") {
        flag = "E"
    }
    cnt += 1
}
