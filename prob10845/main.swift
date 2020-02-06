//
//  main.swift
//  prob10845
//
//  Created by justin dongwook Jung on 2020/02/07.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

class Stack<T> {
    private var array: [T]
    
    public init(){
        array = []
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public func push(data: T){
        array.append(data)
    }
    
    public func size() -> Int {
        return array.count
    }
    
    public func pop() {
        if isEmpty {
            return
        } else {
            array.removeFirst()
            return
        }
    }
    
    public func front() -> T {
        return array.first!
    }
    
    public func back() -> T {
        return array.last!
    }
}

var n: String = readLine()!
var data = Stack<Int>()

for _ in 0..<Int(n)! {
    let line: String = readLine()!
    let temp = line.components(separatedBy: " ")
    if (temp[0] == "push") {
        data.push(data: Int(temp[1])!)
    } else if (temp[0] == "pop") {
        if data.isEmpty {
            print(-1)
        } else {
            print(data.front())
            data.pop()
        }
    } else if (temp[0] == "size") {
        print(data.size())
    } else if (temp[0] == "empty") {
        if data.isEmpty {
            print(1)
        } else {
            print(0)
        }
    } else if (temp[0] == "front") {
        if data.isEmpty {
            print(-1)
        } else {
            print(data.front())
        }
    } else if (temp[0] == "back") {
        if data.isEmpty {
            print(-1)
        } else {
            print(data.back())
        }
    }
}

