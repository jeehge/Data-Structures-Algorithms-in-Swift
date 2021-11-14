//
//  ViewController.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testStack()
    }
    
    func testStack() {
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
        
        example(of: "initializing a stack from an array") {
            let array = ["A", "B", "C", "D"]
            var stack = Stack(array)
            print(stack)
            stack.pop()
        }
    }
}

