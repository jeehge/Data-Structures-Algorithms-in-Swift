//
//  StackExcute.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/14.
//

import Foundation

final class StackExcute {
    
    // MARK: - Excute
    
    static func result() {
        example(of: "using a stack") {
            var stack = Stack<Int>()
            stack.push(1)
            stack.push(2)
            stack.push(3)
            stack.push(4)
            
            print(stack)
            
            if let poppedElement = stack.pop() {
                assert(4 == poppedElement)
                print("Popped: \(poppedElement)")
            }
        }
        
        // 문자열 스택을 생성 후 아이템 "D"를 팝합니다
        // swift 컴파일러는 더 많은 자세한 스택
        example(of: "initializing a stack from an array") {
            let array = ["A", "B", "C", "D"]
            var stack = Stack(array)
            print(stack)
            stack.pop()
            
        }
        
        example(of: "initializing a stack from an array literal") {
            var stack: Stack = [1.0, 2.0, 3.0, 4.0]
            print(stack)
            stack.pop()
        }
    }
    
    // 1. Reverse an Array
    // 배열의 내용을 반전된 순서로 프린트하는 함수
    static func challenges1() {
        let array: [Int] = [1, 2, 3, 4, 5]
        
        func printInReverse<T>(_ array: [T]) {
            var stack = Stack<T>()
            
            for value in array {
                stack.push(value)
            }
            
            while let value = stack.pop() {
                print(value)
            }
        }
        
        printInReverse(array)
    }
    
    // 2. Balance the parentheses
    // 괄호를 확인하라. 문자열이 주어지면 문자열의 괄호가 균형을 이루면서 문자가 있는지 확인하고 true를 반환
    // 예1 : h((e))llo(world)() // balanced parentheses
    // 예2 : (hello world // unbalanced parentheses
    static func challenges2() {
        let inputString: String = "(hello world"
        
        func checkParentheses(_ string: String) -> Bool {
            var stack = Stack<Character>()
            
            for character in string {
                if character == "(" {
                    stack.push(character)
                } else if character == ")" {
                    if stack.isEmpty {
                        return false
                    } else {
                        stack.pop()
                    }
                }
            }
            return stack.isEmpty
        }
        
        print(checkParentheses(inputString))
    }
}
