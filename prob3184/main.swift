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
let dx = [0, 0, 1, -1]
let dy = [1, -1, 0, 0]

var map = [String]()
var yard: [[Int]] = Array(repeating: Array(repeating: 0, count: c!), count: r!)
var visited: [[Int]] = Array(repeating: Array(repeating: 0, count: c!), count: r!)
var wolf: Int = 0
var sheep: Int = 0


struct Potato {
    var x = 0
    var y = 0
}

class Queue<T> {
    private var array: [T]
    
    public init(){
        array = []
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public func enqueue(data: T){
        array.append(data)
    }
    
    public func dequeue() {
        if isEmpty {
            return
        } else {
            array.removeFirst()
            return
        }
    }
    
    public func top() -> T {
        return array.first!
    }
}

func bfs(x: Int, y: Int) {
    var nSheep: Int = 0
    var nWoolf: Int = 0
    
    let data = Queue<Potato>()
    var temp = Potato()
    temp.x = x
    temp.y = y
    
    data.enqueue(data: temp)
    visited[x][y] = 1
    
    if(yard[x][y] == 3){
        nSheep += 1
    } else if(yard[x][y] == 2){
        nWoolf += 1
    }
    
    while !data.isEmpty {
        let curX = data.top().x
        let curY = data.top().y
        data.dequeue()
        
        for i in 0...3 {
            let nx = curX + dx[i]
            let ny = curY + dy[i]
            
            if( (0 <= nx) && (nx <= r!) && (0 <= ny) && (ny <= c!) && (visited[nx][ny] == 0) && (yard[x][y] != 2) ){
                visited[nx][ny] = 1
                if(yard[nx][ny] == 3){
                    nSheep += 1
                } else if(yard[nx][ny] == 2){
                    nWoolf += 1
                }
                temp.x = nx
                temp.y = ny
                data.enqueue(data: temp)
            }
        }
    }
    
    if(nSheep > nWoolf){
        wolf -= nWoolf
    } else {
        sheep -= nSheep
    }
    
}

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
            wolf += 1
        } else if (map[i][temp] == "o"){
            yard[i][j] = 3
            sheep += 1
        }
    }
}

for i in 0..<r! {
    for j in 0..<c! {
        if( ((yard[i][j] == 2) || (yard[i][j] == 3)) && (visited[i][j] == 0) ){
            bfs(i, j)
        }
    }
}





