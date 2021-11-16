//
//  Node.swift
//  AlgorithmsStudyProject
//
//  Created by JH on 2021/11/15.
//

import Foundation

public class Node<Value> {
    
    public var value: Value // 노드가 가지고 있는 값
    public var next: Node?  // 다음 노드. 마지막 노드는 nil이기 때문에 옵셔널
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    // CustomStringConvertible 프로토콜을 채택하는 객체는 description을 제공해야 함
    
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}
