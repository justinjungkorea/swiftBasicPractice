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
var visited: [[Int]] = Array(repeating: Array(repeating: 0, count: c!), count: r!)

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

var data = Queue<Potato>()
var temp = Potato()
temp.x = 0
temp.y = 0

data.enqueue(data: temp)

while !data.isEmpty {
    var x = data.top().x
    var y = data.top().y
    
    
}


//void bfs(){
//    q.push(make_pair(1,1));
//    check[1][1] = true;
//    dis[1][1] = 1;
//    while(!q.empty()){
//        int x = q.front().first;
//        int y = q.front().second;
//        q.pop();
//        for(int i=0;i<4;++i){
//            int nx=x+dx[i];
//            int ny=y+dy[i];
//            if( (0<nx) && (nx<=n) && (0<ny) && (ny<=m) ){
//                if(check[nx][ny]==false && map[nx][ny]==1){
//                    q.push(make_pair(nx, ny));
//                    dis[nx][ny]=dis[x][y]+1;
//                    check[nx][ny] = true;
//                }
//            }
//        }
//    }
//}
