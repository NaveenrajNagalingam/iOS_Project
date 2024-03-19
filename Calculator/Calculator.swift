//
//  Calculator.swift
//  Calculator
//
//  Created by Mobility User 2 on 3/18/24.
//

import Foundation

struct Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func divide(_ a: Int, _ b: Int) -> Int {
        guard b != 0 else {
            fatalError("Cannot divide by zero")
        }
        return a / b
    }
    
    func power(_ base: Int, _ exponent: Int) -> Int {
        return Int(pow(Double(base), Double(exponent)))
    }
    
    func factorial(_ n: Int) -> Int {
        guard n >= 0 else {
            fatalError("Factorial is not defined for negative numbers")
        }
        return n == 0 ? 1 : (1...n).reduce(1, *)
    }
    
    func isPrime(_ n: Int) -> Bool {
        guard n > 1 else { return false }
        for i in 2..<n {
            if n % i == 0 {
                return false
            }
        }
        return true
    }
    
    func isEven(_ n: Int) -> Bool {
        return n % 2 == 0
    }
    
    func isOdd(_ n: Int) -> Bool {
        return n % 2 != 0
    }
}
