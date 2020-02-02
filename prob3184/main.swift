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
var yard: [[Int]] = Array(repeating: Array(repeating: 0, count: c!), count: r!)
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: c!), count: r!)



for i in 0..<r! {
    let mapLine: String = readLine()!
    map.insert(mapLine, at: Int(i))
    for j in 0..<c!{
        let temp = map[i].index(map[i].startIndex, offsetBy: j)
        if(map[i][temp] == "."){
            yard[i][j] = 0
        } else if (map[i][temp] == "#"){
            yard[i][j] = 1
        } else if (map[i][temp] == "v"){
            yard[i][j] = 2
        } else if (map[i][temp] == "o"){
            yard[i][j] = 3
        }
    }
}

for i in 0..<r! {
    for j in 0..<c! {
        if(visited[i][j] || yard[i][j] != 2 ){
            continue
        }
        
        visited[i][j] = true
        
        
    }
}
