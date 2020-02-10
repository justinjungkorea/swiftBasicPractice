//
//  main.swift
//  prob10828
//
//  Created by kp_justin on 2020/02/11.
//  Copyright © 2020 justin dongwook Jung. All rights reserved.
//

import Foundation

class Stack<T> {
    private var array: [T]
    
    public init(){
        array = []
    }
    
    public var empty: Bool {
        return array.isEmpty
    }
    
    public func push(data: T){
        array.append(data)
    }
    
    public func size() -> Int {
        return array.count
    }
    
    public func top() -> T {
        return array.last!
    }
    
    public func pop() -> Int {
        if empty {
            return -1
        } else {
            var temp: Int = array.last as! Int
            array.removeLast()
            return temp
        }
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
        print(data.pop())
    } else if (temp[0] == "size") {
        print(data.size())
    } else if (temp[0] == "empty") {
        if data.empty {
            print(1)
        } else {
            print(0)
        }
    } else if (temp[0] == "top") {
        if data.empty {
            print(-1)
        } else {
            print(data.top())
        }
    }
}

