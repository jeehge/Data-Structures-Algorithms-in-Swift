//
//  Excute.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/14.
//

import Foundation

final class Excute {
    
    // MARK: - Excute
    
    static func exampleStack() {
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
}
